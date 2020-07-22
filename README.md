# dotfiles

## NVIM

![2020-05-06-23:52:00-scrot](https://user-images.githubusercontent.com/53794049/81249339-ba620680-8ff4-11ea-9422-f5d8efdddc51.png)

### Requisites

- I use these files in **nvim**, but it should work fine in **vim** too. _With exception of **Coc.nvim**_
- You will need use Plug-vim to install plugins.
- If you will use this to code, use ```:checkhealth```, to see if node and python are configured
- If you want to have font ligatures, check if your terminal supports.

### Configuration

1. In your ``` ~/.config/nvim ```, copy nvim repository from here.
2. Inside your nvim use command ``` :PlugInstall ```.
3. Yet in nvim use command ```:CocInstall```.

### Main features

|   Plugin  |          Feature         |
|:---------:|:------------------------:|
|  NERDTree |    Fast file explorer    |
|  Coc.nvim |       intellisense       |
|  Dracula  |      Beautiful theme     |
|   Icons   | Icons of file extensions |
| AutoPairs | Autocomplete _( [ { ' "_ |

## Simple Terminal

Simple terminal is a **minimalist** terminal emulator. More information in https://st.suckless.org/

![2020-05-03-15:32:53-scrot](https://user-images.githubusercontent.com/53794049/80922466-ac418b00-8d53-11ea-91ba-fed6fa06e76d.png)

1. Clone st

```git clone https://git.suckless.org/st```

2. Install Harfbuzz lib (to font ligatures)

```sudo pacman -S harfbuzz```

3. So apply patch using

```git apply /path/to/patch.patch```

4. **You need to rename ```config.def.h``` to ```config.h```.**

5. Then run: 

```make && sudo make install```.

### Features
- Dracula Theme
- Scrollback
- Vim shortcuts
- Font Ligatures
- Emoji suport

## ZSH

### Getting help

If you have any problem with this configuration you can read the Plugin documentations or open an issue
