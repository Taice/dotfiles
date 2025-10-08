#!/bin/bash

dfs="git --git-dir=$HOME/git-bare/dotfiles.git --work-tree=$HOME"
zshrc="git --git-dir=$HOME/git-bare/zsh.git --work-tree=$HOME"

$dfs ls-files -z | xargs -0 -n1 dirname | sort -u | while read dir; do
    $dfs add "$dir"
done
$dfs commit -m "update"
$dfs push
$zshrc commit -m "update" -a
$zshrc push
