local function merge_tables(t1, t2)
  local t3 = t1
  for i,v in pairs(t2) do
    t3[i] = v
  end
  return t3
end
WK = require('which-key')
local window_keymaps = { s = { name = "+lsp" } }
WK.register(window_keymaps, {prefix = "<leader>"})
local function on_attach(args)
  local client = vim.lsp.get_client_by_id(args.data.client_id)
  --local client = vim.lsp.get_client_by_id(ev.id)
  local opts = { noremap = true, silent = true, buffer = args.buf }
  vim.bo[args.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

-- Mappings.
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration,
    merge_tables(opts, {desc = "go to declaration"}))
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition,
    merge_tables(opts, {desc = "go to definition"}))
  vim.keymap.set('n', 'K', vim.lsp.buf.hover,
    merge_tables(opts, {desc = "display LSP hover info"}))

  vim.keymap.set('n', '<Leader>l+', vim.lsp.buf.add_workspace_folder,
    merge_tables(opts, {desc = "add a folder to the workspace"}))
  vim.keymap.set('n', '<Leader>l-', vim.lsp.buf.remove_workspace_folder,
    merge_tables(opts, {desc = "remove a folder from the workspace"}))
  vim.keymap.set('n', '<Leader>ll', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end,
    merge_tables(opts, {desc = "list folders in the workspace"}))
  vim.keymap.set('n', '<Leader>lk', vim.lsp.buf.hover,
    merge_tables(opts, {desc = "display LSP hover info"}))
  vim.keymap.set('n', '<Leader>li', vim.lsp.buf.implementation,
    merge_tables(opts, {desc = "list implementations"}))
  vim.keymap.set('n', '<Leader>ls', vim.lsp.buf.signature_help,
    merge_tables(opts, {desc = "display signature information"}))
  vim.keymap.set('n', '<Leader>lt', vim.lsp.buf.type_definition,
    merge_tables(opts, {desc = "display type definition"}))
  vim.keymap.set('n', '<Leader>ln', vim.lsp.buf.rename,
    merge_tables(opts, {desc = "rename this symbol"}))
  vim.keymap.set('n', '<Leader>lr', vim.lsp.buf.references,
    merge_tables(opts, {desc = "show all references to this symbol"}))
  vim.keymap.set('n', '<Leader>le', vim.diagnostic.open_float,
    merge_tables(opts, {desc = "show diagnostics"}))
  vim.keymap.set('n', '<Leader>la', vim.lsp.buf.code_action,
    merge_tables(opts, {desc = "show code actions"}))
  vim.keymap.set("n", '<Leader>lf', vim.lsp.buf.format,
    merge_tables(opts, {desc = "format buffer"}))
-- Set autocommands conditional on server_capabilities
  if client and client.server_capabilities.documentHighlightProvider then
    vim.api.nvim_exec([[
    hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
    hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
    hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
    augroup lsp_document_highlight
      autocmd! * <buffer>
      autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
      autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
    augroup END
    ]], false)
  end
end
local nvim_lsp = require('lspconfig')
local servers = { "solargraph", -- ruby
                  "jedi_language_server", --python
                  "ruff_lsp", --also python
                  "crystalline", --crystal
                  "clojure_lsp",
                  "gopls",
                  "clangd", --c, cpp, llvm
                  "gdscript", --godot
                  "zls", --zig
                  "tsserver",
                  "yamlls",
                  "terraformls",
                  "puppet",
                  "bashls",
                  "java_language_server"}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup { }
end

require'lspconfig'.elixirls.setup{
    cmd = { "elixir-ls" };
}

nvim_lsp["lua_ls"].setup { settings = {
    Lua = {
      diagnostics = {
        globals = {"vim", "hs"}
      },
      workspace = {
        library = {
            [vim.fn.expand('$VIMRUNTIME/lua')] = true,
            [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
            ['/Applications/Hammerspoon.app/Contents/Resources/extensions/hs/'] = true,
        },
      }
    }
  }
};

nvim_lsp["java_language_server"].setup { cmd = { "/Users/jaesaxon/tools/java-language-server/dist/lang_server_mac.sh" } }
nvim_lsp["gopls"].setup { settings = { gopls = { gofumpt = true}}}

-- local rt = require("rust-tools")
--
-- rt.setup({
--   server = {
--     settings = {
--       ['rust-analyzer'] = {
--         cargo = {
--           autoReload = true,
--           checkOnSave = {
--             command = "clippy",
--           },
--         }
--       }
--     },
--     on_attach = function(_, bufnr)
--       -- Hover actions
--       vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
--       -- Code action groups
--       vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
--     end,
--   },
-- })

vim.api.nvim_create_autocmd("LspAttach", {
  callback = on_attach })
