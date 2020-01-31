#!/bin/bash

FILE=$(ls -t data/*.sql 2>/dev/null | head -1)

if [[ -f "$FILE" ]]; then
   wp db import $FILE
fi

