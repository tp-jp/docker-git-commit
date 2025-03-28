#!/bin/sh
set -e

GIT_EMAIL="${GIT_EMAIL:-action@github.com}"
GIT_USERNAME="${GIT_USERNAME:-GitHub Action}"
COMMIT_MESSAGE="${COMMIT_MESSAGE:-Update files}"

git config --global user.email "$GIT_EMAIL"
git config --global user.name "$GIT_USERNAME"

git add --all

if ! git diff-index --quiet HEAD --; then
  git commit -m "$COMMIT_MESSAGE"
  git push
else
  echo "No changes to commit."
fi
