# iOS Asset Converter

### Description

ios-asset-converter is a shell script which exports @2x and @1x assets from @3x source files.

<pre>
VERSION: 1.0.0

USAGE:
    ./ios-asset-converter.sh ~/assets

DESCRIPTION:
    This script creates assets in @2x, @1x from @3x files

    - assets - the asset-folder, containing n @3x asset-files:
      - asset1@3x.png
      - asset2@3x.png
      - ...

AUTHOR:
    Rafael M.<github@rafaelmaeuer.de>

EXAMPLE:
    ./ios-asset-converter.sh ~/Development/Project/Assets/Export

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
        start
        process asset1
        process asset2
        process asset3
        process asset4
        process asset5
        done

### Links

* [batch resize @3x iOS image assets to @2x and @1x](https://gist.github.com/kampfgnu/db8ccbb7c1263aff257af7b50e0b9d4e)
* [Where is the convert command in macOS?](https://apple.stackexchange.com/questions/335635/where-is-the-convert-command-in-macos)

### License

This script follow MIT license.
