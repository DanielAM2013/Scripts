#!/bin/bash

REPORT_DIR=~/Documents/Relatórios/Lab.\ Control\ System
DATE=$(date -I)
mkdir "$REPORT_DIR"/$DATE
NOW_DIR="$REPORT_DIR"/$DATE

mkdir "$NOW_DIR"/{src,ref,sim}

FIG_DIR=~/Pictures/Relatórios/Lab.\ Control\ System/
mkdir "$FIG_DIR"/$DATE
ln -sr "$FIG_DIR"/$DATE "$NOW_DIR"/fig


