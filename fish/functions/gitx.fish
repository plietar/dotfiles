function gitx
  if count $argv >/dev/null
    open -a ~/Applications/GitX.app $argv
  else
    open -a ~/Applications/GitX.app .
  end
end
