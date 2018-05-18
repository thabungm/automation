# sudo apt-get install scrot
# This function takes snapshot of the sreen after configured Interval
pathToSave="/home/thabung/Pictures/"
timeIntervalSecs=10
echo "The main folder is: $pathToSave "
read -p "Folder Name: "  folderName
mkdir -p $pathToSave$folderName
cd $pathToSave$folderName
echo $pathToSave$folderName
while true; do scrot -d $timeIntervalSecs '%Y-%m-%d-%H:%M:%S.png' -e 'mv $f $pathToSave$folderName'; done
