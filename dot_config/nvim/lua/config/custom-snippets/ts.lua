local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("typescript", {
  s("qbfield", {
    t("{ id: "), i(1, "0"),
    t(", key: \""), i(2, "key"),
    t("\", type: \""), i(3, "type"),
    t("\", label: \""), i(4, ""),
    t("\" },")
  })
})
