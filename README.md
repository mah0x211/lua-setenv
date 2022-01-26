# lua-setenv

[![test](https://github.com/mah0x211/lua-setenv/actions/workflows/test.yml/badge.svg)](https://github.com/mah0x211/lua-setenv/actions/workflows/test.yml)

inserts or resets the environment variable name in the current environment list.


## Installation

```
luarocks install setenv
```

## ok, err = setenv( name [, value [, overwrite]] )

change, add or deletes an environment variable.

**Parameters**

- `name:string`: the variable name.
- `value:string`: the value to set to the variable `name`.
  - if the value is `nil`, the variable `name` will be deleted.
  - if the variable `name` already exists, the value of name is not changed.
- `overwrite:boolean`: set to `true` to change the existing value to the passed `value`.

**Returns**

- `ok:boolean`: `true` on success.
- `err:string`: error message.

**Example**

```lua
local setenv = require('setenv')
setenv('HELLO', 'WORLD')
print(os.getenv('HELLO')) -- output: WORLD
```
