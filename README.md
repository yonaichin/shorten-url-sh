## Install
1. Install dependent libraries ```sudo apt-get install jq xclip```
2. Get your [bitly token](https://bitly.com).
3. Download ```.shorten-url.sh``` to your home directory
4. Make it  executable by ```chmod +x .shorten-url.sh```
4. add to your profile eg: ```.zshrc```
```
export BITLY_TOKEN="xxxxxxxxxxxxxx"
alias surl="~/.shorten_url.sh"
``` 

Then you are Good To Go.