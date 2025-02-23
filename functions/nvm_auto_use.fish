function nvm_auto_use --on-variable PWD
  set -l nvmrc_file (nvm_find_nvmrc)
  if test -n "$nvmrc_file"
    set -l node_version (cat "$nvmrc_file")

    # Check the current version
    set -l current_version (node -v 2>/dev/null | sed 's/v//')

    if test "$node_version" != "$current_version"
      if not nvm use $node_version 2>/dev/null
        echo "Node.js version $node_version not found, installing..."
        nvm install $node_version && nvm use $node_version
      end
    end
  end
end

