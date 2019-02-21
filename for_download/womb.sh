#!/usr/bin/env bash
echo this is womb downloader 
mkdir -p seed
#curl -L -o seed/womb.py https://gist.githubusercontent.com/plainroc/cf6fd282432bcaa8ec8e/raw/0aba17d1083777228b66c972014a5b3419bce66c/mac_womb.py
curl https://api.github.com/gists/cf6fd282432bcaa8ec8e > seed/womb.py.gist 
raw_url=$(cat seed/womb.py.gist | grep "raw_url" | sed -n "1p" | cut -d '"' -f 4)
echo $raw_url
curl -L -o seed/womb.py $raw_url
cd seed
python womb.py
