#!/bin/bash
# Sync fork (jpowers82) with upstream (ChatPRD) and update local files.
# Usage: ./scripts/sync-from-upstream.sh
set -euo pipefail

git fetch upstream
git merge upstream/main --ff-only
git push origin main
echo "✓ Synced with upstream and pushed to fork."
