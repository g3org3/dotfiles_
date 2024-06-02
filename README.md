# Tools

## List

- https://github.com/junegunn/fzf
- https://github.com/ogham/exa
- https://github.com/sharkdp/bat
- https://github.com/sharkdp/fd
- https://github.com/neovim/neovim
- https://github.com/BurntSushi/ripgrep
- https://github.com/ajeetdsouza/zoxide
- https://github.com/denisidoro/navi
- https://github.com/direnv/direnv
- https://github.com/pyenv/pyenv
- https://github.com/jesseduffield/lazygit
- https://github.com/gpakosz/.tmux
- https://github.com/ohmyzsh/ohmyzsh
  - https://github.com/zsh-users/zsh-autosuggestions
  - https://github.com/zsh-users/zsh-syntax-highlighting
- https://github.com/saulpw/visidata

## Languages

```sh
# rust
# https://github.com/fubarhouse/ansible-role-rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
cargo install bottom
```

```sh
# go
wget https://go.dev/dl/go1.22.2.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.22.2.linux-amd64.tar.gz
```

```sh
# nodejs
curl -fsSL https://fnm.vercel.app/install | bash
```

```sh
#
fnm install v20
npm install -g tree-sitter-cli
npm i -g neovim
```

```sh
# direnv
curl -sfL https://direnv.net/install.sh | bash
```

```sh
# pyenv
# https://github.com/staticdev/ansible-role-pyenv
curl https://pyenv.run | bash
pyenv install 3.10
```

```sh
# ansible
pip3 install ansible-dev-tools
pip install neovim
pip install visidata
```

```sh
# git
sudo add-apt-repository ppa:git-core/ppa -y
sudo apt update
sudo apt install -y git
```

```sh
# java
curl -s "https://get.sdkman.io" | bash
sdk install java 11.0.22-tem
sdk install java 17.0.0-oracle
sdk install maven
```
