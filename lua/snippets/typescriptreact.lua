local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node

return {
  s('rfc', {
    t "import React from 'react';\n",
    t 'interface ',
    i(1, 'ComponentName'),
    t 'Props {\n  ',
    i(2),
    t '\n}\n\n',
    t 'const ',
    f(function(args)
      return args[1][1]
    end, { 1 }),
    t ': React.FC<',
    f(function(args)
      return args[1][1]
    end, { 1 }),
    t 'Props> = ({ ',
    i(3),
    t ' }) => {\n',
    t '  return (\n    ',
    i(4, '<div></div>'),
    t '\n  );\n',
    t '};\n\n',
    t 'export default ',
    f(function(args)
      return args[1][1]
    end, { 1 }),
    t ';',
  }),
}
