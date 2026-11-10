package = "gardusi-lua"
version = "0.1.0-1"
source = {
  url = "git://github.com/gardusi-gustavo/package-lua",
}
description = {
  summary = "Small, dependency-free Lua helpers for embedded automation.",
  license = "MIT",
}
dependencies = {
  "lua >= 5.4",
}
build = {
  type = "builtin",
  modules = {
    gardusi = "src/gardusi/init.lua",
    ["gardusi.string"] = "src/gardusi/string.lua",
    ["gardusi.table"] = "src/gardusi/table.lua",
  },
}
