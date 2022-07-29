
$RAKUBIN -v

echo "line1"
echo "line2"
$RAKUBIN -e 'do { no worries; 02 + 02 }' 2>&1
echo "line3"
