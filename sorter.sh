#!bin\bash

current_dir=$(pwd)

echo -n -e "napis adresar: \n"
read -r dir

cd $dir

item_count=$(find . -maxdepth 1 -type f | wc -l)

echo "item_count"
echo $item_count

counter=1
while [ $counter -le $item_count ]
do
  echo $counter
  file=$(find . -maxdepth 1 -type f | head -n $counter | tail -n 1)
  file_year=$(date -r $file "+%Y")
  file_month=$(date -r $file "+%m")

  echo "file $file year $file_year month $file_month"
  ((counter++))
  mkdir -p "$file_year/$file_month"
  mv $file "$file_year/$file_month/"
done

cd $current_dir
echo "end"
