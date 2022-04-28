# dotfiles

dotfiles managed with chezmoi

# init with this
```console
chezmoi init https://github.com/nilskruse/dotfiles.git
```
# fix repo access after adding ssh key
```console
chezmoi cd
git remote remove origin
git remote add origin git@github.com:nilskruse/dotfiles.git
git push --set-upstream origin main
```


# useful commands
```console
chezmoi add
chezmoi re-add
chezmoi update
chezmoi edit
chezmoi apply
```
