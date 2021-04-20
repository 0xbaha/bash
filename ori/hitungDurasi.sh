d1=$(date)
d1s=$(date "+%s")
echo "$d1"

echo "teks 1"
sleep 5
echo "teks 2"

d2=$(date)
d2s=$(date "+%s")
echo "$d2" 

durasi=$((d2s-d1s))
echo "Timelapse: $durasi seconds"
