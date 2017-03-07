#!/bin/bash
dpkg-deb -bZgzip projects/flex debs
dpkg-deb -bZgzip projects/xCon debs
dpkg-deb -bZgzip projects/iSHSHit debs
dpkg-deb -bZgzip projects/CyBackup debs
dpkg-deb -b Package3
