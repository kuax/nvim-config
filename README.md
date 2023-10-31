## Prerequisites: System

Install Neovim following the [official documentation](https://github.com/neovim/neovim/wiki/Installing-Neovim):

```bash
wget ...
sudo mv nvim.appimage /usr/local/bin/nvim.appimage
sudo ln -s /usr/local/bin/nvim.appimage /usr/local/bin/nvim
```

Install some needed system dependencies:

```bash
sudo apt update && sudo apt install build-essential
```

Install [ripgrep](https://github.com/BurntSushi/ripgrep#installation):

```bash
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb
```

Follow the simple installation steps on [NvChad's documentation](https://nvchad.com/docs/quickstart/install)

## Prerequisites: Go

Install Go following the [Go installation instructions](https://go.dev/doc/install). Then, install some of the extra tooling:

```bash
go install mvdan.cc/gofumpt@latest
go install -v github.com/incu6us/goimports-reviser/v3@latest
go install github.com/go-delve/delve/cmd/dlv@latest
```

make sure the local bin file is in your `.profile` by adding the following to your `~/.profile`

```bash
# Add the go executable
export PATH=$PATH:/usr/local/go/bin:/home/kuax/go/bin
```
## Prerequisites: Rust

Installing Rust on WSL or Linux:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## Prerequisites: Javascript/Typescript

Install NVM and the latest version of Node/NPM as shown in the [documentation](https://github.com/nvm-sh/nvm#installing-and-updating)

## Prerequisites: C++

None

## Prerequisites: Python

Have python3, pip and venv installed

```bash
sudo apt install python3 python3-pip python3-venv
```

## Installation

Run `nvim` at least once to install all the base packages.

Then, clone this repo inside the `.config/nvim/lua/custom` folder:

```bash
git clone https://github.com/kuax/nvim-config.git ~/.config/nvim/lua/custom
```
