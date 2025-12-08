#!/bin/bash

# Convert MOV to web-optimized MP4
# This script compresses the video for faster web loading

if ! command -v ffmpeg &> /dev/null; then
    echo "ffmpeg is not installed. Installing via Homebrew..."
    brew install ffmpeg
fi

echo "Converting final-urcm2.mov to web-optimized MP4..."
ffmpeg -i final-urcm2.mov \
  -c:v libx264 \
  -preset medium \
  -crf 23 \
  -c:a aac \
  -b:a 128k \
  -movflags +faststart \
  -vf "scale=1920:-2" \
  final-urcm2.mp4

echo "Conversion complete! final-urcm2.mp4 is ready for web use."






