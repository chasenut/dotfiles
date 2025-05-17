return {
    {
        "hrsh7th/cmp-nvim-lsp"
    },
    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "saadparwaiz1/cmp_luasnip",
            "rafamadriz/friendly-snippets",
        },
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            -- Set up nvim-cmp.
            local cmp = require'cmp'

            require("luasnip.loaders.from_vscode").lazy_load() --for popup windows i guess

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),
                    ['<Tab>'] = cmp.mapping(function(fallback) -- TAB can scroll completions and when aborted, TAB insets white-spaces1
                        if cmp.visible() then
                            if not cmp.get_selected_entry() then
                                -- No item selected, select the first item
                                cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
                            else
                                -- Item selected, scroll to the next item
                                cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
                            end
                        elseif require('luasnip').expand_or_jumpable() then
                            -- Expand or jump in LuaSnip if possible
                            require('luasnip').expand_or_jump()
                        else
                            -- No menu visible, no snippet to expand: insert a tab
                            fallback()
                        end
                    end, { 'i', 's' }), -- Apply to insert and select modes
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                }),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp' },
                    { name = 'luasnip' },
                }, {
                        { name = 'buffer' },
                    })
            })
        end,
    },

}
