file=RELEASE.md
log_file=${1:-CHANGELOG.md}

prev_release_line=$(awk '/## \[/{print NR}' $log_file | head -2 | tail -1)
prev_release_line=$((prev_release_line-2))
release_notes="$(sed -n -e "3,$prev_release_line p" -e "$prev_release_line q" $log_file)"
release_notes=$(echo "$release_notes" | sed -e "s/\###/##/g;s/\## //g")

echo "$release_notes" > $file