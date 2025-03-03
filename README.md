# dev_env
my dev env

# basic init
```
curl https://raw.githubusercontent.com/wangzitian0/dev_env/refs/heads/main/init.sh > init.sh
chmod +x init.sh
./init.sh
```

# git init
Go to here generate the key.
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent?platform=mac

```
cat ~/.ssh/personal.pub
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/personal
```

# IDE init
install Goland / Pycharm by toolbox
https://www.jetbrains.com/toolbox-app/

