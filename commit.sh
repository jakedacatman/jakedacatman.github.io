rm -rf Packages*

apt-ftparchive packages ./debs/ > .Packages;
echo "zipping"
bzip2 -fks Packages

git add --all
git commit -m $1
git push
exit -;
