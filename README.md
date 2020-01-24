# Portfolio

My portfolio on GitHub Pages


## Tech Stack

* **Static site generator:** [Jekyll](https://jekyllrb.com/)
* **Configuration:** [GitHub Pages Gem](https://github.com/github/pages-gem)
* **HTML/CSS framework:** [HTML5 Boilerplate](https://html5boilerplate.com/)
* **Favicons:** [Real Favicon Generator](https://realfavicongenerator.net/)
* **Iconfont:** [Fontello](http://fontello.com/)
* **Masonry layout helper:** [Masonry](https://github.com/desandro/masonry)
* **Image preloader:** [Images Loaded](https://github.com/desandro/imagesloaded)


## Installing and Running

### Option 1: Use 🐳 Docker

You can serve and build the portfolio via Docker. This way you do not need to install any Ruby and Jekyll dependencies. If you need to install docker first, read more in the official documentation about [how to install docker](https://docs.docker.com).

Serve the site locally:
```bash
# Build the image
docker build -t portfolio-serve -f dockerfile.serve .

# Run the local server form the current directory
docker run -i --name serve -v "$PWD:/site" -p 4000:4000 portfolio-serve

# Stop the server by typing "ctrl-c"
```

Build the site:
```bash
# Build the image
docker build -t portfolio .

# Build the portfolio
docker run -i --name build -v "$PWD/_site:/site/_site" portfolio

# You will find the output in the /_site directory.
```

Remember to rebuild the image from time to time so bundler can run a fresh `bundle update` of the GitHub pages gem. 

### Option 2: Install Jekyll

If you do not want to use docker, you can install Jekyll on your development machine. Follow the [official Jekyll documentation](https://jekyllrb.com/docs/installation/) for the installation.

Note: If you run `bundler update` for the first time you might run into an error. That`s because you are using a newer version of bundler than is required by the gemlock file. Just follow the instructions of the error message on how to install the older bundler version.

Interested in setting up a new GitHub Pages Jekyll project? Head over to my Notion documentation [How to use Jekyll with GitHub Pages](https://www.notion.so/petermueller/How-to-use-Jekyll-with-GitHub-Pages-941c5d694181407eb67476dd3feb20fb)


#### Running the Site Locally

Serve your site on your localhost
```bash
bundle exec jekyll serve --host=0.0.0.0
```

Update your gems often, to receive the latest GitHub Pages gem.
```bash
bundle update
```

If you set a baseurl in the config file, serve your site locally without `baseurl` messing up your links.
```bash
bundle exec jekyll serve --baseurl ''
```