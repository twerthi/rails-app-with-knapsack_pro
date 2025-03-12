#FROM dustinvanbuskirk/cfstep-knapsack:alpha
FROM twerthi/cfstep-knapsack

COPY . /src

WORKDIR /src

RUN bundle install

RUN bundle info json

RUN bundle info sdoc