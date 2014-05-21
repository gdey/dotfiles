# Setup the OS Variable to make selecting per OS features
#   easier.

export MACHINE_OS=$(uname -s |tr 'A-Z' 'a-z')
export MACHINE_HW=$(uname -m)

set -o vi

PATH="/usr/local/sbin:/usr/local/bin:$PATH:/Applications/AIR SDK/bin"

if [ -d ~/bin ]; then
   PATH=~/bin:$PATH
   export PATH
fi

SCRIPT_DIR=$(dirname $0)
PLATFORM_DIR=${SCRIPT_DIR}/platforms/${MACHINE_OS}

echo "We are running on ${MACHINE_OS}"
if [ -e ${PLATFORM_DIR} ]; then
  source ${PLATFORM_DIR}
else
  if [ -e ${SCRIPT_DIR}/platforms/default ]; then
     source ${SCRIPT_DIR}/platforms/default
  fi
fi

