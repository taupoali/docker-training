# Use an official Ruby image as the base
FROM ruby:3.2

# Install dependencies
RUN apt-get update && apt-get install -y nodejs npm && \
    gem install bundler jekyll

# Set the working directory inside the container
WORKDIR /site

# Expose port 4000 for Jekyll
EXPOSE 4000

# Set the default command to serve Jekyll
CMD ["jekyll", "serve", "--host", "0.0.0.0"]

