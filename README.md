# dotfiles-stow

This repository holds my dotfiles managed by GNU Stow.
For more information about GNU Stow, take a look at the [documentation](https://www.gnu.org/software/stow/manual/stow.html).

## Usage

### Preferred Method
1. Clone this repository:
```sh
git clone https://github.com/tr00datp00nar/dotfiles-stow.git
```

2. Uncomment the packages you want to install inside of `install.sh`.

3. Run the install script from inside of the cloned repository.
```sh
cd dotfiles-stow
./install.sh
```

### Manual Method
1. Ensure GNU Stow is installed on your local system.
- Arch Linux:
```sh
sudo pacman -S stow
```

- Debian/Ubuntu:
```sh
sudo apt install stow
```

2. Clone the repository to your local system.
```sh
git clone https://github.com/tr00datp00nar/dotfiles-stow.git
```

3. Navigate to the cloned repository.
```sh
cd dotfiles-stow
```

4. Run the stow command to link the configuration.
```sh
stow .
```

Alternatively, if you want to only link a particular package use the following:
```sh
stow <package-name>
```
