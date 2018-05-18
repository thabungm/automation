# This function takes snapshot of the sreen after configured Interval
pathToSave = ~/Pictures/
read -p "Folder Name: "  folderName
mkdir -p $pathToSave$folderName

while true; do scrot -d 5 '%Y-%m-%d-%H:%M:%S.png' -e 'mv $f $pathToSave'; done