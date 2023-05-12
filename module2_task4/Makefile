help:	## Show this help usage
	@fgrep -h "##" $(MAKEFILE_LIST) | sed -e 's/\(\:.*\#\#\)/\:\ /' | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
build:	## Generate the website from the project's source files.
	hugo
post:	## Generate a new article
	hugo new posts/$(POST_NAME).md && echo "---\ntitle: \"$(POST_TITLE)\"\ndate: 22023-05-04T11:04:43-07:00\ndraft: false\n---" > content/posts/$(POST_NAME).md
clean:	## Remove generated files or directories and can be used in a Hugo project to delete the generated site files
	rm -r dist
check:

validate: ## Verify if the html respect W3C
	-./w3c_validator.py ./dist/index.html