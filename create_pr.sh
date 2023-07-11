#!/bin/bash
git checkout -b $1
echo "Created branch $1" > README.md
git commit -am "Created branch $1"
git push --set-upstream origin $1
gh pr create --title "Created branch $1" --body "Created branch $1" --base main --head $1
# gh pr comment "$1" --body "Created branch $1"
# gh pr review $1 --comment -b "interesting"
# gh pr merge "$1" --squash --delete-branch
# git checkout main
# git pull

# create a loop with a number that is part of the command that is echoed as one line command

CSV_FILE=$1
# replace the .json file exetension with .md
CSV_FILE=${CSV_FILE/.json/.md}

