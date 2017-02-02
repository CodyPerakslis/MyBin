#!/bin/bash

if [ $# -ne 0 ]; then
  fname="$(basename $1)"
  beginfname="$(echo $fname | awk -F '[.]' '{print $1}')"
  endfname="$(echo $fname | awk -F '^[^.]{1,}[.]' '{print $2}')"
  name="${beginfname}_$(date "+%Y-%m-%d").$endfname"
  end="."
  if [ $# -gt 1 ]; then
    end=$2
  fi
  newfile="$end/$name"
  cp $1 $newfile
fi
