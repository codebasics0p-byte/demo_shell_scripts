echo "Enter Filename"
read filename
if [ -f $filename ]
then
	echo "$filename exists"
else
	echo "File $filename doesn't exist"
fi
