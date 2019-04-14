# Portfolio

My portfolio on GitHub Pages

## Tech stack

* **Static site generator:** [Jekyll](https://jekyllrb.com/)
* **Configuration:** [GitHub Pages Gem](https://github.com/github/pages-gem)
* **HTML/CSS framework:** [HTML5 Boilerplate](https://html5boilerplate.com/)
* **Favicons:** [Real Favicon Generator](https://realfavicongenerator.net/)
* **Iconfont:** [Fontello](http://fontello.com/)
* **Masonry layout helper:** [Masonry](https://github.com/desandro/masonry)
* **Image preloader:** [Images Loaded](https://github.com/desandro/imagesloaded)

## Install Jekyll

Follow the [official Jekyll documentation](https://jekyllrb.com/docs/installation/macos/) for the installation.

Be careful to read it first, so you install the bundler and Jekyll gems in your home directory instead of `usr/local/bin`. Before executing gem install bundler jekyll you should add a local gem directory to `.bash_profile` file. If you do not install gems in your home directory, your bash cannot find the jekyll executable.

```bash
# Install gems in home directory
export GEM_HOME=$HOME/Gems
export PATH=$HOME/Gems/bin:$PATH
```

Note: If you run `bundler update` for the first time you might run into an error. That`s because you are using a newer version of bundler than is required by the gemlock file. Just follow the instructions of the error message on how to install the older bundler version.

Interested in setting up a new GitHub Pages Jekyll project? Head over to my Notion documentation [How to use Jekyll with GitHub Pages](https://www.notion.so/petermueller/How-to-use-Jekyll-with-GitHub-Pages-941c5d694181407eb67476dd3feb20fb)

## Useful Jekyll commands
Serve your site locally with drafts enabled
```bash
bundle exec jekyll serve --drafts
```

Serve your site on your local network
```bash
bundle exec jekyll serve --drafts --host=0.0.0.0;5B
```

<<<<<<< Updated upstream
=======
If you set a baseurl, serve your site locally without `baseurl` messing up your links.
```bash
bundle exec jekyll serve --drafts --baseurl ''
```

<<<<<<< Updated upstream
Serve your site with drafts visible
```bash
bundle exec jekyll serve --drafts
```

=======
>>>>>>> Stashed changes
>>>>>>> Stashed changes
Update your gems often, to receive the latest GitHub Pages gem.
```bash
bundle update
```