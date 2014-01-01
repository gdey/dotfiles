# Setup the OS Variable to make selecting per OS features
#   easier.

export MACHINE_OS=$(uname -s |tr 'A-Z' 'a-z')
export MACHINE_HW=$(uname -m)

PATH="/usr/local/sbin:/usr/local/bin:$PATH:/Applications/AIR SDK/bin"

if [ -d ~/bin ]; then
   PATH=~/bin:$PATH
   export PATH
fi


