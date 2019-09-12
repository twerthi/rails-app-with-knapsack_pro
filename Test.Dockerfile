FROM dustinvanbuskirk/cfstep-knapsack:alpha

COPY . /src

WORKDIR /src

RUN apk add --update \
  postgresql \
  && rm -rf /var/cache/apk/*

RUN bundle install