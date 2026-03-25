#!/usr/bin/env bash
set -e

cd "$(dirname "$0")"

git add -A
git commit -m "deploy $(date '+%Y-%m-%d %H:%M')" || echo "nothing to commit"
git push

scp index.html zephyr:/var/www/naomimost.com/index.html
echo "deployed to naomimost.com"
