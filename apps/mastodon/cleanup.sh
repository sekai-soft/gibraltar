#!/usr/bin/env bash
set -e

docker compose exec -it sidekiq tootctl media remove --days 14
docker compose exec -it sidekiq tootctl media remove-orphans
docker compose exec -it sidekiq tootctl preview_cards remove --days 14
docker compose exec -it sidekiq tootctl statuses remove --days 14
docker compose exec -it sidekiq tootctl accounts cull
