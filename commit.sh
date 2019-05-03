rm -rf ./Packages*
echo "" >> ./Packages


/var/mobile/jakedacatman.github.io/dpkg-scanpackages -m ./debs/ > ./Packages;
echo "zipping"
bzip2 -c9k ./Packages > ./Packages.bz2;

git add --all
git commit -m $*
git push
exit 0;
