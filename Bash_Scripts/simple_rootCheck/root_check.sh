#!/bin/bash

ROOT=0
if [ "$UID" -ne "$ROOT" ]
then
echo "user is not root "
else
echo "user is root"
fi
