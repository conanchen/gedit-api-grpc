package com.github.conanchen.yeamore.citymanage.grpc;

import static io.grpc.MethodDescriptor.generateFullMethodName;
import static io.grpc.stub.ClientCalls.asyncBidiStreamingCall;
import static io.grpc.stub.ClientCalls.asyncClientStreamingCall;
import static io.grpc.stub.ClientCalls.asyncServerStreamingCall;
import static io.grpc.stub.ClientCalls.asyncUnaryCall;
import static io.grpc.stub.ClientCalls.blockingServerStreamingCall;
import static io.grpc.stub.ClientCalls.blockingUnaryCall;
import static io.grpc.stub.ClientCalls.futureUnaryCall;
import static io.grpc.stub.ServerCalls.asyncBidiStreamingCall;
import static io.grpc.stub.ServerCalls.asyncClientStreamingCall;
import static io.grpc.stub.ServerCalls.asyncServerStreamingCall;
import static io.grpc.stub.ServerCalls.asyncUnaryCall;
import static io.grpc.stub.ServerCalls.asyncUnimplementedStreamingCall;
import static io.grpc.stub.ServerCalls.asyncUnimplementedUnaryCall;

/**
 * <pre>
 * The hanzi service definition.
 * </pre>
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.8.0)",
    comments = "Source: manage/citymanage.proto")
public final class CityManGrpc {

  private CityManGrpc() {}

  public static final String SERVICE_NAME = "citymanage.CityMan";

  // Static method descriptors that strictly reflect the proto.
  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  @java.lang.Deprecated // Use {@link #getAddMethod()} instead. 
  public static final io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.AddRequest,
      com.github.conanchen.yeamore.citymanage.grpc.AddResponse> METHOD_ADD = getAddMethod();

  private static volatile io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.AddRequest,
      com.github.conanchen.yeamore.citymanage.grpc.AddResponse> getAddMethod;

  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  public static io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.AddRequest,
      com.github.conanchen.yeamore.citymanage.grpc.AddResponse> getAddMethod() {
    io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.AddRequest, com.github.conanchen.yeamore.citymanage.grpc.AddResponse> getAddMethod;
    if ((getAddMethod = CityManGrpc.getAddMethod) == null) {
      synchronized (CityManGrpc.class) {
        if ((getAddMethod = CityManGrpc.getAddMethod) == null) {
          CityManGrpc.getAddMethod = getAddMethod = 
              io.grpc.MethodDescriptor.<com.github.conanchen.yeamore.citymanage.grpc.AddRequest, com.github.conanchen.yeamore.citymanage.grpc.AddResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(
                  "citymanage.CityMan", "Add"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.github.conanchen.yeamore.citymanage.grpc.AddRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.github.conanchen.yeamore.citymanage.grpc.AddResponse.getDefaultInstance()))
                  .setSchemaDescriptor(new CityManMethodDescriptorSupplier("Add"))
                  .build();
          }
        }
     }
     return getAddMethod;
  }
  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  @java.lang.Deprecated // Use {@link #getListMethod()} instead. 
  public static final io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.ListRequest,
      com.github.conanchen.yeamore.citymanage.grpc.CityResponse> METHOD_LIST = getListMethod();

  private static volatile io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.ListRequest,
      com.github.conanchen.yeamore.citymanage.grpc.CityResponse> getListMethod;

  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  public static io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.ListRequest,
      com.github.conanchen.yeamore.citymanage.grpc.CityResponse> getListMethod() {
    io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.ListRequest, com.github.conanchen.yeamore.citymanage.grpc.CityResponse> getListMethod;
    if ((getListMethod = CityManGrpc.getListMethod) == null) {
      synchronized (CityManGrpc.class) {
        if ((getListMethod = CityManGrpc.getListMethod) == null) {
          CityManGrpc.getListMethod = getListMethod = 
              io.grpc.MethodDescriptor.<com.github.conanchen.yeamore.citymanage.grpc.ListRequest, com.github.conanchen.yeamore.citymanage.grpc.CityResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.SERVER_STREAMING)
              .setFullMethodName(generateFullMethodName(
                  "citymanage.CityMan", "List"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.github.conanchen.yeamore.citymanage.grpc.ListRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.github.conanchen.yeamore.citymanage.grpc.CityResponse.getDefaultInstance()))
                  .setSchemaDescriptor(new CityManMethodDescriptorSupplier("List"))
                  .build();
          }
        }
     }
     return getListMethod;
  }
  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  @java.lang.Deprecated // Use {@link #getGetMethod()} instead. 
  public static final io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.GetRequest,
      com.github.conanchen.yeamore.citymanage.grpc.CityResponse> METHOD_GET = getGetMethod();

  private static volatile io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.GetRequest,
      com.github.conanchen.yeamore.citymanage.grpc.CityResponse> getGetMethod;

  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  public static io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.GetRequest,
      com.github.conanchen.yeamore.citymanage.grpc.CityResponse> getGetMethod() {
    io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.GetRequest, com.github.conanchen.yeamore.citymanage.grpc.CityResponse> getGetMethod;
    if ((getGetMethod = CityManGrpc.getGetMethod) == null) {
      synchronized (CityManGrpc.class) {
        if ((getGetMethod = CityManGrpc.getGetMethod) == null) {
          CityManGrpc.getGetMethod = getGetMethod = 
              io.grpc.MethodDescriptor.<com.github.conanchen.yeamore.citymanage.grpc.GetRequest, com.github.conanchen.yeamore.citymanage.grpc.CityResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(
                  "citymanage.CityMan", "Get"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.github.conanchen.yeamore.citymanage.grpc.GetRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.github.conanchen.yeamore.citymanage.grpc.CityResponse.getDefaultInstance()))
                  .setSchemaDescriptor(new CityManMethodDescriptorSupplier("Get"))
                  .build();
          }
        }
     }
     return getGetMethod;
  }
  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  @java.lang.Deprecated // Use {@link #getUpsertMethod()} instead. 
  public static final io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.UpsertRequest,
      com.github.conanchen.yeamore.citymanage.grpc.UpsertResponse> METHOD_UPSERT = getUpsertMethod();

  private static volatile io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.UpsertRequest,
      com.github.conanchen.yeamore.citymanage.grpc.UpsertResponse> getUpsertMethod;

  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  public static io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.UpsertRequest,
      com.github.conanchen.yeamore.citymanage.grpc.UpsertResponse> getUpsertMethod() {
    io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.UpsertRequest, com.github.conanchen.yeamore.citymanage.grpc.UpsertResponse> getUpsertMethod;
    if ((getUpsertMethod = CityManGrpc.getUpsertMethod) == null) {
      synchronized (CityManGrpc.class) {
        if ((getUpsertMethod = CityManGrpc.getUpsertMethod) == null) {
          CityManGrpc.getUpsertMethod = getUpsertMethod = 
              io.grpc.MethodDescriptor.<com.github.conanchen.yeamore.citymanage.grpc.UpsertRequest, com.github.conanchen.yeamore.citymanage.grpc.UpsertResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(
                  "citymanage.CityMan", "Upsert"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.github.conanchen.yeamore.citymanage.grpc.UpsertRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.github.conanchen.yeamore.citymanage.grpc.UpsertResponse.getDefaultInstance()))
                  .setSchemaDescriptor(new CityManMethodDescriptorSupplier("Upsert"))
                  .build();
          }
        }
     }
     return getUpsertMethod;
  }
  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  @java.lang.Deprecated // Use {@link #getDeleteMethod()} instead. 
  public static final io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.DeleteRequest,
      com.github.conanchen.yeamore.citymanage.grpc.DeleteResponse> METHOD_DELETE = getDeleteMethod();

  private static volatile io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.DeleteRequest,
      com.github.conanchen.yeamore.citymanage.grpc.DeleteResponse> getDeleteMethod;

  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  public static io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.DeleteRequest,
      com.github.conanchen.yeamore.citymanage.grpc.DeleteResponse> getDeleteMethod() {
    io.grpc.MethodDescriptor<com.github.conanchen.yeamore.citymanage.grpc.DeleteRequest, com.github.conanchen.yeamore.citymanage.grpc.DeleteResponse> getDeleteMethod;
    if ((getDeleteMethod = CityManGrpc.getDeleteMethod) == null) {
      synchronized (CityManGrpc.class) {
        if ((getDeleteMethod = CityManGrpc.getDeleteMethod) == null) {
          CityManGrpc.getDeleteMethod = getDeleteMethod = 
              io.grpc.MethodDescriptor.<com.github.conanchen.yeamore.citymanage.grpc.DeleteRequest, com.github.conanchen.yeamore.citymanage.grpc.DeleteResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(
                  "citymanage.CityMan", "Delete"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.github.conanchen.yeamore.citymanage.grpc.DeleteRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.ProtoUtils.marshaller(
                  com.github.conanchen.yeamore.citymanage.grpc.DeleteResponse.getDefaultInstance()))
                  .setSchemaDescriptor(new CityManMethodDescriptorSupplier("Delete"))
                  .build();
          }
        }
     }
     return getDeleteMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static CityManStub newStub(io.grpc.Channel channel) {
    return new CityManStub(channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static CityManBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    return new CityManBlockingStub(channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static CityManFutureStub newFutureStub(
      io.grpc.Channel channel) {
    return new CityManFutureStub(channel);
  }

  /**
   * <pre>
   * The hanzi service definition.
   * </pre>
   */
  public static abstract class CityManImplBase implements io.grpc.BindableService {

    /**
     */
    public void add(com.github.conanchen.yeamore.citymanage.grpc.AddRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.citymanage.grpc.AddResponse> responseObserver) {
      asyncUnimplementedUnaryCall(getAddMethod(), responseObserver);
    }

    /**
     */
    public void list(com.github.conanchen.yeamore.citymanage.grpc.ListRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.citymanage.grpc.CityResponse> responseObserver) {
      asyncUnimplementedUnaryCall(getListMethod(), responseObserver);
    }

    /**
     */
    public void get(com.github.conanchen.yeamore.citymanage.grpc.GetRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.citymanage.grpc.CityResponse> responseObserver) {
      asyncUnimplementedUnaryCall(getGetMethod(), responseObserver);
    }

    /**
     */
    public void upsert(com.github.conanchen.yeamore.citymanage.grpc.UpsertRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.citymanage.grpc.UpsertResponse> responseObserver) {
      asyncUnimplementedUnaryCall(getUpsertMethod(), responseObserver);
    }

    /**
     */
    public void delete(com.github.conanchen.yeamore.citymanage.grpc.DeleteRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.citymanage.grpc.DeleteResponse> responseObserver) {
      asyncUnimplementedUnaryCall(getDeleteMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getAddMethod(),
            asyncUnaryCall(
              new MethodHandlers<
                com.github.conanchen.yeamore.citymanage.grpc.AddRequest,
                com.github.conanchen.yeamore.citymanage.grpc.AddResponse>(
                  this, METHODID_ADD)))
          .addMethod(
            getListMethod(),
            asyncServerStreamingCall(
              new MethodHandlers<
                com.github.conanchen.yeamore.citymanage.grpc.ListRequest,
                com.github.conanchen.yeamore.citymanage.grpc.CityResponse>(
                  this, METHODID_LIST)))
          .addMethod(
            getGetMethod(),
            asyncUnaryCall(
              new MethodHandlers<
                com.github.conanchen.yeamore.citymanage.grpc.GetRequest,
                com.github.conanchen.yeamore.citymanage.grpc.CityResponse>(
                  this, METHODID_GET)))
          .addMethod(
            getUpsertMethod(),
            asyncUnaryCall(
              new MethodHandlers<
                com.github.conanchen.yeamore.citymanage.grpc.UpsertRequest,
                com.github.conanchen.yeamore.citymanage.grpc.UpsertResponse>(
                  this, METHODID_UPSERT)))
          .addMethod(
            getDeleteMethod(),
            asyncUnaryCall(
              new MethodHandlers<
                com.github.conanchen.yeamore.citymanage.grpc.DeleteRequest,
                com.github.conanchen.yeamore.citymanage.grpc.DeleteResponse>(
                  this, METHODID_DELETE)))
          .build();
    }
  }

  /**
   * <pre>
   * The hanzi service definition.
   * </pre>
   */
  public static final class CityManStub extends io.grpc.stub.AbstractStub<CityManStub> {
    private CityManStub(io.grpc.Channel channel) {
      super(channel);
    }

    private CityManStub(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected CityManStub build(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      return new CityManStub(channel, callOptions);
    }

    /**
     */
    public void add(com.github.conanchen.yeamore.citymanage.grpc.AddRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.citymanage.grpc.AddResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(getAddMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void list(com.github.conanchen.yeamore.citymanage.grpc.ListRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.citymanage.grpc.CityResponse> responseObserver) {
      asyncServerStreamingCall(
          getChannel().newCall(getListMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void get(com.github.conanchen.yeamore.citymanage.grpc.GetRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.citymanage.grpc.CityResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(getGetMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void upsert(com.github.conanchen.yeamore.citymanage.grpc.UpsertRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.citymanage.grpc.UpsertResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(getUpsertMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void delete(com.github.conanchen.yeamore.citymanage.grpc.DeleteRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.citymanage.grpc.DeleteResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(getDeleteMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   * <pre>
   * The hanzi service definition.
   * </pre>
   */
  public static final class CityManBlockingStub extends io.grpc.stub.AbstractStub<CityManBlockingStub> {
    private CityManBlockingStub(io.grpc.Channel channel) {
      super(channel);
    }

    private CityManBlockingStub(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected CityManBlockingStub build(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      return new CityManBlockingStub(channel, callOptions);
    }

    /**
     */
    public com.github.conanchen.yeamore.citymanage.grpc.AddResponse add(com.github.conanchen.yeamore.citymanage.grpc.AddRequest request) {
      return blockingUnaryCall(
          getChannel(), getAddMethod(), getCallOptions(), request);
    }

    /**
     */
    public java.util.Iterator<com.github.conanchen.yeamore.citymanage.grpc.CityResponse> list(
        com.github.conanchen.yeamore.citymanage.grpc.ListRequest request) {
      return blockingServerStreamingCall(
          getChannel(), getListMethod(), getCallOptions(), request);
    }

    /**
     */
    public com.github.conanchen.yeamore.citymanage.grpc.CityResponse get(com.github.conanchen.yeamore.citymanage.grpc.GetRequest request) {
      return blockingUnaryCall(
          getChannel(), getGetMethod(), getCallOptions(), request);
    }

    /**
     */
    public com.github.conanchen.yeamore.citymanage.grpc.UpsertResponse upsert(com.github.conanchen.yeamore.citymanage.grpc.UpsertRequest request) {
      return blockingUnaryCall(
          getChannel(), getUpsertMethod(), getCallOptions(), request);
    }

    /**
     */
    public com.github.conanchen.yeamore.citymanage.grpc.DeleteResponse delete(com.github.conanchen.yeamore.citymanage.grpc.DeleteRequest request) {
      return blockingUnaryCall(
          getChannel(), getDeleteMethod(), getCallOptions(), request);
    }
  }

  /**
   * <pre>
   * The hanzi service definition.
   * </pre>
   */
  public static final class CityManFutureStub extends io.grpc.stub.AbstractStub<CityManFutureStub> {
    private CityManFutureStub(io.grpc.Channel channel) {
      super(channel);
    }

    private CityManFutureStub(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected CityManFutureStub build(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      return new CityManFutureStub(channel, callOptions);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<com.github.conanchen.yeamore.citymanage.grpc.AddResponse> add(
        com.github.conanchen.yeamore.citymanage.grpc.AddRequest request) {
      return futureUnaryCall(
          getChannel().newCall(getAddMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<com.github.conanchen.yeamore.citymanage.grpc.CityResponse> get(
        com.github.conanchen.yeamore.citymanage.grpc.GetRequest request) {
      return futureUnaryCall(
          getChannel().newCall(getGetMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<com.github.conanchen.yeamore.citymanage.grpc.UpsertResponse> upsert(
        com.github.conanchen.yeamore.citymanage.grpc.UpsertRequest request) {
      return futureUnaryCall(
          getChannel().newCall(getUpsertMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<com.github.conanchen.yeamore.citymanage.grpc.DeleteResponse> delete(
        com.github.conanchen.yeamore.citymanage.grpc.DeleteRequest request) {
      return futureUnaryCall(
          getChannel().newCall(getDeleteMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_ADD = 0;
  private static final int METHODID_LIST = 1;
  private static final int METHODID_GET = 2;
  private static final int METHODID_UPSERT = 3;
  private static final int METHODID_DELETE = 4;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final CityManImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(CityManImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_ADD:
          serviceImpl.add((com.github.conanchen.yeamore.citymanage.grpc.AddRequest) request,
              (io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.citymanage.grpc.AddResponse>) responseObserver);
          break;
        case METHODID_LIST:
          serviceImpl.list((com.github.conanchen.yeamore.citymanage.grpc.ListRequest) request,
              (io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.citymanage.grpc.CityResponse>) responseObserver);
          break;
        case METHODID_GET:
          serviceImpl.get((com.github.conanchen.yeamore.citymanage.grpc.GetRequest) request,
              (io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.citymanage.grpc.CityResponse>) responseObserver);
          break;
        case METHODID_UPSERT:
          serviceImpl.upsert((com.github.conanchen.yeamore.citymanage.grpc.UpsertRequest) request,
              (io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.citymanage.grpc.UpsertResponse>) responseObserver);
          break;
        case METHODID_DELETE:
          serviceImpl.delete((com.github.conanchen.yeamore.citymanage.grpc.DeleteRequest) request,
              (io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.citymanage.grpc.DeleteResponse>) responseObserver);
          break;
        default:
          throw new AssertionError();
      }
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public io.grpc.stub.StreamObserver<Req> invoke(
        io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        default:
          throw new AssertionError();
      }
    }
  }

  private static abstract class CityManBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoFileDescriptorSupplier, io.grpc.protobuf.ProtoServiceDescriptorSupplier {
    CityManBaseDescriptorSupplier() {}

    @java.lang.Override
    public com.google.protobuf.Descriptors.FileDescriptor getFileDescriptor() {
      return com.github.conanchen.yeamore.citymanage.grpc.CityManProto.getDescriptor();
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.ServiceDescriptor getServiceDescriptor() {
      return getFileDescriptor().findServiceByName("CityMan");
    }
  }

  private static final class CityManFileDescriptorSupplier
      extends CityManBaseDescriptorSupplier {
    CityManFileDescriptorSupplier() {}
  }

  private static final class CityManMethodDescriptorSupplier
      extends CityManBaseDescriptorSupplier
      implements io.grpc.protobuf.ProtoMethodDescriptorSupplier {
    private final String methodName;

    CityManMethodDescriptorSupplier(String methodName) {
      this.methodName = methodName;
    }

    @java.lang.Override
    public com.google.protobuf.Descriptors.MethodDescriptor getMethodDescriptor() {
      return getServiceDescriptor().findMethodByName(methodName);
    }
  }

  private static volatile io.grpc.ServiceDescriptor serviceDescriptor;

  public static io.grpc.ServiceDescriptor getServiceDescriptor() {
    io.grpc.ServiceDescriptor result = serviceDescriptor;
    if (result == null) {
      synchronized (CityManGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .setSchemaDescriptor(new CityManFileDescriptorSupplier())
              .addMethod(getAddMethod())
              .addMethod(getListMethod())
              .addMethod(getGetMethod())
              .addMethod(getUpsertMethod())
              .addMethod(getDeleteMethod())
              .build();
        }
      }
    }
    return result;
  }
}
