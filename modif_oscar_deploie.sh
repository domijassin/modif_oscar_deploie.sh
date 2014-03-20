#! /bin/bash
#### modification oscar déploie pour oscar 3.2.2
#### version 1
sed -i.BAK "/if exist \"%programfiles%\Wpkg-GP/a \if exist \"%programfiles%\Wpkg-GP\" echo oui \ > %windir%\oscar_deploie\oui_wpkg" oscar_deploie_numero_poste.bat
exit 0

