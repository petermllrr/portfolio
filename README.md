# Portfolio

My portfolio on GitHub Pages.

## Installing and Running

Follow the [official Jekyll documentation](https://jekyllrb.com/docs/installation/)
for the installation procedure. 

**Note 1**: On macOS, Homebrew's gem path is different
than mentioned in the documentation:

```shell
Docs (wrong): $HOME/.gem/ruby/X.X.0/bin:$PATH

Actual: $HOME/.local/share/gem/ruby/3.0.0/bin:$PATH
```

**Note 2**: When working with Jekyll and having a Ruby version > 3.0.0, you need
to require the gem `webrick` for starting Jekyll's server. This is only
mentioned here briefly at the bottom:
[Jekyll Quickstart](https://jekyllrb.com/docs/).

**Note 3**: Sometimes `bundle update` won't work because the `gemfile.lock`
defines that an older version of bundler that was used in this repo previously.
The easiest way to resolve this is to delete the `gemfile.lock` and run
`bundle install` again to install the latest versions of all gems.

**Note 4**: On Ubuntu, you might need to remove previous Ruby installations via
`sudo apt-get remove "ruby*"` (note the asterisk).

## Keeping gems up to date

Regulary check if a new GitHub pages gem is available at
[GitHub pages: Dependency versions](https://pages.github.com/versions/) and
update the line in the `Gemfile` accordingly. Run `bundle install` to
install the new version.

After installing Ruby and Jekyll, install all dependencies:

```sh
bundle install
```

Then serve the website:

```sh
bundle exec jekyll serve
```

## Useful commands

After closing the repo, install all gems first:

```shell
bundle install
```

To update all gems, run:

```shell
bundle update
```

Serve your site on your localhost

```shell
bundle exec jekyll serve
```

Build the site. You will find the output in the `_site` directory:

```shell
bundle exec jekyll build
```

If you set a baseurl in the config file, serve your site locally without
`baseurl` messing up your links:

```shell
bundle exec jekyll serve --baseurl ''
```

## Libraries used

* **Static site generator:** [Jekyll](https://jekyllrb.com/)
* **Configuration:** [GitHub Pages Gem](https://github.com/github/pages-gem)
* **HTML/CSS framework:** [HTML5 Boilerplate](https://html5boilerplate.com/)
* **Iconfont:** [Fontello](http://fontello.com/)
* **Masonry layout helper:** [Masonry](https://github.com/desandro/masonry)
* **Image preloader:** [Images Loaded](https://github.com/desandro/imagesloaded)