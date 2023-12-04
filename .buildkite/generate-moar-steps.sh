#!/bin/bash
set -e


echo "steps:"
echo "  - wait" # wait for all previous steps to complete

# A deploy step only if it's the master branch otherwise do a pr temp deploy
if [[ "$BUILDKITE_BRANCH" == "main" ]]; then
  echo "  - command: echo Deploy!"  
  echo "    label: \":rocket:\""
else
  echo "  - command: echo PR temp deploy"
  echo "    label: \":open-pr::rocket:\""
fi
