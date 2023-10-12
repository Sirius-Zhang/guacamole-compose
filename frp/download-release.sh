#!/bin/bash

repo_owner="fatedier"
repo_name="frp"
partial_file_name="linux_amd64"

latest_release=$(curl -s "https://api.github.com/repos/${repo_owner}/${repo_name}/releases/latest")
download_url=$(echo "${latest_release}" | grep "browser_download_url" | awk -F '"' '{print $4}')

file_list=$(curl -s "${download_url}" | grep -oP "(?<=\"name\": \")[^\"]+")

matched_files=()
for file in ${file_list}; do
  if [[ "${file}" == *"${partial_file_name}"* ]]; then
    matched_files+=("${file}")
  fi
done

if [ ${#matched_files[@]} -gt 0 ]; then
  file_to_download=${matched_files[0]}
  file_url="${download_url}/${file_to_download}"
  curl -sLO "${file_url}" -o frp.tar.gz
  echo "Downloaded: ${file_to_download}"
  tar -xf frp.tar.gz -C ./files
  cp ./files/frps ./frps
  cp ./files/frpc ./frpc
else
  echo "No matching file found."
fi