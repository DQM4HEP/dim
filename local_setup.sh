export OS=Linux
export DIMDIR="/home/rete/soft/dim/dim_v20r16"
export ODIR=linux
export LD_LIBRARY_PATH=${DIMIDR}/${ODIR}:$LD_LIBRARY_PATH

if [ ! -d $DIMDIR/$ODIR ]; then
    mkdir $DIMDIR/$ODIR
    echo "Created directory $DIMDIR/$ODIR"
fi

alias TestServer=$DIMDIR/$ODIR/testServer
alias TestClient=$DIMDIR/$ODIR/testClient
alias Test_server=$DIMDIR/$ODIR/test_server
alias Test_client=$DIMDIR/$ODIR/test_client
alias Dns=$DIMDIR/$ODIR/dns
alias Dim_get_service=$DIMDIR/$ODIR/dim_get_service
alias Dim_send_command=$DIMDIR/$ODIR/dim_send_command
alias DimBridge=$DIMDIR/$ODIR/DimBridge
alias Did=$DIMDIR/$ODIR/did

