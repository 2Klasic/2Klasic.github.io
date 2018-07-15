#!/bin/bash

echo [*] Updating..
find . -name '*.DS_Store' -type f -delete

echo [-] Cleaning up..
find debs -type f -name '*.deb' -delete
rm -r Packages.bz2

echo [+] Building Debs..
dpkg-deb -bZgzip projects/iSHSHit debs
#dpkg-deb -bZgzip projects/Old_CyBackup debs
dpkg-deb -bZgzip projects/MovieDB debs
#dpkg-deb -bZgzip projects/Satiné debs
#dpkg-deb -bZgzip projects/BobbyMovie_2.3.0 debs
#dpkg-deb -bZgzip projects/BobbyMovie_3.0.1 debs
#dpkg-deb -bZgzip projects/BobbyMovie_3.0.4 debs
#dpkg-deb -bZgzip projects/AeroTV_1.0 debs
#dpkg-deb -bZgzip projects/AeroTV_1.0b8 debs
dpkg-deb -bZgzip projects/iCapture10 debs
#dpkg-deb -bZgzip projects/Pandolife debs
dpkg-deb -bZgzip projects/extendlife debs
dpkg-deb -bZgzip projects/CyBackup_0.6 debs
dpkg-deb -bZgzip projects/iUtility4iOS debs
dpkg-deb -bZgzip projects/Savethemblobs debs
dpkg-deb -bZgzip projects/mterminal_1.4-5 debs
dpkg-deb -bZgzip projects/cybackup10_0.0.3 debs
dpkg-deb -bZgzip projects/iOS11_System debs
dpkg-deb -bZgzip projects/setuptools debs
dpkg-deb -bZgzip projects/sbutils debs
dpkg-deb -bZgzip projects/xpwn debs
dpkg-deb -bZgzip projects/kdfu debs
dpkg-deb -bZgzip projects/kloader debs
dpkg-deb -bZgzip projects/SetNonce_0.0.5-2_FINAL debs

dpkg-deb -b Package3

echo [*] Scanning Packages..
dpkg-scanpackages ./debs > Packages
bzip2 -fks Packages

echo [=] Done!
