
# Termux Auto Theme Setup Tool

This is a Termux tool to automatically set up a custom terminal theme with Fish shell, Fisher, Tide theme, and Colorls. You can apply and remove themes easily.

---

## Features

- Apply custom bash and fish themes.
- Set a custom username and team name in shell prompt and Neofetch.
- Install required packages like `fish`, `ruby`, and `colorls`.
- Fisher and Tide theme auto-installation.
- Remove theme completely, keeping the theme folder safe.
- Rich colorful terminal UI with progress spinners.

---

## Directory Structure

```

Termux-Theme/
 ├──    install.sh
 | └── theme/
 |  ├──── packages.txt
 │  ├──── theme_bash_bashrc.txt
 │  ├──── theme_bashrc.txt
 │  └──── theme_fish.txt
 ├── tmx-theme.txt
 └── tmx-theme.py

````

- `tmx-theme.py` → Main Python script, handles applying/removing theme.
- `install.sh` → Installs necessary packages (Fish, Ruby, etc.) with progress bar.
- `theme_bashrc.txt` → Template for `.bashrc`.
- `theme_bash_bashrc.txt` → Template for `bash.bashrc`.
- `theme_fish.txt` → Template for Fish shell config.
- `packages.txt` → List of packages to install.

---

## Installation

1. Make sure Python and Rich library are installed:

```bash
pkg install python -y
pip install rich
````

2. Clone or download this repository into Termux:

```bash
pkg install python3 -y
pkg install git -y
git clone https://github.com/BLACK-ZER-0/TMX-Theme.git
cd TMX-Theme
chmod 777 *
chmod +x *
pip install -r tmx-theme.txt
bash install.sh
python3 tmx-theme.py
```


---

## Usage

1. Run `tmx-theme.py`:

```bash
python3 tmx-theme.py
```

2. Select an option:

```
[1] Apply Theme
[2] Remove Theme
Choose option: 
```

### Apply Theme

* Enter your username (default: `BLACK ZER0`)
* Enter your team name (default: `BANGLADESH CYBER SQUAD`)
* The script will:

  * Install Colorls
  * Apply bash and fish theme files
  * Install Fish shell, Fisher, and Tide
  * Launch `tide configure` interactively (final step, after this script will exit)
* After configuration, your terminal prompt and Neofetch will display your username and team name.

### Remove Theme

* Deletes `.bashrc`, `bash.bashrc`, and Fish config (`~/.config/fish`)
* Keeps the `theme` folder safe for reuse.

---

## Notes

* This tool is designed for Termux on Android.
* Make sure your terminal supports Fish shell.
* Colorls requires Ruby installed on your device.

---

## Developer

**BLACK ZER0**
