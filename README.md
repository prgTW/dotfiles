Installation
============

```sh
wget -O - --no-check-certificate --quiet https://raw.github.com/prgTW/dotfiles/master/install.sh | bash
```

Provisioning
============

Server
------
```sh
source $HOME/dotfiles/bootstrap.sh server
source $HOME/.bash_profile
```

Desktop
-------
```sh
source $HOME/dotfiles/bootstrap.sh desktop
source $HOME/.bash_profile
```

Custom
------
```sh
source $HOME/dotfiles/bootstrap.sh <custom-bootstrap-name>
source $HOME/.bash_profile
```
