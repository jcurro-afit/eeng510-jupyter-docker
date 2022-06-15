FROM tensorflow/tensorflow:2.8.0-jupyter as base

# Install system libraries for python packages
# hadolint ignore=DL3008
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        ffmpeg \
        wget \
        inkscape \
        nano \
        mercurial \
        git \
        imagemagick \
        pdf2svg \
        pandoc \
        texlive-xetex \
        texlive-fonts-recommended \
        texlive-base \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*


# Install other python library requirements
WORKDIR /
COPY requirements.txt ./
RUN python3 -m pip install --no-cache-dir --upgrade pip \
    && python3 -m pip install --no-cache-dir -r requirements.txt
