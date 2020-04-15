# dotfiles

![Captura de Tela_20200414205327](https://user-images.githubusercontent.com/53794049/79288223-8d5e8000-7e9c-11ea-92e6-29dbb1ff83b6.png)

### Requisites

- I use these files in **nvim**, but it should work fine in **vim** too. _With exception of **Coc.nvim**_
- You will need use Plug-vim to install plugins.
- If you will use this to code, use ```:checkhealth```, to see if node and python are configured
- If you want to have font ligatures, check if your terminal supports.

### Configuration

1. In your ``` ~/.config/nvim ```, clone this repository.
2. Inside your nvim use command ``` :PlugInstall ```.
3. Yet in nvim use command ``` :CocInstall coc-tsserver coc-eslint coc-json coc-prettier coc-css ```.

### Main features

|   Plugin  |         Function         |
|:---------:|:------------------------:|
|  NERDTree |    Fast file explorer    |
|  Coc.nvim |       intellisense       |
|  Dracula  |      Beautiful theme     |
|   Icons   | Icons of file extensions |
| AutoPairs | Autocomplete _( [ { ' "_ |

### Getting help

If you have any problem with this configuration you can read the documentations of Plugins
