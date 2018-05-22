# builder container
#   - builds the frontend app

FROM nginx:1.13.5 AS builder

RUN apt-get update -y 
RUN apt-get install -y curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs build-essential
RUN apt-get install -y ruby ruby-dev zlib1g-dev

RUN gem install bundler 

#RUN gem install middleman

RUN mkdir /src

WORKDIR /src

ADD . /src

RUN bundle install
RUN middleman build . 
# RUN gem install minitest
RUN rm -rf /usr/share/nginx/html
RUN ln -s /src/build /usr/share/nginx/html



# ---


# runner container
#  - nginx, to serve static built Vue app

# Use an official nginx image
FROM nginx:1.13-alpine

# COPY dist from builder container to nginx html dir
COPY --from=builder /src/build /usr/share/nginx/html

#COPY config/nginx.default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

# No need for CMD. It'll fallback to nginx image's one
