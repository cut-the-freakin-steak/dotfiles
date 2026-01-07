#!/usr/bin/env bash

RED='\033[0;31m'
YELLOW='\033[0;33m'
GREEN='\033[0;32m'
RESET='\033[0m'

upower -d | awk -v RED="$RED" -v YELLOW="$YELLOW" -v GREEN="$GREEN" -v RESET="$RESET" '
  /^ *model:/ {
    model = substr($0, index($0,$2))
  }
  /^ *percentage:/ {
    perc = $2
  }
  /^ *battery-level:/ {  # fallback if no percentage
    if (!perc) perc = $2
  }
  /^$/ {
    if (model && perc) {
      # strip trailing % for numeric test
      pct = perc + 0   # force numeric
      sub(/%$/, "", pct)
      color = GREEN
      if (pct <= 20) {
        color = RED
      } else if (pct <= 40) {
        color = YELLOW
      }
      # print colored line: model and percentage
      printf "%s%-40s  %s%%%s\n", color, model, pct, RESET
    }
    model = ""; perc = ""
  }
'
