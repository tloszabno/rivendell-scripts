#!/bin/bash

if [ $# -eq 0 ]
then
  echo "Please give name of new project"
  exit 1
fi

PROJECT_NAME=$1
echo "Creating project $PROJECT_NAME...."

echo "[1] Creating folder"
mkdir $PROJECT_NAME
cd $PROJECT_NAME

echo "[2] Creating git repository"
git init

echo "[3] Creating pipenv"
pipenv --python 3

echo "[4] Creating app.py"

touch app.py
echo "#!/usr/bin/env python3" >> app.py
chmod +x app.py

echo "[5] Creating readme"

cat > README.md <<'endmsg'
# TODO: add project name

## Description

TODO: add description here

# Running

1. run `pipenv install`
2. run `pipenv shell` and `./app.py` or `pipenv run ./app.py`

endmsg
echo "[6] adding .gitignore"
touch .gitignore
echo ".idea" >> .gitignore
echo ".vscode" >> .gitignore
echo "*.pyc" >> .gitignore

echo "[7] Creating initial commit"
git add .
git commit -a -m "Initial commit for project $PROJECT_NAME"

echo "[8] running vscode"
code . &

