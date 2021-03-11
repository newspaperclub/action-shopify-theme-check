FROM linuxbrew/brew

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

LABEL version="0.1.0"
LABEL repository="https://github.com/newspaperclub/action-shopify-theme-check"
LABEL homepage="https://github.com/newspaperclub/action-shopify-theme-check"
LABEL maintainer="Newspaper Club <services@newspaperclub.com>"

RUN brew tap shopify/shopify && \
    brew install theme-check

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]