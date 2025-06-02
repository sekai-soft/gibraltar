#! /bin/sh
set -eu
set -o pipefail

docker exec -it mastodon tootctl media remove --days 14
docker exec -it mastodon tootctl media remove-orphans
docker exec -it mastodon tootctl preview_cards remove --days 14
docker exec -it mastodon tootctl statuses remove --days 14
docker exec -it mastodon tootctl accounts cull

if [ -f /post.sh ]; then
  echo "Running post script."
  chmod +x /post.sh
  sh /post.sh
  echo "Ran post script."
else
  echo "No post script found."
fi
