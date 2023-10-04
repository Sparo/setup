#!/bin/bash

echo -e "Enter git user.name: \c"
read -r git_user_name
git config --global user.name "$git_user_name"
echo -e "Git user.name set as : $git_user_name"


git config --global -l
