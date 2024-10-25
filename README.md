# Quasar

These fonts contain the complete Quikscript alphabet in its community-standard Private Use Area encoding, in addition to the Basic Latin block and a few other punctuation marks and symbols. It can be used for simple documents in English in either alphabet.

![sample image](example_v1.png)

## Software requirements

- Ensure Python and FontForge are installed, and are in your PATH environment variable (so they can be invoked from the command line).
- From the root of the repo, run the command `pip install -r requirements.txt` to install the necessary Python packages.

## Building

To build the fonts from scratch, using the provided Windows batch files, run `build.bat`; this produces the intermediate source in UFO format and then builds the final OpenType (TTF and WOFF2) fonts. If you wish, run `test.bat` to see Font Bakery's test results for the fonts.
