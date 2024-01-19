wget "https://raw.githubusercontent.com/py-er/script-to-path/main/script-to-path" | wgetout=$1
#echo $wgetout
chmod +x script-to-path
./script-to-path script-to-path
rm script-to-path
user=$(whoami)
if ! [[ $PATH == *"/home/$user/.scripts"* ]]
then
export run PATH=/home/$user/.scripts:$PATH
cd ~
echo "export PATH=/home/$user/.scripts:$PATH" >> .bashrc
echo "export PATH=/home/$user/.scripts:$PATH" >> .zshrc
cd - > /dev/null
fi