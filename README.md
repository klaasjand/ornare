# Ornare - Debian Development System

Ornare can be used to outfit a Debian host with the tools necessary to develop all kinds of software or infrastructure-as-code.

In a historical Roman context, the Latin word **ornare** centered on the functional concept of being "fully fitted out". For a soldier, this meant the essential process of **equipping** himself with the armor, weapons, and gear required for a campaign. This sense of preparation extended to the maritime world, where it described **outfitting** a ship for sea. To *ornare* was not merely to decorate, but to provide every tool required for a specific task. Ultimately, it meant transforming a person or object into a state that was complete and ready for action.

**NOTE:** This is work in progress!

A remark regarding hardening. This project aims for bootstrapping a development system which is secure enough (hopefully) but still provides a developer enough freedom to work with. This installer uses https://github.com/dev-sec in the `hardening.yml` playbook. If you want a thoroughly hardened system according to industry standards like CIS then look at: https://github.com/ComplianceAsCode/content or: https://github.com/ansible-lockdown. 

Use: `sudo lynis audit system` or another tool to check the current hardening status.

## Installing Ornare

### Prepare a new system

Make sure to add a user which is able to use passwordless sudo. When you are able to sudo but not passwordless use the following command:
```shell
echo "$USER ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/90-passwordless && sudo chmod 0440 /etc/sudoers.d/90-passwordless
```

### Install Ornare

Run some preparations for the installer and then the install script:
```shell
sudo apt install git

git clone https://github.com/klaasjand/ornare.git 

cd ornare

bash install.sh
```

Logout and login again to see the result and use Ornare.

## Toolstack

* Neovim
* LazyVim
* Mise
* Navi
* Navi cheats
* Fish shell
* Starship prompt
* Docker
* Rust
* Lynis
* pastel
* tealdeer

* asciinema
* bat
* btop
* cmatrix
* curl
* du-dust
* entr
* eza
* fd-find
* fzf
* gcc
* git
* gum
* ipcalc
* jq
* lazygit
* make
* python3-venv
* ripgrep
* tmux
* unzip
* wget
* zoxide

TODO:

* hexora
* bubblewrap
