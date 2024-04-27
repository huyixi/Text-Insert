#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title quo
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Insert Quote" }
# @raycast.argument2 { "type": "text", "placeholder": "Source title" , "optional":true}
# @raycast.argument3 { "type": "text", "placeholder": "Source link" , "optional":true}

# Documentation:
# @raycast.author huyixi
# @raycast.authorURL https://raycast.com/huyixi

# IMPORTANT: Please replace the file_path with your own file path before running this script.
file_path="/Users/huyixi/i/huyixi.wiki/docs/quotes.md"

# Check if file_path is set
if [[ -z "$file_path" ]]; then
  echo "Error: file_path is not set. Please set the file_path variable at the top of this script."
  exit 1
fi

current_datetime=$(date +"%Y-%m-%d %H:%M:%S")

quote="$1"
source_title="$2"
source_link="$3"

# 格式化引用文本
formatted_quote="> $quote"$'\n'

if [[ -n "$source_title" && -n "$source_link" ]]; then
  formatted_quote="$formatted_quote"$'\n'"Source: [${source_title}](${source_link})"$'\n'"Time: $current_datetime "
elif [[ -n "$source_title" ]]; then
  formatted_quote="$formatted_quote"$'\n'"Source: [${source_title}]()"$'\n'"Time: $current_datetime"
elif [[ -n "$source_link" ]]; then
  formatted_quote="$formatted_quote"$'\n'"Source: [](${source_link})"$'\n'"Time: $current_datetime"
else
  formatted_quote="$formatted_quote"$'\n'"Time: $current_datetime"
fi

# 检查文件是否存在，如果不存在则创建
if [ ! -f "$file_path" ]; then
  touch "$file_path"
fi

# 将引用文本追加到文件末尾
echo "$formatted_quote"$'\n' >> "$file_path"

echo "Quote inserted into $file_path"
