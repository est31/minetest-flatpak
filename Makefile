all:
	rm -rf minetest-stable
	flatpak-builder --repo=repo --ccache minetest-stable net.minetest.app.json
	flatpak build-bundle repo Minetest-0.4.15.flatpak net.minetest.app
clean:
	rm -rf build repo minetest-stable *.flatpak .flatpak-builder
install:
	flatpak install --user --bundle Minetest-0.4.15.flatpak
uninstall:
	flatpak uninstall --user net.minetest.app
