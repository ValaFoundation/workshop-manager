
build:
	meson setup build --prefix=/usr
install: 
	cd build && ninja && ninja install
uninstall: 
	cd build && ninja uninstall


translations: 
	@NAME=$$(grep -oP "project\('\K[^']+" meson.build); \
	cd build && ninja $$NAME-pot && ninja $$NAME-update-po

run: 
	cd build && ninja
	./build/src/$$(grep -oP "project\('\K[^']+" meson.build | tr '[:upper:]' '[:lower:]' | awk -F. '{print $$NF}')

build-run: clean build translations run

clean: 
	rm -rf build