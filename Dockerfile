# builder container
#   - builds the frontend app

FROM --platform=$BUILDPLATFORM zeroplusx/middleman:latest AS builder

#RUN mkdir /src

WORKDIR /src

ADD . /src

RUN bundle install

RUN /usr/local/bundle/bin/middleman build . 



# RUN gem install minitest
# RUN rm -rf /usr/share/nginx/html
# RUN ln -s /src/build /usr/share/nginx/html

##CMD ["middleman", "server"]

# # ---


# runner container
#  - nginx, to serve static built Vue app

# Use an official nginx image
FROM nginx:1.13-alpine

# COPY dist from builder container to nginx html dir
COPY --from=builder /src/build /usr/share/nginx/html

#COPY config/nginx.default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

# # No need for CMD. It'll fallback to nginx image's one
