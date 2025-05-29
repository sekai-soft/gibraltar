#!/usr/bin/env bash
set -e

# rsshub
cp /home/nixos/gibraltar/apps/rsshub/compose.yml /home/nixos/rsshub/compose.yml
docker compose -f /home/nixos/rsshub/compose.yml up -d
