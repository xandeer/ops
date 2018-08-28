current_dir := $(shell pwd)

deploy: nginx-update

nginx-update:
	ln -sf $(current_dir)/nginx/default.conf /etc/nginx/sites-enabled/default.conf
	systemctl restart nginx