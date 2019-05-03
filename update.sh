rm -r Packages.bz2
rm -r Packages
dpkg-scanpackages ./debs > Packages
bzip2 -fks Packages

git add -a
git commit -m "$*"
git push
