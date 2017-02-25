#!/bin/bash
dpkg-deb -bZgzip projects/flex debs
dpkg-deb -bZgzip projects/xCon debs
#dpkg-deb -b Package2
#dpkg-deb -b Package3
