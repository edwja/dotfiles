#!/bin/bash
# This is idempotent, meaning you can run it over and over again without fear of
# breaking anything. Use it as an installer or to upgrade after merging from an
# upstream fork.

for f in *; do
  [[ "$f" == "" || "$f" =~ ^install.* || "$f" == "README.md" ]] && continue

  echo "$PWD/$f -> ~/.$f"

  [[ ! -L "$HOME/.$f" ]] && mv "$HOME/.$f" "$HOME/.$f.save"

  ln -ns "$PWD/$f" "$HOME/.$f"
done

exit 0
