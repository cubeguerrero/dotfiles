# Cuthbert' dotfiles
These are my personal configuration for my MBP 15.

## What's in it
I work mostly with Ruby, Python, JavaScript and Elixir (and some Haskell):
 - `bash_profile`
 - `env.sh` [DEPRECATED]
 - `ghci`
 - `gitconfig`
 - `gitignore`
 - `iex.exs`
 - `keysnail.js` [DEPRECATED]
 - `ruby-version` [DEPRECATED] - see `tool-versions`
 - `tmux.conf`
 - `tool-versions`
 - `vimrc`

### `bash_profile`
My `bash_profile` is fairly new, I was using `zsh` since that was recommended
when I was starting out in my software developer career. But I'm going for
simplicity, without the need for external libraries like `oh-my-zsh` or `prezto`

### `env.sh` [DECPRECATED]
This file was how I customize my `prezto` configuration before.

### `ghci`
Configuration when working with Haskell GCHI (Think irb in Ruby)

### `gitconfig`
My global git configuration

### `gitingore`
My global gitignore, built for Mac OSX systems

### `iex.exs`
Configuration for Elixir's iex. Added some colors when evaluating results.

### `keysnail.js` [DEPRECATED]
This is a configuration file for a Firefox plugin called 
(Keysnail)[https://github.com/mooz/keysnail]. I moved back using Vim, so this
file is no longer being used.

### `ruby-version`
Global configuration for [Chruby]. I'm now
using `asdf`.

### `tmux.conf`
My tmux configuration, mostly adapted from 
[Rico Sta. Cruz] configuration.

### `tool-versions`
Configuration file for [`asdf`]

### `vimrc`
My basic configuration for Vim8. Still a work in progress.



Thanks
------

**Dotfiles** © 2017, Cuthbert Guerrero. Released under the [MIT License].<br>
Authored and maintained by Cuthbert Guerrero.

> GitHub [@cubeguerrero](https://github.com/cubeguerrero) &nbsp;&middot;&nbsp;
> Twitter [@cubeguerrero](https://twitter.com/cubeguerrero)

[MIT License]: http://mit-license.org/
[`asdf`]: https://github.com/asdf-vim/asdf
[Chruby]: https://github.com/postmodern/chruby
[Rico Sta. Cruz]: https://github.com/rstacruz
