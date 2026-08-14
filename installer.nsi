LoadLanguageFile "${NSISDIR}/Contrib/Language files/French.nlf"

; The name of the installer
Name "Cave Story+ Patch FR"

; The file to write
OutFile "./cspfrpatch.exe"

; The default installation directory
InstallDir "$PROGRAMFILES/Steam/steamapps/common/Cave Story+"
XPStyle off

;--------------------------------

; Pages
Page directory

; Checks if CaveStory+.exe is here
Section
	IfFileExists $INSTDIR/CaveStory+.exe exists notexists
	notexists:
		MessageBox MB_OK "CaveStory+.exe n'a pas été trouvé. Relancez l'installateur et assurez-vous d'avoir bien choisi le répertoire d'installation."
		Quit
	exists:
SectionEnd

; Warns the user about the files replaced
Section		
	MessageBox MB_OKCANCEL "ATTENTION: Le patch va remplacer certains fichiers du jeu. Pour rétablir le jeu en anglais, réinstallez-le. (ou vérifiez l'intégrité des fichiers du jeu avec Steam dans les paramètres du jeu) Cliquez sur OK pour installer le patch. Sinon, cliquez sur ANNULER pour quitter l'installation." IDOK next
		Quit
	next:
SectionEnd

Page instfiles

;--------------------------------

; Install patch
Section
  
  SetOutPath $INSTDIR
  File "patch\*.txt"
  SetOutPath "$INSTDIR\data\base"
  Rename "*.tsc" "*.tsc.old"
  Rename "*.tbl" "*.tbl.old"
  File "patch\data\base\*.tsc"
  File "patch\data\base\*.tbl"
  SetOutPath "$INSTDIR\data\base\Stage"
  Rename "*.tsc" "*.tsc.old"
  File "patch\data\base\Stage\*.tsc"
  SetOutPath "$INSTDIR\data\CurlyStory\mod"
  Rename "*.tsc" "*.tsc.old"
  File "patch\data\CurlyStory\mod\*.tsc"
  SetOutPath "$INSTDIR\data\CurlyStory\mod\Stage"
  Rename "*.tsc" "*.tsc.old"
  File "patch\data\CurlyStory\mod\Stage\*.tsc"
  
SectionEnd

