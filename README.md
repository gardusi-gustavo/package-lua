# package-lua

Small, dependency-free Lua helpers for embedded automation and scripting.

## Layout

| Path | Holds |
| --- | --- |
| `src/gardusi/` | Lua modules |
| `spec/` | Busted tests |
| `gardusi-lua.rockspec` | LuaRocks package definition |
| `docs/` | Usage and design notes |
| `docs/issues/` | Local task queue |

## Validation

```bash
luarocks make
busted
```

## Rules

- Lua 5.4 or newer.
- No global side effects on require.
- Every public helper has a Busted test.
