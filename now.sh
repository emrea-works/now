#!/bin/bash

FORMAT=""
CLIP=""

while [ $# -gt 0 ]; do
  case $1 in
    --help )
      echo "Usage: now [PARAMETER]"
      echo "  --help          shows this dialog then exits."
      echo "  -f, --full     full string, e.g. 20230423091532"
      echo "  -d, --dash     dash seperator, e.g. 2023-04-23-09-15"
      echo "  -D, --detailed full, underscore seperator, e.g. 2023_04_23_09_15_32"
      echo "  -u, --unix     unix timestamp."
      echo "  -t, --today    show today only, dashed."
      echo "  -c, --clip     copy output to clipboard."
      exit 0
      ;;
    -f | --full )
      FORMAT="%Y%m%d%H%M%S"
      ;;
    -d | --dash )
      FORMAT="%Y-%m-%d-%H-%M"
      ;;
    -D | --detailed )
      FORMAT="%Y_%m_%d_%H_%M_%S"
      ;;
    -u | --unix )
      FORMAT="%s"
      ;;
    -t | --today )
      FORMAT="%Y-%m-%d"
      ;;
    -c | --clip )
      CLIP="xclip -sel clip"
      ;;
    * )
      echo "Invalid option: $1"
      exit 1
      ;;
  esac
  shift
done

if [ -z "$FORMAT" ]; then
  FORMAT="%Y-%m-%d-%H-%M"
fi

OUTPUT=$(date +"$FORMAT")
if [ -n "$CLIP" ]; then
  echo "$OUTPUT" | $CLIP
fi
echo "$OUTPUT"