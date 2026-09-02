#!/usr/bin/env bash

STACK=$1
REPO="https://github.com/d3m1s22/ai-agent-rules.git"

if [ -z "$STACK" ]; then
  echo "Error: Specify the desired stack."
  echo "Usage: pull-rules [react-web|react-native|node-backend]"
  exit 1
fi

TEMP_DIR=$(mktemp -d)
echo "Downloading the base (Global) and stack-specific rules ($STACK)..."

# 1. Clona la struttura del repository senza scaricare i file
git clone --depth 1 --filter=blob:none --sparse "$REPO" "$TEMP_DIR" > /dev/null 2>&1

# 2. Estrai ESATTAMENTE le due cartelle che ci servono
git -C "$TEMP_DIR" sparse-checkout set "global" "$STACK" > /dev/null 2>&1

# 3. Copia le regole GLOBALI (sovrascrive o crea la base)
if [ -d "$TEMP_DIR/global" ]; then
  # cp -a copia tutto, inclusi file e cartelle nascoste come .cursor e .agents
  cp -a "$TEMP_DIR/global/." .
fi

# 4. Copia le regole dello STACK (si fonde con la base globale)
if [ -d "$TEMP_DIR/$STACK" ]; then
  cp -a "$TEMP_DIR/$STACK/." .
else
  echo "Error: The stack '$STACK' is not present in the repository."
  rm -rf "$TEMP_DIR"
  exit 1
fi

# 5. Pulizia
rm -rf "$TEMP_DIR"

echo "Success! The multi-agent context for $STACK (+ Global Rules) has been applied to the project."