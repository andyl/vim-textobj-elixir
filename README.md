# Vim text objects for elixir block structures

This Vim plugin makes text objects with various elixir block structures.
Many end-terminated blocks are parsed using regex, indentation and syntax
highlight.  This is more correct than parsing text with regex only.

## Configuration

By default this motion is mapped to 'e'.  The key mapping can be overridden by adding a line similar to this to your vimrc:

```vim
let g:vim_textobj_elixir_mapping = 'e'
```

## Usage

Elixir text objects include:
- `case`
- `cond`
- `def`
- `defimpl`
- `defmacro`
- `defmacrop`
- `defmodule`
- `defp`
- `defprotocol`
- `describe`
- `for`
- `if`
- `quote`
- `setup`
- `setup_all`
- `test`
- `unless`
- `when`
- `with`

Example:

`#\%` is the place of your cursor.

```elixir
def hoge(yo) do
  if yo do
    IO.puts "yo!"
    #\%
  end
  IO.puts "everyone!"
end
```

Typing `dae` removes whole `if` block

```elixir
def hoge(yo) do
  #\%
  IO.puts "everyone!"
end
```

or `die` removes innner `if` block.

```elixir
def hoge(yo) do
  if yo do
  #\%
  end
end
```

When a cursor places at line 6,

```elixir
def hoge(yo) do
  if yo do
    IO.puts "yo!"
  end
  IO.puts "everyone!" #\%
end
```

type `die` removes inner `def` block.

```elixir
def hoge(yo) do
end
```

This plugin requires [vim-textobj-user](https://github.com/kana/vim-textobj-user)

