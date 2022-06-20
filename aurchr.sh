echo "You just executed $0 Bash AUR helper "
echo "install $1 from AUR? (Y/n)"
read yn
if [[ $yn = 'n' ]]
then
echo "Operation Canceled by user"
else
git clone "https://aur.archlinux.org/$1.git"
cd $1
makepkg -si
echo "Would you like to clean up the git folder? (Y/n)"
read yn
if [[ $yn = 'n' ]]
then
echo "Okay then"
else
cd ..
rm -rf $1
fi
fi