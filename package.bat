copy fonts-classic\ttf fonts\ttf
copy fonts-classic\variable fonts\variable

mkdir fonts\webfonts
for %%f in (fonts\ttf\*.ttf) do (
	fonttools ttLib.woff2 compress -o fonts\webfonts\%%~nf.woff2 %%f
)
for %%f in (fonts\variable\*.ttf) do (
	fonttools ttLib.woff2 compress -o fonts\webfonts\%%~nf.woff2 %%f
)

del fonts\Quasar-fonts.zip
@cd fonts
"%programfiles%\7-zip\7z" a Quasar-fonts.zip ttf variable webfonts ..\OFL.txt ..\README.txt
@cd ..