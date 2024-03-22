@rem generate intermediate UFO sources
sfd2ufo source\QuasarOpen-MASTER-100.sfd source\QuasarOpen-MASTER-100.ufo
sfd2ufo source\QuasarOpen-MASTER-600.sfd source\QuasarOpen-MASTER-600.ufo
sfd2ufo source\QuasarOpen-MASTER-900.sfd source\QuasarOpen-MASTER-900.ufo
copy source\features.fea source\QuasarOpen-MASTER-100.ufo\features.fea
copy source\features.fea source\QuasarOpen-MASTER-900.ufo\features.fea

@rem build OpenType fonts
@cd source
python %USERPROFILE%\AppData\Local\Programs\Python\Python310\Scripts\gftools-builder.py QuasarOpen.yaml
@cd ..

@rem generate proof documents
@cd fonts\variable
set PYTHONUTF8=1
python %USERPROFILE%\AppData\Local\Programs\Python\Python310\Scripts\gftools-gen-html.py proof -o ..\proof  QuasarOpen[wght].ttf
@cd ..\..