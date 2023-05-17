echo "Frame Type Distribution"
echo "-----------------------"
ffprobe -hide_banner -loglevel error -show_frames $1 2>/dev/null | grep -P "(?<=pict_type=)\w" -o | sort | uniq -c | awk '{print $1" "$2}' ORS=' '

echo ""
echo ""

echo "GoP Structure"
echo "-------------"
ffprobe -hide_banner -loglevel error -show_frames $1 2>/dev/null | grep -P "(?<=pict_type=)\w" -o | uniq -c | awk '{print $1$2}' ORS=' '

echo ""
