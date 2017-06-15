echo "MY VIMRC LOADED"                                          
set tabstop=4                                                   
set softtabstop=4                                               
set expandtab                                                   
set shiftwidth=4                                                
set smarttab                                                    
set autoindent                                                  
                                                                
set number                                                      
set ruler                                                       
                                                                
syntax enable                                                   
                                                                
try                                                             
    colorscheme desert                                          
catch                                                           
endtry                                                          
                                                                
set background=dark                                             
                                                                
set nobackup                                                    
set nowb                                                        
set noswapfile                                                  
                                                                
set incsearch                                                   
set ignorecase                                                  
                                                                
" Remove tailing white space                                    
fun! RemoveWhiteSpace()                                         
    let l:save = winsaveview()                                  
    %s/\s\+$//e                                                 
    call winrestview(l:save)                                    
endfun                                                          
                                                                
" For Makefile Use Hard Tab                                     
autocmd FileType make set noexpandtab shiftwidth=4 softtabstop=0
