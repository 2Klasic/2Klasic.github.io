#!/bin/bash
dpkg-deb -bZgzip projects/flex debs
dpkg-deb -bZgzip projects/xCon debs
dpkg-deb -bZgzip projects/iSHSHit debs
dpkg-deb -bZgzip projects/CyBackup debs
dpkg-deb -bZgzip projects/BobbyMovie_2.3.0 debs
dpkg-deb -bZgzip projects/BobbyMovie_3.0.1 debs
dpkg-deb -bZgzip projects/IAPCrazy_1.6.0 debs
dpkg-deb -bZgzip projects/AeroTV_1.0 debs
dpkg-deb -bZgzip projects/AeroTV_1.0b8 debs

dpkg-deb -b Package3
