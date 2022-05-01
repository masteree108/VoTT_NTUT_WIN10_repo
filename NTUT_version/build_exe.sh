# 1. if your os is windows10 please run below commit first on the anaconda enviroment
# this buiild_exe.sh that needs to setup module please as follows
# pip install pyinstaller
# note 3: chmod +x build_exe.sh
pyinstaller -F ./NTUT_version.py

#2. run below script on the WSL terminal
cp -f ./dist/NTUT_version.exe ../../../VoTT_NTUT/WIN10/NTUT/exe/NTUT_version.exe
cp -f ./dist/NTUT_version.exe ./NTUT_version.exe
rm -rf dist
rm -rf __pycache__
rm -rf build
rm *.spec
