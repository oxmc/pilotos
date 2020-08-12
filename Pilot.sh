#!/bin/bash

inurl="https://github.com/oxmc/pilotos.git"
osver="0.0.1"
install="sudo git clone $inurl /main/osf && $run" 
run="/main/osf/"
progress="main/ink/"

if [ -d /main/inst/  ]; then
  zenity --info --text="Starting PilotOS v. $osver"
else
  zenity --info --width="100" --title="PilotOS install" --text="Installing PilotOS v.$osver"
  $install
  $run

fi
