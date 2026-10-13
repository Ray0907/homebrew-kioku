#!/bin/sh
# Usage: ./bump.sh v0.6.0 — rewrites Formula/kioku.rb from the release's SHA256SUMS.
set -eu
tag=$1
sums=$(curl -fsSL "https://github.com/Ray0907/kioku/releases/download/$tag/SHA256SUMS")
f=Formula/kioku.rb
sed -i.bak -E "s#/download/v[0-9.]+/kioku_v[0-9.]+_#/download/$tag/kioku_${tag}_#" "$f"
for t in darwin_arm64 darwin_amd64 linux_arm64 linux_amd64; do
  sha=$(printf '%s\n' "$sums" | awk -v n="kioku_${tag}_$t.tar.gz" '$2==n{print $1}')
  [ -n "$sha" ] || { echo "no checksum for $t" >&2; mv "$f.bak" "$f"; exit 1; }
  # the sha256 line follows its url line
  awk -v t="${t}.tar.gz" -v sha="$sha" '{ if (hit && $1=="sha256") { sub(/"[0-9a-f]+"/, "\"" sha "\""); hit=0 } if ($1=="url" && index($0, t)) hit=1; print }' "$f" > "$f.new" && mv "$f.new" "$f"
done
rm -f "$f.bak"
