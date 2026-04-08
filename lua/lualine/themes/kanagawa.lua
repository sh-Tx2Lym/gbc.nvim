local colors = require("kanagawa.colors").setup()
local theme  = colors.theme
local ll     = theme.lualine
local config = require("kanagawa").config

local bg_mid = config.transparent and "NONE" or ll.mid
local bg_none = "NONE"

local function section_a(accent)
    return { bg = accent, fg = theme.ui.fg_reverse, gui = "bold" }
end

local function section_b(accent)
    return { bg = bg_mid, fg = accent }
end

local function section_c()
    return { bg = bg_none, fg = theme.ui.fg_dim }
end

local kanagawa = {
    normal = {
        a = section_a(ll.normal),
        b = section_b(ll.normal),
        c = section_c(),
    },
    insert = {
        a = section_a(ll.insert),
        b = section_b(ll.insert),
        c = section_c(),
    },
    visual = {
        a = section_a(ll.visual),
        b = section_b(ll.visual),
        c = section_c(),
    },
    replace = {
        a = section_a(ll.replace),
        b = section_b(ll.replace),
        c = section_c(),
    },
    command = {
        a = section_a(ll.command),
        b = section_b(ll.command),
        c = section_c(),
    },
    terminal = {
        a = section_a(ll.terminal),
        b = section_b(ll.terminal),
        c = section_c(),
    },
    inactive = {
        a = { bg = bg_none, fg = theme.ui.nontext },
        b = { bg = bg_none, fg = theme.ui.nontext },
        c = { bg = bg_none, fg = theme.ui.nontext },
    },
}

return kanagawa
