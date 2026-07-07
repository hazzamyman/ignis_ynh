#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Obsidian version this Ignis release is pinned to.
# Keep in sync with the "+obsidian.X.Y.Z" suffix on the upstream tag in manifest.toml.
obsidian_version="1.12.7"

# @electron/asar is installed as an explicit pinned dependency (see install/upgrade)
# rather than a bare `npx --yes`, so the Obsidian extraction step has no live registry
# dependency and always uses a known version.
asar_version="4.2.0"

# Download the pinned Obsidian .asar.gz from the official release and extract it into
# $data_dir/obsidian-app, unless it is already present. Obsidian is never shipped in
# this package; it is fetched from its official source, mirroring upstream's entrypoint.
#
# Relies on these being in scope: $install_dir, $data_dir, $app, $obsidian_version, $asar_version.
ignis_setup_obsidian() {
    local assets_dir="$data_dir/obsidian-app"

    if [ -f "$assets_dir/index.html" ]; then
        ynh_print_info "Obsidian $obsidian_version assets already present; skipping download."
        return 0
    fi

    local tmpdir
    tmpdir="$(mktemp -d)"

    ynh_print_info "Downloading Obsidian v$obsidian_version from the official source..."
    curl -fSL \
        "https://github.com/obsidianmd/obsidian-releases/releases/download/v${obsidian_version}/obsidian-${obsidian_version}.asar.gz" \
        -o "$tmpdir/obsidian.asar.gz"

    gunzip "$tmpdir/obsidian.asar.gz"

    ynh_print_info "Extracting Obsidian assets..."
    mkdir -p "$assets_dir"
    "$install_dir/node_modules/.bin/asar" extract "$tmpdir/obsidian.asar" "$assets_dir"

    ynh_safe_rm "$tmpdir"

    if [ ! -f "$assets_dir/index.html" ]; then
        ynh_die --message="Obsidian setup did not produce $assets_dir/index.html; the download may be corrupt."
    fi

    chown -R "$app:$app" "$assets_dir"
    ynh_print_info "Obsidian $obsidian_version ready."
}
