#!/usr/bin/env bash
set -e

# rsshub
mkdir -p /home/nixos/rsshub
cp /home/nixos/gibraltar/apps/rsshub/compose.yml /home/nixos/rsshub/compose.yml
docker compose -f /home/nixos/rsshub/compose.yml up -d

# mastodon
mkdir -p /home/nixos/mastodon
cp /home/nixos/gibraltar/apps/mastodon/compose.yml /home/nixos/mastodon/compose.yml
cp /home/nixos/gibraltar/apps/mastodon/env-mastodon-shared /home/nixos/mastodon/env-mastodon-shared
cp -r /home/nixos/gibraltar/apps/mastodon/cleanup /home/nixos/mastodon/
# do not start mastodon

# watchtower
mkdir -p /home/nixos/watchtower
cp /home/nixos/gibraltar/apps/watchtower/compose.yml /home/nixos/watchtower/compose.yml
docker compose -f /home/nixos/watchtower/compose.yml up -d
