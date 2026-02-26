#!/usr/bin/env bash
set -euo pipefail

OWNER="AIPMAndy"
REPO="ai-invest-agent"
TOPICS_FILE=".github/topics.json"

if [[ -z "${GITHUB_TOKEN:-}" ]]; then
  echo "GITHUB_TOKEN is not set"
  exit 1
fi

if [[ ! -f "$TOPICS_FILE" ]]; then
  echo "Missing $TOPICS_FILE"
  exit 1
fi

curl -sS -X PUT "https://api.github.com/repos/${OWNER}/${REPO}/topics" \
  -H "Authorization: Bearer ${GITHUB_TOKEN}" \
  -H "Accept: application/vnd.github+json" \
  -d @"${TOPICS_FILE}" >/dev/null

echo "Topics updated for ${OWNER}/${REPO}"
