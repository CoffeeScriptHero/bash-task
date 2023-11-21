# Denys Kozarenko IO-13
# Grade book - 1309
# Variant - 1309 mod 6 = 1

echo "Script started!"

find . -maxdepth 1 -type d ! -path . |
while read dir; do
    echo "$(du -s "$dir" | cut -f1) - $dir"
done | sort -n | tail -3
