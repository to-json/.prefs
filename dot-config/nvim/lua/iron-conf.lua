local iron = require("iron.core")
iron.setup {
  config = {
    -- Whether a repl should be discarded or not
    scratch_repl = false,
    -- Your repl definitions come here
    repl_definition = {
      sh = {
        -- Can be a table or a function that
        -- returns a table (see below)
        command = {"zsh"}
      },
      ruby = {
        scratch_repl = false,
        -- Can be a table or a function that
        -- returns a table (see below)
        command = {"bundle","exec","pry"}
      }
    },
    repl_open_cmd = require('iron.view').split.vertical.botright(50),
  },
  highlight = {
    italic = true
  },
  ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
}

