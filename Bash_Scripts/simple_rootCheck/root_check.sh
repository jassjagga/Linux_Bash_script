#!/bin/bash

UNROOT=1000
if [ "$UID" -ne "$UNROOT" ]
then
echo "user is root "
else
echo "user is not root"
fi
