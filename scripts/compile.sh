#!/bin/sh
SCRIPT_PATH=`dirname $0`
echo "amqp-coffee Compiling coffeescript to bin/"
echo $SCRIPT_PATH

# id;

rm -rf $SCRIPT_PATH/../bin
mkdir $SCRIPT_PATH/../bin

cp -r $SCRIPT_PATH/../src $SCRIPT_PATH/../bin/

export PATH=$SCRIPT_PATH/../node_modules/coffee-script/bin:$PATH;

# compile all coffeescript files
find $SCRIPT_PATH/../bin -name "*.coffee" | xargs coffee --compile
# remove all coffeescript files
find $SCRIPT_PATH/../bin -name "*.coffee" | xargs rm
