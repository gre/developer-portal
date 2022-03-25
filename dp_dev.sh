#!/bin/sh

# Author : Francesco
# Copyright (c) =
# Script :

# cat _config_main_edit.yml _config_dev.yml > _config.yml
echo '========================================='
bundle install
bundle exec jekyll build
echo '========================================='
echo '    Your current branch is:' $(git rev-parse --abbrev-ref HEAD)
echo '========================================='
bundle exec jekyll serve --incremental --drafts --watch --future
