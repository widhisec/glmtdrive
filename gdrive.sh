#!/bin/bash
# jadi gini entah deh
function urlencode() {
	for ((i=0;i<${#1};i++)); do c=${1:$i:1};[[ "$c" =~ [a-zA-Z0-9\.\~\_\-] ]] || printf -v c '%%%02X' "'$c";e+="$c"
	done
    shuf -e "$e"
}
function yoi(){
          url=$(urlencode "${1}")
          z=$(curl 'https://gdbypass.host/action.php' -H 'User-Agent: Mozilla/5.0 (Android 2.2; Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.19.4 (KHTML, like Gecko) Version/5.0.3 Safari/533.19.4' --compressed -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H 'X-Requested-With: XMLHttpRequest' -H 'Origin: https://gdbypass.host' -H 'Connection: keep-alive' -H 'Referer: https://gdbypass.host/' --data-raw "link=$url"|
          grep -oP 'http.?://\S+' |tr -d '"')
          echo -e "succes -> $z"
}
yoi $1

