#
# bash version of .setup file coming with dim distribution
# Tested on Linux 7.3 by A.Formica
#

OS=$1
POSSOSVALUES=HP-UX,AIX,OSF1,SunOS,Solaris,LynxOS,Linux,Darwin

echo $POSSOSVALUES

echo $POSSOSVALUES | grep $OS > /dev/null

if [ $? != 0 ]; then
    echo "Unknown OS... setup failed"
    echo "Possible values are: $POSSOSVALUES"
    return 1
fi

if [ "${OS}" == "Solaris" ]; then
    path=(/usr/ccs/bin:$path)
    echo "Update path " $path
fi

if [ ! -z $DIMDIR ]; then
    echo DIMDIR is set to $DIMDIR
else
    export DIMDIR=$( cd $( dirname ${BASH_SOURCE[0]} ) && pwd )
    echo DIMDIR is set to $DIMDIR
fi

case $OS in
    HP)      export ODIR=hp;; 
    AIX) 	export ODIR=aix;;
    OSF1)	export ODIR=osf;;
    SunOS)	export ODIR=sunos;;
    Solaris) export ODIR=solaris;;
    LynxOS)  export ODIR=lynxos;;
    Linux)	export ODIR=linux;;
    Darwin)	export ODIR=darwin;;
    *)  echo "Unknown OS... setup failed"; return 1;;
esac

echo "Setting ODIR to $ODIR"

if [ "${OS}" == "Linux" ]; then
    export LD_LIBRARY_PATH=${DIMDIR}/${ODIR}:$LD_LIBRARY_PATH
fi

if [ ! -d $DIMDIR/$ODIR ]; then
   mkdir $DIMDIR/$ODIR
   echo Created Directory: $DIMDIR/$ODIR 
fi

