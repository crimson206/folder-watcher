#!/bin/bash

echo "=== GitHub Tag Creation Tool ==="

# Ask for tag name
echo -n "Enter tag name (e.g. v1.0.0): "
read TAG_NAME

if [ -z "$TAG_NAME" ]; then
  echo "Error: Tag name cannot be empty."
  exit 1
fi

# Ask for tag message (optional)
echo -n "Enter tag message (optional, press Enter to use default): "
read TAG_MESSAGE_INPUT

# Use default message if empty
if [ -z "$TAG_MESSAGE_INPUT" ]; then
  TAG_MESSAGE="$TAG_NAME tag"
else
  TAG_MESSAGE="$TAG_MESSAGE_INPUT"
fi

echo "Creating tag '$TAG_NAME' with message: '$TAG_MESSAGE'"

# Create and push tag
git tag -a "$TAG_NAME" -m "$TAG_MESSAGE"
git push origin "$TAG_NAME"

echo "Tag '$TAG_NAME' created and pushed successfully."