# Jekyll runs on ruby
FROM ruby:2.5-alpine

# Install jekyll Linux requirements.
# https://jekyllrb.com/docs/installation/ubuntu/
RUN apk add --no-cache build-base \
    gcc \
    bash \
    cmake

# Install jekyll and bundler. My repo is based on the GitHub Pages gem,
# which requires a specific bundler version. 
RUN gem install jekyll bundler:1.17.2

# Copy the Gemfile to /site and install all gems.
# The rest of the files will be added via volume, not copy.
# See docker run command in readme file.
WORKDIR /site
COPY ./Gemfile .
COPY ./Gemfile.lock .
RUN bundle install

# Copy the remaining files in the container
COPY . .

# Build the site on container start. Jekyll will put the build in /site/_site/
ENTRYPOINT bundle exec jekyll build