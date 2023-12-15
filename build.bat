@rem generate intermediate UFO sources
sfd2ufo source\QuasarOpen-MASTER-100.sfd source\QuasarOpen-MASTER-100.ufo
sfd2ufo source\QuasarOpen-MASTER-900.sfd source\QuasarOpen-MASTER-900.ufo

@rem build OpenType fonts
@cd source
python %USERPROFILE%\AppData\Local\Programs\Python\Python310\Scripts\gftools-builder.py open.yaml
@cd ..