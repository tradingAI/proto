#!/bin/sh

set -e

ROOT="$GOPATH/src/github.com/tradingAI"
PROJECT_ROOT="$ROOT/tweb"
PROTO_ROOT="$ROOT/proto"
PROTO_GEN_DIR="$PROTO_ROOT/gen"

rm -rf $PROTO_GEN_DIR

for element in `ls $PROTO_ROOT`
    do  
        if [ -d $PROTO_ROOT/$element ];then 
            echo build proto $PROTO_ROOT/$element
            protoc \
                -I $PROTO_ROOT \
                --go_out=plugins=grpc:$GOPATH/src \
                $PROTO_ROOT/$element/*.proto
        fi  
    done


PROTO_GEN_GO_DIR="$PROTO_GEN_DIR/go"

for element in `ls $PROTO_GEN_GO_DIR`
    do  
        if [ -d $PROTO_GEN_GO_DIR/$element ];then
            cd $PROTO_GEN_GO_DIR/$element && rm -rf go.mod && go mod init
        fi  
    done
