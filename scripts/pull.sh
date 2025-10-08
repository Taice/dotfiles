#!/bin/bash

git --git-dir=$HOME/git-bare/zsh.git --work-tree=$HOME pull
git --git-dir=$HOME/git-bare/dotfiles.git --work-tree=$HOME pull
