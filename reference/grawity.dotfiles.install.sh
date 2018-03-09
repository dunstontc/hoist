#!/usr/bin/env bash

trash() {
	local trashdir=~/tmp file

	for file in "$@"; do
		if [ -k "$file" ]; then
			trace "ignoring sticky $file"
		elif [ -e "$file" ] || [ -h "$file" ]; then
			echo "backing up $file -> $trashdir"
			mkdir -pm 0700 "$trashdir"
			mv "$file" "$trashdir/old_${file##*/}"
		fi
	done
}

link() {
	local target=$dotdir/${1%/}
	local link=${2:-$HOME/.$1}

	if [ ! -e "$target" ]; then
		err "link target is missing: $link -> $target"
		return
	elif [ -e "$link" ]; then
		if [ -k "$link" ]; then
			trace "ignoring sticky $link"
			return
		elif [ -h "$link" ]; then
			rm -f "$link"
		else
			trash "$link"
		fi
	else
		local linkdir=${link%/*}
		if [ ! -d "$linkdir" ]; then
			mkdir -p "$linkdir"
		fi
	fi
	trace "linking $link -> $target"
	sym -f "$target" "$link"
}

check_owner() {
	local f
	for f in "$@"; do
		if [ -h "$f" ]; then
			continue
		elif [ -e "$f" ] && [ ! -O "$f" ]; then
			case $f in
			*/.lesshst)
				rm -f "$f" ;;
			*)
				notice "file '$f' not owned by me, replacing"
				trash "$f" ;;
			esac
			(umask 077; touch "$f")
		elif [ -d "$f" ] && [ ! -O "$f" ]; then
			notice "dir '$f' not owned by me, replacing"
			trash "$f"
			(umask 077; mkdir "$f")
		fi
	done
}

for dir in ~/lib/code ~/etc/code ~/code; do
	if [ -d "$dir/bin" ]; then
		export PATH="$dir/bin:$PATH"
		break
	fi
done

. lib.bash || exit

if [ -t 0 ]; then
	VERBOSE=1
fi

dotdir="$(dirname "$(sym -R "$0")")"
trashdir=~/tmp

cd "$dotdir" || exit

# Remove undesired files

trash ~/.{login,logout}
trash ~/.bash_{login,profile,logout}
trash ~/.{sh,csh}rc
rm -f ~/.viminfo

# Install shell profiles

link bashrc
link inputrc
link profile

# Install CLI program configs (unconditional)

link git ~/.config/git
(umask 077
 touch ~/.config/git/credentials
 mkdir -p ~/.local/share/tig
 touch ~/.local/share/tig/history)

ssh/generate
link ssh/known_hosts

link tmux.conf

link vim ~/.vim
link vim ~/.config/nvim
mkdir -p ~/.local/share/nvim/{backup,shada,swap,undo}

# Copy certain settings insted of symlinking
# (common base parameters, but remains host-specific)

if ! grep -qs "^#" ~/.config/htop/htoprc; then
	mkdir -p ~/.config/htop
	cp htoprc ~/.config/htop/htoprc
fi

# Install conditional configs

if have lftp; then
	link lftprc ~/.config/lftp/rc
fi

if have makepkg; then
	link pacman/makepkg.conf ~/.config/pacman/makepkg.conf
fi

if have msmtp; then
	chmod 600 mail/msmtprc
	link mail/msmtprc ~/.msmtprc
fi

if have radare2; then
	link radare2rc ~/.config/radare2/radare2rc
fi

# Install GUI configs

if [ "$DISPLAY" ]; then
	cp -n gui/user-dirs.dirs ~/.config/user-dirs.dirs

	link gui/XCompose ~/.XCompose

	if [ ! -d ~/.config/fontconfig ]; then
		link gui/fontconfig ~/.config/fontconfig
	fi

	if have openbox; then
		link gui/openbox/autostart ~/.config/openbox/autostart
		link gui/openbox/rc.xml    ~/.config/openbox/rc.xml
	fi

	# Compatibility symlinks

	[ -d ~/.thumbnails ] || sym -f ~/.cache/thumbnails   ~/.thumbnails
	[ -d ~/.fonts ]      || sym -f ~/.local/share/fonts  ~/.fonts
	[ -d ~/.themes ]     || sym -f ~/.local/share/themes ~/.themes
fi

# Check frequent root-ownership accidents

check_owner ~/.*_history ~/.lesshst ~/.rnd ~/.cache ~/.config ~/.gnupg ~/.local/share

exit 0

