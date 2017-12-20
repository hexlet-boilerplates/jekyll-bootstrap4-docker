JEKYLL_VERSION=3.6

serve:
	docker run --rm \
	  --volume=$(PWD):/srv/jekyll \
	  -p 4000:4000 \
	  -it jekyll/jekyll:$(JEKYLL_VERSION) \
	  jekyll serve

build:
	docker run --rm \
	  --volume=$(PWD):/srv/jekyll \
	  -it jekyll/jekyll:$(JEKYLL_VERSION) \
	  jekyll build
