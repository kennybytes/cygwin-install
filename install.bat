REM Install the cygwin packages that are required for apt-cyg
setup-x86_64.exe --quiet-mode --packages="subversion, tar, gawk, bzip2, git, tig"

C:
chdir C:\cygwin64\bin

bash -l -c "rm -rf ~/apt-cyg"
bash -l -c "git clone https://github.com/transcode-open/apt-cyg.git ~/apt-cyg"
bash -l -c "rm -rf /bin/apt-cyg"
bash -l -c "cp ~/apt-cyg/apt-cyg /bin/"
