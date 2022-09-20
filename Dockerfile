ARG BASE_IMAGE=ruby:3
FROM $BASE_IMAGE as base

FROM base
ADD https://github.com/mikefarah/yq/releases/download/v4.27.5/yq_linux_amd64 /usr/local/bin/yq
COPY . /usr/local/bin
RUN chmod +x /usr/local/bin/yq \
    && chmod +x /usr/local/bin/php-check \
    && chmod +x /usr/local/bin/ruby-check \
    && chmod +x /usr/local/bin/git-autotag \
    && chmod +x /usr/local/bin/git-bit-autotag

