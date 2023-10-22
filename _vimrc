call plug#begin("D:\\Application\\Vim\\.vim\\plugged")
Plug 'dunstontc/vim-vscode-theme'
Plug 'vhda/verilog_systemverilog.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HonkW93/automatic-verilog'
Plug 'preservim/nerdtree'
"Plug 'Yggdroot/indentLine'
Plug 'junegunn/vim-easy-align'
"Plug 'honza/vim-snippets'
Plug 'lervag/vimtex'
Plug '907th/vim-auto-save'
call plug#end()

"autosave

let g:auto_save = 1
let g:auto_save_updatetime = 200

colorscheme janah
set guifont=YaHei_Consolas_Hybrid:h14

set number
set relativenumber
set ts=4
set shiftwidth=4
set softtabstop=4
set guifont=Consolas:h20
set showmatch
set cindent
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set mouse=a
set scrolloff=5
set foldmethod=indent
set foldlevel=99
set cursorline
set ruler
"set cursorcolumn
set wildmenu
"set autoindent
syntax enable
syntax on
set fdm=manual

"short cut
map <F3>  :NERDTreeMirror<CR>
map <C-d> :NERDTreeToggle D:\<CR>
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

set termguicolors"开启真彩色
set hlsearch"设置高亮

vnoremap // y/<c-r>"<cr>
vnoremap <C-y> "+y   "支持在Visual模式下，通过C-y复制到系统剪切板
nnoremap <C-p> "*p   "支持在normal模式下，通过C-p粘贴系统剪切板



"LaTeX配置
syntax enable
let g:tex_flavor='latex'
let g:vimtex_texcount_custom_arg=' -ch -total'
"映射VimtexCountWords！\lw 在命令模式下enter此命令可统计中英文字符的个数
au FileType tex map <buffer> <silent>  <leader>lw :VimtexCountWords!  <CR><CR>
let g:Tex_ViewRule_pdf = 'D:\Application\SumatraPDF\SumatraPDF.exe -reuse-instance -inverse-search "gvim -c \":RemoteOpen +\%l \%f\""'

" 阅读器相关的配置 包含正反向查找功能 仅供参考
let g:vimtex_view_general_viewer = 'D:\Application\SumatraPDF\SumatraPDF.exe'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'


let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-pdf',
    \ 'pdflatex'         : '-pdf',
    \ 'dvipdfex'         : '-pdfdvi',
    \ 'lualatex'         : '-lualatex',
    \ 'xelatex'          : '-xelatex',
    \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
    \ 'context (luatex)' : '-pdf -pdflatex=context',
    \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
    \}
"这里是设置latexmk工具的可选参数
let g:vimtex_compiler_latexmk = {
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'hooks' : [],
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-shell-escape',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}








