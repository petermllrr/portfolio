# Portfolio

My portfolio on GitHub Pages.

## Installing and Running

### Option 1: Use 🐳 Docker

You can serve and build the portfolio via Docker. This way you do not need to install any Ruby and Jekyll dependencies. If you need to install docker first, read more in the official documentation about [how to install docker](https://docs.docker.com).

Serve the site on localhost:
```bash

# Build the image. This can take a while but you only need to do it once.
docker build -t portfolio-serve -f Dockerfile.serve .

# Run the local server form the current directory
docker run -i --name serve -v "$PWD:/site" -p 4000:4000 portfolio-serve
```

You can access the server on `http://localhost:4000`. Stop the server by entering `ctrl-c` in the terminal window. 

Build the site:
```bash
# Build the image
docker build -t portfolio .

# Build the portfolio
docker run -i --name build -v "$PWD/_site:/site/_site" portfolio
```

You will find the output in the `/_site` directory.

Remember to rebuild the image from time to time so bundler can run a fresh `bundle update` of the GitHub pages gem. You also need to do this is you add any new dependencies in the gemfile.

### Option 2: Install Jekyll

If you do not want to use docker, you can install Jekyll on your development machine. Follow the [official Jekyll documentation](https://jekyllrb.com/docs/installation/) for the installation.

Note: If you run `bundle update` for the first time you might run into an error. That`s because you are using a newer version of bundler than is required by the gemlock file. Just follow the instructions of the error message on how to install the older bundler version.

Interested in setting up a new GitHub Pages Jekyll project? Head over to my Notion documentation [How to use Jekyll with GitHub Pages](https://www.notion.so/petermueller/How-to-use-Jekyll-with-GitHub-Pages-941c5d694181407eb67476dd3feb20fb)

On first run, install all dependencies via bundler:
```bash
bundle install
```

Update your dependencies from time to time, so you work in the same environment that GitHub Pages uses on their serverside:
```bash
bundle update
```
Serve your site on your localhost
```bash
bundle exec jekyll serve --host=0.0.0.0
```

Build the site:
```bash
bundle exec jekyll build
```

You will find the output in the `_site` directory.

If you set a baseurl in the config file, serve your site locally without `baseurl` messing up your links.
```bash
bundle exec jekyll serve --baseurl ''
```

## Tech Stack

* **Static site generator:** [Jekyll](https://jekyllrb.com/)
* **Configuration:** [GitHub Pages Gem](https://github.com/github/pages-gem)
* **HTML/CSS framework:** [HTML5 Boilerplate](https://html5boilerplate.com/)
* **Favicons:** [Real Favicon Generator](https://realfavicongenerator.net/)
* **Iconfont:** [Fontello](http://fontello.com/)
* **Masonry layout helper:** [Masonry](https://github.com/desandro/masonry)
* **Image preloader:** [Images Loaded](https://github.com/desandro/imagesloaded)