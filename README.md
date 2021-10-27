# iOS Asset Converter

### Description

ios-asset-converter is a shell script which exports `@2x` and `@1x` assets from single or multiple (folder) `@3x` source files.

<pre>
VERSION: 1.1.0

USAGE:
    ./ios-asset-converter.sh ~/assets
    ./ios-asset-converter.sh ~/asset.png

DESCRIPTION:
    This script creates assets in @2x, @1x from @3x files

    - assets - the asset-folder, containing n @3x asset-files:
      - asset1@3x.png
      - asset2@3x.png
      - ...
</pre>

🚨 Note: bare script -> no error check or anything fancy yet -> use at own risk 🚨

### Usage

1. Clone

        git clone https://github.com/rafaelmaeuer/ios-asset-converter
        cd ios-asset-converter
        chmod +x ios-asset-converter.sh

2. Install ImageMagic (with homebrew)

        brew install imagemagick

3. Run

        device:ios-asset-converter$ ./ios-asset-converter ~/assets

        > Processing start
        > Input is a directory
        > Process asset1
        > Process asset2
        > Process asset3
        > Processing done

### Links

* [batch resize @3x iOS image assets to @2x and @1x](https://gist.github.com/kampfgnu/db8ccbb7c1263aff257af7b50e0b9d4e)
* [Where is the convert command in macOS?](https://apple.stackexchange.com/questions/335635/where-is-the-convert-command-in-macos)
* [Check if passed argument is file or directory in Bash](https://stackoverflow.com/questions/4665051/check-if-passed-argument-is-file-or-directory-in-bash/4665080)
* [Add text to end of the filename but before extension](https://unix.stackexchange.com/questions/370313/add-text-to-end-of-the-filename-but-before-extension)
* [Extract filename and extension in Bash](https://stackoverflow.com/questions/965053/extract-filename-and-extension-in-bash)
