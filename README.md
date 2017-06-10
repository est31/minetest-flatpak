# Flatpak build files for minetest

Minetest [flatpak](http://flatpak.org/) build files.

## Installation + Running

First, get the Freedesktop platform 1.6:

```
wget https://sdk.gnome.org/keys/gnome-sdk.gpg
flatpak remote-add --user --gpg-import=gnome-sdk.gpg gnome https://sdk.gnome.org/repo/
flatpak --user install gnome org.freedesktop.Platform 1.6
```

Then, install the bundle file like:

```
wget https://github.com/est31/minetest-flatpak/releases/download/v2.0/Minetest-0.4.15.flatpak
flatpak install --user --bundle Minetest-0.4.15.flatpak
```

You can then invoke `flatpak run net.minetest.app` to run the build.

## Build it yourself (Stable minetest)

Similar to above, the first step is to get the Freedesktop platform
(and the SDK) version 1.6:


```
wget https://sdk.gnome.org/keys/gnome-sdk.gpg
flatpak remote-add --user --gpg-import=gnome-sdk.gpg gnome https://sdk.gnome.org/repo/
flatpak --user install gnome org.freedesktop.Platform 1.6
flatpak --user install gnome org.freedesktop.Sdk 1.6

```

Then, clone `minetest-flatpak`, and build it:

```
git clone https://github.com/est31/minetest-flatpak
flatpak-builder minetest-flatpak/build --repo repo minetest-flatpak/net.minetest.app.json
```
It will create a new repo in the `repo` directory (or use an existing one if `repo` already contains a flatpak repo), and put the built result inside.

If you want, you can install the app to try it:

```
flatpak --user install repo net.minetest.app
```

Or you can extract the app from the repo and create a bundle file `Minetest-0.4.15.flatpak`:

```
flatpak build-bundle repo Minetest-0.4.15.flatpak net.minetest.app

```

## Build it yourself (latest minetest from git)

Similar to above, the first step is to get the Freedesktop platform
(and the SDK) version 1.6:


```
wget https://sdk.gnome.org/keys/gnome-sdk.gpg
flatpak remote-add --user --gpg-import=gnome-sdk.gpg gnome https://sdk.gnome.org/repo/
flatpak --user install gnome org.freedesktop.Platform 1.6
flatpak --user install gnome org.freedesktop.Sdk 1.6

```

Then, clone `minetest-flatpak`, and build it:

```
git clone https://github.com/est31/minetest-flatpak
flatpak-builder minetest-flatpak/build --repo repo minetest-flatpak/net.minetest.app.git.json
```
It will create a new repo in the `repo` directory (or use an existing one if `repo` already contains a flatpak repo), and put the built result inside.

If you want, you can install the app to try it:

```
flatpak --user install repo net.minetest.app.git
```

Or you can extract the app from the repo and create a bundle file `Minetest-git.flatpak`:

```
flatpak build-bundle repo Minetest-git.flatpak net.minetest.app.git

```

## More reading

See more about how to build stuff with flatpak on their [developer page](http://flatpak.org/developer.html).

## License

All files in this repo are licensed under the [CC0 1.0 Universal (CC0 1.0) Public Domain Dedication](https://creativecommons.org/publicdomain/zero/1.0/) license
unless noted otherwise or different licenses are required due to copyleft.
