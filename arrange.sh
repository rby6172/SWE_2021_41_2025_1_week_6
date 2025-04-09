#!/bin/bash
for file in files/*; do
    name=$(basename "$file")    # 파일 이름에서 첫 글자 추출
    first=$(echo "${name:0:1}" | tr '[:upper:]' '[:lower:]')
    if [[ "$first" =~ [a-z] ]]; then        # 알파벳일 때 폴더로 이동
        mkdir -p "$first"
        mv "$file" "$first/"
    fi
done