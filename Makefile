main: nested
.PHONY: main link nested

${HOME}/.config/awesome:
	mkdir -p ${HOME}/.config/awesome

link: ${HOME}/.config/awesome
	ln -sf $(realpath rc.lua) ${HOME}/.config/awesome/rc.lua

nested: check
	xinit $(which awesome) -- /usr/bin/Xephyr :5 -once -fullscreen -ac

check: link
	awesome --check ${HOME}/.config/awesome/rc.lua

