FROM jfloff/alpine-python

LABEL "com.github.actions.name"="pylint3-action"
LABEL version = "4"
LABEL "com.github.actions.description"="Style check your Python Codebase"
LABEL maintainer = "LakshitF <lakshit2010@gmail.com> "
LABEL "com.github.actions.icon"="award"
LABEL "com.github.actions.color"="1a75ff"
LABEL "repository"="https://github.com/LakshitF/pylint3-action.git"
LABEL "homepage"="https://github.com/LakshitF/pylint3-action"

RUN pip install --upgrade pip
RUN pip install pycodestyle


# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

