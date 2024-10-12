set PYTHONUTF8=1
mkdir fonts\fontbakery
fontbakery check-universal -C -l PASS --html fonts\fontbakery\fontbakery-report.html fonts\variable\*.ttf fonts-classic\variable\*.ttf > fonts\fontbakery\test.log