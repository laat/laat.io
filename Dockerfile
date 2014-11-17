FROM nginx:latest

RUN apt-get update && apt-get install -y haskell-platform locales && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# `cabal install hakyll` requires utf-8 locale
RUN dpkg-reconfigure locales && \
    locale-gen C.UTF-8 && \
    /usr/sbin/update-locale LANG=C.UTF-8
ENV LC_ALL C.UTF-8

# install hakyll
ENV HOME /root
ENV PATH $HOME/.cabal/bin:$PATH
RUN cabal update && cabal install hakyll

WORKDIR /src
ADD . /src

RUN ghc --make site.hs
RUN ./site build
ADD nginx.conf /etc/nginx.conf
