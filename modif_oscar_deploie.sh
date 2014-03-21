#! /bin/bash
#### modification oscar déploie pour oscar 3.2.2
#### version 1
sed -i.BAK "/%programfiles%/a \if exist \"%programfiles%\\\Wpkg-GP\" echo oui  > %windir%\\\oscar_deploie\\\oui_wpkg" /home/a/admin/perso/oscar_deploie/oscar_deploie_numero_poste.bat

sed -i.BAK "/oui_wpkg/a \if exist \"%programfiles%\\\Wpkg-GP\\\uninstall.exe\" call \"%programfiles%\\\Wpkg-GP\\\unistall.exe\" \/S" /home/a/admin/perso/oscar_deploie/oscar_deploie_numero_poste.bat

sed -i.BAK "39d" /home/a/admin/perso/oscar_deploie/oscar_deploie_numero_poste.bat

sed -i.BAK "/regedit \/s %windir%\\\oscar_deploie\\\oscar_samba_domaine.reg/a \copy \\\\\\\%ip_scribe%\\\admin\\\perso\\\oscar_deploie\\\oscar_var.txt \\\\\\\%ipscribe%\\\sysprep\\\perso\\\oscar_deploie\\\\" /home/a/admin/perso/oscar_deploie/oscar_deploie_numero_poste.bat

exit 0
