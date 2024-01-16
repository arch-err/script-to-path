# script-to-path
Adds a script to /use/local/scripts/ and adds it to path

 - Instalation
```bash
git clone https://github.com/py-er/script-to-path.git; cd script-to-path; chmod +x script-to-path; ./script-to-path script-to-path; cd - > /dev/null; rm -rf script-to-path; user=$(whoami); if ! [[ $PATH == *"/home/$user/.scripts"* ]]; then; export run PATH=/home/$user/.scripts:$PATH; cd ~; echo "export PATH=/home/$user/.scripts:$PATH" >> .bashrc; echo "export PATH=/home/$user/.scripts:$PATH" >> .zshrc; sudo su root -c "export run PATH=/home/$user/.scripts:$PATH"; sudo su root -c "echo 'export PATH=/home/$user/.scripts:$PATH' >> /root/.bashrc"; sudo su root -c "echo 'export PATH=/home/$user/.scripts:$PATH' >> /root/.zshrc"; cd - > /dev/null;  fi;
```
 