apt update --yes
pkg update --yes
apt upgrade --yes
pkg upgrade --yes
pkg install wget golang python2 git build-essential yarn python3 vim nodejs tmux clang git curl x11-repo tigervnc lxqt otter-browser qterminal --yes
pkg install tigervnc xrdp ripgrep lxqt* --yes
pkg install yarn --yes
pkg install gh --yes
if [ ! -d ~/storage ]; then
	termux-setup-storage;
fi
printf '#!/data/data/com.termux/files/usr/bin/sh\nlxqt-session &' > ~/.vnc/startup
yarn global add code-server
pkg install ripgrep
cd /data/data/com.termux/files/home/.config/yarn/global/node_modules/code-server
ln -s $PREFIX/bin/rg ./lib/vscode/node_modules/vscode-ripgrep/bin/rg
cd ~
git config --global credential.helper cache
