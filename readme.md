# Hoist

> Scripts I'm using to setup assorted systems.
> Not currently extensible, but is planned to be.

## Resources
- [“Yes/No” in Bash Script – Prompt for Confirmation](https://www.shellhacks.com/yes-no-bash-script-prompt-confirmation/)
- [In Bash, how to add “Are you sure Y/n” to any command or alias?](https://stackoverflow.com/questions/3231804/in-bash-how-to-add-are-you-sure-y-n-to-any-command-or-alias)
- [How do I prompt for Yes/No/Cancel input in a Linux shell script?](https://stackoverflow.com/questions/226703/how-do-i-prompt-for-yes-no-cancel-input-in-a-linux-shell-script)


| Program | OS                              | Default Version | Packaged Version | Notes                                             |
|---------|---------------------------------|-----------------|------------------|---------------------------------------------------|
| Vim     | CentOS 7                        | 7.4             |                  | Included patches: 1-160                           |
| Vim     | Ubuntu 16.04.4 (Xenial Xerus)   |                 | 7.4              | Included patches: 1-1689, Extra patches: 8.0.0056 |
| Bash    | Ubuntu 16.04.4 (Xenial Xerus)   | 4.3.48          |                  |                                                   |
| Bash    | Ubuntu 17.10.1 (Artful Ardvark) |                 | 4.4.12           |                                                   |
| Zsh     | Ubuntu 16.04.4 (Xenial Xerus)   | n/a             |                  |                                                   |

## Instructions (*WIP*)
```sh
git clone https://github.com/dunstontc/hoist
git clone https://github.com/dunstontc/dotfiles ~/.dotfiles
```

## TODO
- Symlink dotfiles.
- Generate `exports.sh` on hoist.

## Notes
- `chsh -s $(which zsh)`
- `https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64`

### CentOS
1. `Another app is currently holding the yum lock; waiting for it to exit... The other application is: PackageKit`
  - `sudo systemctl disable packagekit`
2. Build Git

