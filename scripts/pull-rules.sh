#!/usr/bin/env bash
STACK=$1
if [ -z "$STACK" ]; then
  echo "Usage: pull-rules [react-web|react-native|node-backend]"
  exit 1
fi
git clone --depth 1 --filter=blob:none --sparse https://github.com/demis/ai-agent-rules.git /tmp/ai-rules > /dev/null 2>&1
git -C /tmp/ai-rules sparse-checkout set "$STACK" > /dev/null 2>&1
cp -R /tmp/ai-rules/"$STACK"/. .
rm -rf /tmp/ai-rules
echo "Success! Agent rules for $STACK applied to current project."
