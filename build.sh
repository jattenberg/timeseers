#!/bin/bash

name="timeseers"
venv="$name-venv"

echo "building virtualenv: $venv"

hash virtualenv
if [ "$?" != "0" ];
  then
    pip install virtualenv;
fi

virtualenv $venv

echo "installing $name"
$venv/bin/pip install -e .


echo "===================="
echo "===================="
echo "===================="


echo "being by activating the virtualenv or running:"
echo "$venv/bin/jupyter notebook"
