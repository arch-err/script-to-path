wget "https://raw.githubusercontent.com/py-er/script-to-path/main/script-to-path" 1> /dev/null || exit 1
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