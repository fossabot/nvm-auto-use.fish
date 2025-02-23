function nvm_find_nvmrc
  set -l dir (pwd)
  while test "$dir" != "/"
    if test -f "$dir/.nvmrc"
      echo "$dir/.nvmrc"
      return
    end
    set dir (dirname "$dir")
  end
end

