require("lspconfig").beancount.setup{
    -- TODO: Check how to change the path to a more consistant place accross machines
    cmd = {
       "node", 
       "/Users/shinymimiq/Developer/beancount-language-server/out/cli.js",
       "--stdio",
    },
    init_options = {
        journalFile = "~/Developer/myAccounting/FY2021.beancount",
        -- TODO: similar to the TODO about
        pythonPath = "/opt/homebrew/bin/python3",
    },
    flags = {
        -- time in millisec to debounce dichange notifications
        debounce_text_changes = 500,
    },
    on_attach = require'lsp'.common_on_attach,
}
