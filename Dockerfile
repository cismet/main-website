FROM nginx:1.13.5

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