source "$XDG_CONFIG_HOME/zsh/aliases"
  2 
  3 source "$XDG_CONFIG_HOME/zsh/aliases"
  4 
  5 zmodload zsh/complist
  6 bindkey -M menuselect 'h' vi-backward-char
  7 bindkey -M menuselect 'k' vi-up-line-or-history
  8 bindkey -M menuselect 'l' vi-forward-char
  9 bindkey -M menuselect 'j' vi-down-line-or-history
 10 
 11 autoload -Uz compinit; compinit
 12 _comp_options+=(globdots) # With hidden files
 13 source ~/dotfiles/zsh/external/completion.zsh
 14 
 15 autoload -Uz prompt_purification_setup; prompt_purification_setup
 16 
 17 # Push the current directory visited on to the stack.
 18 setopt AUTO_PUSHD
 19 # Do not store duplicate directories in the stack
  1 fpath=($ZDOTDIR/external $fpath)
reincarnation% nvim ~/dotfiles/zsh/.zshrc
reincarnation% nvim ~/dotfiles/zsh/.zshrc
reincarnation% ls
aliases  external  scripts.sh
reincarnation% ls -a
.  ..  .zshenv	.zshrc	aliases  external  scripts.sh
reincarnation% cd external
reincarnation% ls
bd.zsh	completion.zsh	cursor_mode  prompt_purification_setup
reincarnation% ls -a
.  ..  bd.zsh  completion.zsh  cursor_mode  prompt_purification_setup
reincarnation% cat bd.zsh
# Source: https://raw.githubusercontent.com/Tarrasch/zsh-bd/master/bd.zsh

bd () {
  (($#<1)) && {
    print -- "usage: $0 <name-of-any-parent-directory>"
    print -- "       $0 <number-of-folders>"
    return 1
  } >&2
  # example:
  #   $PWD == /home/arash/abc ==> $num_folders_we_are_in == 3
  local num_folders_we_are_in=${#${(ps:/:)${PWD}}}
  local dest="./"

  # First try to find a folder with matching name (could potentially be a number)
  # Get parents (in reverse order)
  local parents
  local i
  for i in {$num_folders_we_are_in..2}
  do
    parents=($parents "$(echo $PWD | cut -d'/' -f$i)")
  done
  parents=($parents "/")
  # Build dest and 'cd' to it
  local parent
  foreach parent (${parents})
  do
    dest+="../"
    if [[ $1 == $parent ]]
    then
      cd $dest
      return 0
    fi
  done

  # If the user provided an integer, go up as many times as asked
  dest="./"
  if [[ "$1" = <-> ]]
  then
    if [[ $1 -gt $num_folders_we_are_in ]]
    then
      print -- "bd: Error: Can not go up $1 times (not enough parent directories)"
      return 1
    fi
    for i in {1..$1}
    do
      dest+="../"
    done
    cd $dest
    return 0
  fi

  # If the above methods fail
  print -- "bd: Error: No parent directory named '$1'"
  return 1
}
_bd () {
  # Get parents (in reverse order)
  local num_folders_we_are_in=${#${(ps:/:)${PWD}}}
  local i
  for i in {$num_folders_we_are_in..2}
  do
    reply=($reply "`echo $PWD | cut -d'/' -f$i`")
  done
  reply=($reply "/")
}

compctl -V directories -K _bd bd

