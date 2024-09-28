#!/bin/sh
echo -ne '\033c\033]0;SMSText\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/smstext.x86_64" "$@"
