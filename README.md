# dotfiles

## NVIM

![Captura de Tela_20200421185758](https://user-images.githubusercontent.com/53794049/79918034-052f2c00-8402-11ea-9031-b74266ebcc43.png)

### Requisites

- I use these files in **nvim**, but it should work fine in **vim** too. _With exception of **Coc.nvim**_
- You will need use Plug-vim to install plugins.
- If you will use this to code, use ```:checkhealth```, to see if node and python are configured
- If you want to have font ligatures, check if your terminal supports.

### Configuration

1. In your ``` ~/.config/nvim ```, copy nvim repository from here.
2. Inside your nvim use command ``` :PlugInstall ```.
3. Yet in nvim use command ``` :CocInstall coc-tsserver coc-eslint coc-json coc-prettier coc-css ```.

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

1. Clone st

```git clone https://git.suckless.org/st```

2. So apply patch using

```git apply /path/to/patch.patch```

3. **You need to rename ```config.def.h``` to ```config.h```.**

4. Then run: 

```make && sudo make install```.

## ZSH

### Getting help

If you have any problem with this configuration you can read the Plugin documentations or open an issue
