FROM manimcommunity/manim:v0.18.0

# Use root for installation processes
USER root

# Install Jupyter Notebook without using cache
RUN pip install notebook

# Copy requirements.txt file
COPY requirements.txt /tmp/

# Display the contents of requirements.txt
RUN cat /tmp/requirements.txt

# Install dependencies from requirements.txt file without using cache
RUN pip install -r /tmp/requirements.txt

COPY . /interactive-ml-book.github.io

WORKDIR /interactive-ml-book.github.io/docs

ARG NB_USER=manimuser

USER ${NB_USER}

COPY --chown=manimuser:manimuser . /interactive-ml-book.github.io
# COPY --chown=manimuser:manimuser . /manim


