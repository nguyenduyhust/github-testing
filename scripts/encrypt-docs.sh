filenames=`
  ls docs/*.html
  ls docs/**/*.html
`

if [ "$PASSWORD" != "" ]
then
   password=$PASSWORD
else
   password=password
fi

echo $filenames
for file in $filenames
do
  echo $file
  npx staticrypt $file $password --output "$file" --config false --salt $SALT
done