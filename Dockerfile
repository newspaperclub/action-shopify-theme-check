FROM linuxbrew/brew

LABEL version="0.1.0"
LABEL repository="https://github.com/newspaperclub/action-shopify-theme-check"
LABEL homepage="https://github.com/newspaperclub/action-shopify-theme-check"
LABEL maintainer="Newspaper Club <services@newspaperclub.com>"

RUN brew tap shopify/shopify && \
    brew install theme-check

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]