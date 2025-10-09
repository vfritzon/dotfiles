packadd lsp
" Enable diagnostics highlighting
let lspOpts = #{autoHighlightDiags: v:true}
autocmd User LspSetup call LspOptionsSet(lspOpts)

call LspAddServer([#{
      \    name: 'typescriptlang',
      \    filetype: ['javascript', 'typescript', 'typescriptreact'],
      \    path: '/Users/vfn/.volta/bin/typescript-language-server',
      \    args: ['--stdio'],
      \  }])

" Set omnifunc for completion
autocmd FileType rust setlocal omnifunc=lsp#complete

" Custom diagnostic sign characters
autocmd User LspSetup call LspOptionsSet(#{
      \   diagSignErrorText: '✘',
      \   diagSignWarningText: '▲',
      \   diagSignInfoText: '»',
      \   diagSignHintText: '⚑',
      \ })
