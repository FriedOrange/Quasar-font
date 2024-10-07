@rem generate intermediate UFO sources
sfd2ufo source\QuasarClassic-MASTER-100.sfd source\QuasarClassic-MASTER-100.ufo
sfd2ufo source\QuasarClassic-MASTER-600.sfd source\QuasarClassic-MASTER-600.ufo
sfd2ufo source\QuasarClassic-MASTER-900.sfd source\QuasarClassic-MASTER-900.ufo
copy source\features-100.fea source\QuasarClassic-MASTER-100.ufo\features.fea
copy source\features-900.fea source\QuasarClassic-MASTER-900.ufo\features.fea

fontforge -c "open('source\\Quasar-MASTER-100.sfd').mergeFonts('source\\QuasarClassic-MASTER-100.sfd').save('source\\temp.sfd')"
sfd2ufo source\temp.sfd source\Quasar-MASTER-100.ufo
fontforge -c "open('source\\Quasar-MASTER-600.sfd').mergeFonts('source\\QuasarClassic-MASTER-600.sfd').save('source\\temp.sfd')"
sfd2ufo source\temp.sfd source\Quasar-MASTER-600.ufo
fontforge -c "open('source\\Quasar-MASTER-900.sfd').mergeFonts('source\\QuasarClassic-MASTER-900.sfd').save('source\\temp.sfd')"
sfd2ufo source\temp.sfd source\Quasar-MASTER-900.ufo
del source\temp.sfd
copy source\features-100.fea source\Quasar-MASTER-100.ufo\features.fea
copy source\features-900.fea source\Quasar-MASTER-900.ufo\features.fea

@rem build OpenType fonts
@cd source
python %USERPROFILE%\AppData\Local\Programs\Python\Python310\Scripts\gftools-builder.py QuasarClassic.yaml
python %USERPROFILE%\AppData\Local\Programs\Python\Python310\Scripts\gftools-builder.py Quasar.yaml
@cd ..

@rem generate proof documents
@cd fonts\variable
set PYTHONUTF8=1
python %USERPROFILE%\AppData\Local\Programs\Python\Python310\Scripts\gftools-gen-html.py proof -o ..\proof Quasar[wght].ttf ..\..\fonts-classic\variable\QuasarClassic[wght].ttf
@cd ..\..