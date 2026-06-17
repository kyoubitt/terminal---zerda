#!/bin/bash
# Zerda Umbreon Pixel Art
# EST Timezone

echo -e "\033[?25l"
clear

echo -e "\033[38;5;183mhi! i'm zerda, your purple umbreon ^~^\033[0m"
echo -e "\033[38;5;183mit's currently $(TZ=America/New_York date '+%I:%M:%S %p') EST\033[0m"
echo -e "\033[38;5;183mnight vibes & glowing rings only 🌑\033[0m\n"

IMAGE_URL="https://files.catbox.moe/1sxgi2.webp"
IMAGE_FILE="/tmp/zerda-umbreon.webp"

curl -s -o "$IMAGE_FILE" "$IMAGE_URL"

if command -v chafa >/dev/null 2>&1; then
  chafa --size=70x35 --colors=full "$IMAGE_FILE"
elif command -v kitty >/dev/null 2>&1; then
  kitty +kitten icat --place 70x35 "$IMAGE_FILE"
elif command -v timg >/dev/null 2>&1; then
  timg -g 70x35 "$IMAGE_FILE"
else
  echo "Image downloaded to $IMAGE_FILE"
  echo "Install chafa for best results: sudo apt install chafa"
fi

echo -e "\n\033[38;5;93mcurl this again for fresh vibes :3 ❤️\033[0m"
echo -e "\033[?25h"
