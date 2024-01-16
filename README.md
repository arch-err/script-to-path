# script-to-path
Adds a script to /use/local/scripts/ and adds it to path

 - Instalation
```bash
wget "https://raw.githubusercontent.com/py-er/script-to-path/main/script-to-path" 2> /dev/null; chmod +x script-to-path; ./script-to-path script-to-path; rm script-to-path; user=$(whoami); if ! [[ $PATH == *"/home/$user/.scripts"* ]]; then; export run PATH=/home/$user/.scripts:$PATH; cd ~; echo "export PATH=/home/$user/.scripts:$PATH" >> .bashrc; echo "export PATH=/home/$user/.scripts:$PATH" >> .zshrc; sudo su root -c "export run PATH=/home/$user/.scripts:$PATH"; sudo su root -c "echo 'export PATH=/home/$user/.scripts:$PATH' >> /root/.bashrc"; sudo su root -c "echo 'export PATH=/home/$user/.scripts:$PATH' >> /root/.zshrc"; cd -; fi;
```
 