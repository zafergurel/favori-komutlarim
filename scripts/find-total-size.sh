# finds total size of flv files in the current directory
find . -type f -name "*.flv" -exec du -cb {} + | awk '$2 ~ total {sum += $1} END {print sum || 0}' | numfmt --to=iec-i --suffix=B --padding=7
