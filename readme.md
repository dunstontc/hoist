# Hoist

> Scripts I'm using to setup assorted systems.
> Not currently extensible, but is planned to be.

## Resources
- [“Yes/No” in Bash Script – Prompt for Confirmation](https://www.shellhacks.com/yes-no-bash-script-prompt-confirmation/)
- [In Bash, how to add “Are you sure Y/n” to any command or alias?](https://stackoverflow.com/questions/3231804/in-bash-how-to-add-are-you-sure-y-n-to-any-command-or-alias)
- [How do I prompt for Yes/No/Cancel input in a Linux shell script?](https://stackoverflow.com/questions/226703/how-do-i-prompt-for-yes-no-cancel-input-in-a-linux-shell-script)


| Program | OS                                | Default Version | Packaged Version | Notes                                             |
|---------|-----------------------------------|-----------------|------------------|---------------------------------------------------|
| Vim     | Ubuntu 16.04.4 LTS (Xenial Xerus) |                 | 7.4              | Included patches: 1-1689, Extra patches: 8.0.0056 |
| Bash    | Ubuntu 16.04.4 LTS (Xenial Xerus) | 4.3.48          |                  |                                                   |
| Zsh     | Ubuntu 16.04.4 LTS (Xenial Xerus) | n/a             |                  |                                                   |
| Bash    | Ubuntu 17.10 (Artful Ardvark)     |                 | 4.4.12           |                                                   |

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

### CentOS
1. Build Git
