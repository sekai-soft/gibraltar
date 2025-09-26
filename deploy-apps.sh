#!/usr/bin/env bash
set -e

# rsshub
mkdir -p /home/nixos/rsshub
cp /home/nixos/nixos/apps/rsshub/compose.yml /home/nixos/rsshub/compose.yml
docker compose -f /home/nixos/rsshub/compose.yml up -d

# mastodon
mkdir -p /home/nixos/mastodon
cp /home/nixos/nixos/apps/mastodon/compose.yml /home/nixos/mastodon/compose.yml
cp /home/nixos/nixos/apps/mastodon/env-mastodon-shared /home/nixos/mastodon/env-mastodon-shared
cp -r /home/nixos/nixos/apps/mastodon/elasticsearch /home/nixos/mastodon/
# do not start mastodon

# watchtower
mkdir -p /home/nixos/watchtower
cp /home/nixos/nixos/apps/watchtower/compose.yml /home/nixos/watchtower/compose.yml
docker compose -f /home/nixos/watchtower/compose.yml up -d
