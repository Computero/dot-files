# dotfiles

> Dotfiles for bash, git, subl, etc.


## Install

The installation step requires the [XCode Command Line
Tools](https://developer.apple.com/downloads) (on OS X) and may overwrite existing
dotfiles in your HOME directory.

```sh
$ bash -c "$(curl -fsSL raw.github.com/kevva/dotfiles/master/bin/dotfiles)"
```


## Features

### Automatic software installation

**Homebrew formulae**:

* GNU core utilities
* [git](http://git-scm.com/)
* [ack](http://betterthangrep.com/)
* [bash-completion](http://bash-completion.alioth.debian.org/)
* [tree](http://mama.indstate.edu/users/ice/tree/)
* [wget](http://www.gnu.org/software/wget/)

**APT packages**:

* [git-core](http://git-scm.com/)
* [Google Chrome](http://google.com/chrome/browser/)
* [Spotify](http://spotify.com/)
* [Sublime Text 3](http:/sublimetext.com/3/)
* [VLC](http://videolan.org/)
* [wget](http://www.gnu.org/software/wget/)

**Node packages**:

* [duo](http://duojs.org/)
* [empty-trash](https://github.com/sindresorhus/empty-trash/)
* [gulp](http://gulpjs.com/)
* [imagemin](https://github.com/imagemin/imagemin/)
* [jscs](https://github.com/mdevils/node-jscs/)
* [jshint](http://jshint.com/)
* [trash](https://github.com/sindresorhus/trash/)

**Sublime Text packages**:

* [All Autocomplete](https://packagecontrol.io/packages/All%20Autocomplete)
* [AutoFileName](https://packagecontrol.io/packages/AutoFileName)
* [Babel](https://sublime.wbond.net/packages/babel)
* [BracketHighlighter](https://sublime.wbond.net/packages/BracketHighlighter)
* [DocBlockr](https://sublime.wbond.net/packages/DocBlockr)
* [EditorConfig](https://sublime.wbond.net/packages/EditorConfig)
* [EncodingHelper](https://sublime.wbond.net/packages/EncodingHelper)
* [GitGutter](https://sublime.wbond.net/packages/GitGutter)
* [Markdown Extended](https://sublime.wbond.net/packages/Markdown%20Extended)
* [Oceanic Next Color Scheme](https://packagecontrol.io/packages/Oceanic%20Next%20Color%20Scheme)
* [SublimeCodeIntel](https://sublime.wbond.net/packages/SublimeCodeIntel)
* [SublimeLinter](https://sublime.wbond.net/packages/SublimeLinter)
* [SublimeLinter-contrib-xo](https://sublime.wbond.net/packages/SublimeLinter-contrib-xo)
* [SublimeLinter-json](https://sublime.wbond.net/packages/SublimeLinter-json)
* [Tag](https://sublime.wbond.net/packages/Tag)
* [Theme - Spacegray](https://sublime.wbond.net/packages/Theme%20-%20Spacegray)

### Custom OS X and Ubuntu defaults

Custom OS X and Ubuntu settings can be applied during the `dotfiles` process.
They can also be applied independently by running one of the following commands:

```sh
# OS X
$ osxdefaults

# Ubuntu
$ ubuntudefaults
```

### Local configuration

Any private and custom commands should be stored in a `~/.bash_profile.local`
file. Any commands included in this file will not be under version control or
committed to a public repository. If `~/.bash_profile.local` exists, it will be
sourced for inclusion in `bash_profile`.

Here is an example `~/.bash_profile.local`:

```sh
# EDITOR export
export EDITOR="vim"

# Git credentials
# Not under version control to prevent people from
# accidentally committing with your details
GIT_AUTHOR_NAME="Kevin Martensson"
GIT_AUTHOR_EMAIL="kevva@example.com"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"

# Set the credentials (modifies ~/.gitconfig)
git config --global user.name "$GIT_AUTHOR_NAME"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

The `git/gitconfig` file is copied to `~/.gitconfig`, so any private git
configuration specified in `~/.bash_profile.local` will not be committed to
your dotfiles repository.


## License

MIT © [Kevin Mårtensson](https://github.com/kevva)
