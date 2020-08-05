FROM jekyll/jekyll:latest

COPY --chown=jekyll:jekyll Gemfile Gemfile.lock ./

COPY --chown=jekyll:jekyll _site/ ./

COPY --chown=jekyll:jekyll _config.yml .

RUN jekyll build

COPY --chown=jekyll:jekyll . $APP_HOME
