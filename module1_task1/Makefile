build:
	hugo
post:
	hugo new posts/$(POST_NAME).md && echo "---\ntitle: \"$(POST_TITLE)\"\ndate: 22023-05-04T11:04:43-07:00\ndraft: false\n---" > content/posts/$(POST_NAME).md
clean:
	cd dist && rm -r *