#!/bin/bash
# remove symbolic links created for these dotfiles

for f in *; do
  [[ "$f" == "" || "$f" =~ ^(un)?install.* || "$f" == "README.md" ]] && continue

  [[ ! -L "$HOME/.$f" ]] && continue

  ls -l ~/.$f
  echo "removing ~/.$f"

  rm ~/.$f
done

exit 0
