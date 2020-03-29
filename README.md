# Proto

# Introduction

It is the repository for common Protocol Buffer files shared within the tradingAI.

# Build for Go

- Install Protocol Buffer for Go following [here](https://github.com/golang/protobuf#installation).
- Run following command after replacing `/path/to/this/repo` to the absolute path to this repository in your computer, and `xxx.proto` the actual proto you want to compile.

```
PROTO_DIR=/path/to/this/repo; protoc -I ${PROTO_DIR} ${PROTO_DIR}/xxx.proto --go_out=plugins=grpc:${PROTO_DIR}
```

After compiling, a `xxx.go` file will appear in your repo folder.

# Build for Python

- Install Protocl Buffer for Python following [here](https://github.com/google/protobuf/tree/master/python#installation).
- You need also install gRPC support for Python following [here](https://grpc.io/docs/quickstart/python.html).
- Run following command after replacing `/path/to/this/repo` to the absolute path to this repository in your computer, and `xxx.proto` the actual proto you want to compile.

```
PROTO_DIR=/path/to/this/repo; python -m grpc_tools.protoc -I $PROTO_DIR --python_out=$PROTO_DIR --grpc_python_out=$PROTO_DIR $PROTO_DIR/xxx.proto
```

After compiling, a `xxx_pb2.py` and a `xxx_pb2_grpc.py` will appear in your repo folder.

# Reference
- [protocol buffers](https://developers.google.com/protocol-buffers)
