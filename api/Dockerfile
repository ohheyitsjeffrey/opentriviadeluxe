FROM ruby:3.0
WORKDIR /trivia

ARG USERNAME=app
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Create the user
RUN groupadd --gid $USER_GID $USERNAME \
  && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME


# update path
RUN echo export PATH="/usr/local/bundle/bin:${PATH}" > /etc/profile.d/00-trivia
RUN chmod 755 /etc/profile.d/00-trivia

# setup rails and app shit
RUN gem install bundler
COPY Gemfile /trivia/Gemfile
COPY Gemfile.lock /trivia/Gemfile.lock
RUN chown -R $USERNAME:$USERNAME /trivia

RUN bundle

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh

RUN chown -R $USERNAME:$USERNAME /usr/local/bundle

# If log and tmp aren't writeable we'll have issues.  We need to ensure they are
RUN mkdir /trivia/logs && chown $USERNAME:$USERNAME /trivia/logs && chmod 664 /trivia/logs
RUN mkdir /trivia/tmp /trivia/tmp/pids /trivia/tmp/storage && chown -R $USERNAME:$USERNAME /trivia/tmp && chmod -R 664 /trivia/tmp

USER $USERNAME

ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
