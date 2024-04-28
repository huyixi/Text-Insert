# README

This is a bash script named text-insert.sh that is used to insert a text into a markdown file. It is designed to be used with Raycast, a command line tool for macOS.

## Usage

The script takes three parameters:

The quote to be inserted (required)
The source title of the quote (optional)
The source link of the quote (optional)
The script will format the quote and append it to the end of a markdown file. The file path is specified in the file_path variable in the script. If the file does not exist, it will be created.

## Example

Here is an example of how to use the script:

"
This will append the following to the end of the markdown file:

> This is a quote

Source: [Source Title](https://source-link.com)
Time: 2022-01-01 00:00:00

## Author

This script was created by [huyixi](https://huyixi.com). You can find more about the author here.

## Note

Please replace the file_path with your own file path before running this script.
