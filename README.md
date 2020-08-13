# dotfiles

## NVIM

![NeovimImage](https://user-images.githubusercontent.com/53794049/90187206-ca297d80-dd8f-11ea-95e1-1ac5266948ce.png)

![NeovimImage2](https://user-images.githubusercontent.com/53794049/90187571-63589400-dd90-11ea-85e4-a2f6cb804281.png)


### Requirements

- I use these files in **nvim**, but it should work fine in **vim** too.
- You will need to use Plug-vim to install plugins.
- If you will use this to code, use ```:checkhealth```, to see if nvim providers are correctly configured
- If you want to have font ligatures, check if your terminal supports.

### Configuration

1. In your ``` ~/.config/nvim ```, copy nvim repository from here.
2. Inside your nvim use command ``` :PlugInstall ```.
3. Yet in nvim use command ```:CocInstall```.

### Main features

|      Plugin      |           Feature          |
|:----------------:|:--------------------------:|
|   coc-explorer   |     Fast file explorer     |
|   vim-floaterm   |     Integrated terminal    |
|     vim-clap     |        Search window       |
|   vim-startify   |        Welcome page        |
|    indentLine    |      Indentation lines     |
|   editorconfig   | Read of .editorconfig file |
| vim-visual-multi |      Multiple cursors      |
|   nerdcommenter  |          Commenter         |
|    vim-airline   |         Status bar         |
|    vim-dadbod    |     Connect to database    |
|   vim-css-color  |    Highlight hexa colors   |
|     coc.nvim     |        Intellisense        |
|    auto-pairs    |  Autocomplete _( [ { ' "_  |

## Simple Terminal

Simple terminal is a **minimalist** terminal emulator. More information in https://st.suckless.org/

![2020-07-22-15:16:00-scrot](https://user-images.githubusercontent.com/53794049/90187775-ba5e6900-dd90-11ea-8ebc-a0ae7404c378.png)

![2020-07-22-15:20:45-scrot](https://user-images.githubusercontent.com/53794049/88213744-854a7500-cc2f-11ea-96c3-78a1366c3c0a.png)

#### 1. Clone st:

```git clone https://git.suckless.org/st```

#### 2. Install Harfbuzz lib (to font ligatures):

```sudo pacman -S harfbuzz```

#### 3. So apply patch using:

```git apply /path/to/patch.patch```

#### 4. You need to rename ```config.def.h``` to ```config.h```.

#### 5. Then run: 

```make && sudo make install```.

### Features
- Dracula Theme
- Scrollback
- Vim shortcuts
- Font Ligatures
- Emoji suport

## ZSH

### Getting help

If you have any problem with this configuration you can read the Plugin documentations or open an issue 😉
