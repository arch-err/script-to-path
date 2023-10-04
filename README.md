# script-to-path
Adds a script to /use/local/scripts/ and adds it to path

 - Instalation
```bash
sudo echo > /dev/null && git clone https://github.com/py-er/script-to-path.git && cd script-to-path && if ! [[ $PATH == *"/usr/local/scripts"* ]]; then; export run PATH=/usr/local/scripts:$PATH; fi && chmod +x script-to-path && ./script-to-path script-to-path && cd - > /dev/null && rm -rf script-to-path
```
 