#!/bin/bash

TAG_NAME=$1
TAG_MESSAGE=${2:-"$TAG_NAME tag"}

git tag -a "$TAG_NAME" -m "$TAG_MESSAGE"
git push origin "$TAG_NAME"

echo "Tag '$TAG_NAME' created and pushed."