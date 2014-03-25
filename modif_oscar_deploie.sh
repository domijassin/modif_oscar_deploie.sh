#! /bin/bash
#### modification oscar déploie pour oscar 3.2.2
#### version 1

#### on fait un test pour voir si le fichier existe



if [ -e /home/a/admin/perso/oscar_deploie/oscar_deploie_numero_poste.bat ] ; then
cp /home/a/admin/perso/oscar_deploie/oscar_deploie_numero_poste.bat /home/a/admin/perso/oscar_deploie/oscar_deploie_numero_poste.bat.old

sed -i "s/Wpkg-GP\\\uninstall.exe\" \"%programfiles%\\\Wpkg-GP\\\uninstall.exe\" \/S/Wpkg-GP\\\" echo oui > %windir%\\\oscar_deploie\\\oui_wpkg/" /home/a/admin/perso/oscar_deploie/oscar_deploie_numero_poste.bat

sed -i "/oui_wpkg/a \if exist \"%programfiles%\\\Wpkg-GP\\\uninstall.exe\" call \"%programfiles%\\\Wpkg-GP\\\uninstall.exe\" \/S" /home/a/admin/perso/oscar_deploie/oscar_deploie_numero_poste.bat


sed -i "/regedit \/s %windir%\\\oscar_deploie\\\oscar_samba_domaine.reg/a \copy \\\\\\\%ip_scribe%\\\admin\\\perso\\\oscar_deploie\\\oscar_var.txt \\\\\\\%ip_scribe%\\\sysprep\\\perso\\\oscar_deploie\\\\" /home/a/admin/perso/oscar_deploie/oscar_deploie_numero_poste.bat

exit 0

else

exit 0

fi
