# Usage

```lua
local gardusi = require("gardusi")

gardusi.string.trim("  hello  ")
gardusi.string.split("a,b,c", ",")
gardusi.table.deep_merge({ a = 1 }, { b = 2 })
```

Modules are side-effect free. `require("gardusi")` only assembles the public
namespace.
