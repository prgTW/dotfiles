Installation
============

Server
------
```sh
wget -O - --no-check-certificate --quiet https://raw.github.com/prgTW/dotfiles/master/install-server.sh | bash
source $HOME/.bash_profile
```

Desktop
-------
```sh
wget -O - --no-check-certificate --quiet https://raw.github.com/prgTW/dotfiles/master/install-desktop.sh | bash
source $HOME/.bash_profile
```

Custom installation
-------------------
```sh
wget -O - --no-check-certificate --quiet https://raw.github.com/prgTW/dotfiles/master/install.sh | bash
source bootstrap.sh bootstrap_name
source $HOME/.bash_profile
```
