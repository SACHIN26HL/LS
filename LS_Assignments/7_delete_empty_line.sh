cat Delete.txt

echo " After deleting empty lines" 

sed '/^$/d' $1
