echo "Updating commit"

git add .

git commit -a -m "Updating postgres branch"

git push -u -origin postgresv1

echo "All done"