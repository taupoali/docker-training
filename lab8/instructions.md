# Instructions

The original exercise made use of bretfisher/jekyll-serve image. However this image is old and has many deprecated Ruby gems. 

Instead we will launch using hodei/jekyll-serve which has been updated to newer version of Jekyll and dependent gems like Kramdown.

docker run -d -p 8080:4000 -v $(pwd):/site hodei/jekyll-serve


Any problems you can launch with -it --entrypoint /bin/bash to get interactive session with the container.
