package com.github.conanchen.yeamore.usermanage.grpc;

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
    comments = "Source: manage/usermanage.proto")
public final class UserManGrpc {

  private UserManGrpc() {}

  public static final String SERVICE_NAME = "usermanage.UserMan";

  // Static method descriptors that strictly reflect the proto.
  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  @java.lang.Deprecated // Use {@link #getAddMethod()} instead. 
  public static final io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.AddRequest,
      com.github.conanchen.yeamore.usermanage.grpc.AddResponse> METHOD_ADD = getAddMethod();

  private static volatile io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.AddRequest,
      com.github.conanchen.yeamore.usermanage.grpc.AddResponse> getAddMethod;

  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  public static io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.AddRequest,
      com.github.conanchen.yeamore.usermanage.grpc.AddResponse> getAddMethod() {
    io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.AddRequest, com.github.conanchen.yeamore.usermanage.grpc.AddResponse> getAddMethod;
    if ((getAddMethod = UserManGrpc.getAddMethod) == null) {
      synchronized (UserManGrpc.class) {
        if ((getAddMethod = UserManGrpc.getAddMethod) == null) {
          UserManGrpc.getAddMethod = getAddMethod = 
              io.grpc.MethodDescriptor.<com.github.conanchen.yeamore.usermanage.grpc.AddRequest, com.github.conanchen.yeamore.usermanage.grpc.AddResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(
                  "usermanage.UserMan", "Add"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.usermanage.grpc.AddRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.usermanage.grpc.AddResponse.getDefaultInstance()))
                  .build();
          }
        }
     }
     return getAddMethod;
  }
  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  @java.lang.Deprecated // Use {@link #getListMethod()} instead. 
  public static final io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.ListRequest,
      com.github.conanchen.yeamore.usermanage.grpc.UserResponse> METHOD_LIST = getListMethod();

  private static volatile io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.ListRequest,
      com.github.conanchen.yeamore.usermanage.grpc.UserResponse> getListMethod;

  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  public static io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.ListRequest,
      com.github.conanchen.yeamore.usermanage.grpc.UserResponse> getListMethod() {
    io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.ListRequest, com.github.conanchen.yeamore.usermanage.grpc.UserResponse> getListMethod;
    if ((getListMethod = UserManGrpc.getListMethod) == null) {
      synchronized (UserManGrpc.class) {
        if ((getListMethod = UserManGrpc.getListMethod) == null) {
          UserManGrpc.getListMethod = getListMethod = 
              io.grpc.MethodDescriptor.<com.github.conanchen.yeamore.usermanage.grpc.ListRequest, com.github.conanchen.yeamore.usermanage.grpc.UserResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.SERVER_STREAMING)
              .setFullMethodName(generateFullMethodName(
                  "usermanage.UserMan", "List"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.usermanage.grpc.ListRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.usermanage.grpc.UserResponse.getDefaultInstance()))
                  .build();
          }
        }
     }
     return getListMethod;
  }
  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  @java.lang.Deprecated // Use {@link #getGetMethod()} instead. 
  public static final io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.GetRequest,
      com.github.conanchen.yeamore.usermanage.grpc.UserResponse> METHOD_GET = getGetMethod();

  private static volatile io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.GetRequest,
      com.github.conanchen.yeamore.usermanage.grpc.UserResponse> getGetMethod;

  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  public static io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.GetRequest,
      com.github.conanchen.yeamore.usermanage.grpc.UserResponse> getGetMethod() {
    io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.GetRequest, com.github.conanchen.yeamore.usermanage.grpc.UserResponse> getGetMethod;
    if ((getGetMethod = UserManGrpc.getGetMethod) == null) {
      synchronized (UserManGrpc.class) {
        if ((getGetMethod = UserManGrpc.getGetMethod) == null) {
          UserManGrpc.getGetMethod = getGetMethod = 
              io.grpc.MethodDescriptor.<com.github.conanchen.yeamore.usermanage.grpc.GetRequest, com.github.conanchen.yeamore.usermanage.grpc.UserResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(
                  "usermanage.UserMan", "Get"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.usermanage.grpc.GetRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.usermanage.grpc.UserResponse.getDefaultInstance()))
                  .build();
          }
        }
     }
     return getGetMethod;
  }
  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  @java.lang.Deprecated // Use {@link #getUpsertMethod()} instead. 
  public static final io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.UpsertRequest,
      com.github.conanchen.yeamore.usermanage.grpc.UpsertResponse> METHOD_UPSERT = getUpsertMethod();

  private static volatile io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.UpsertRequest,
      com.github.conanchen.yeamore.usermanage.grpc.UpsertResponse> getUpsertMethod;

  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  public static io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.UpsertRequest,
      com.github.conanchen.yeamore.usermanage.grpc.UpsertResponse> getUpsertMethod() {
    io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.UpsertRequest, com.github.conanchen.yeamore.usermanage.grpc.UpsertResponse> getUpsertMethod;
    if ((getUpsertMethod = UserManGrpc.getUpsertMethod) == null) {
      synchronized (UserManGrpc.class) {
        if ((getUpsertMethod = UserManGrpc.getUpsertMethod) == null) {
          UserManGrpc.getUpsertMethod = getUpsertMethod = 
              io.grpc.MethodDescriptor.<com.github.conanchen.yeamore.usermanage.grpc.UpsertRequest, com.github.conanchen.yeamore.usermanage.grpc.UpsertResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(
                  "usermanage.UserMan", "Upsert"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.usermanage.grpc.UpsertRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.usermanage.grpc.UpsertResponse.getDefaultInstance()))
                  .build();
          }
        }
     }
     return getUpsertMethod;
  }
  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  @java.lang.Deprecated // Use {@link #getDeleteMethod()} instead. 
  public static final io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.DeleteRequest,
      com.github.conanchen.yeamore.usermanage.grpc.DeleteResponse> METHOD_DELETE = getDeleteMethod();

  private static volatile io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.DeleteRequest,
      com.github.conanchen.yeamore.usermanage.grpc.DeleteResponse> getDeleteMethod;

  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  public static io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.DeleteRequest,
      com.github.conanchen.yeamore.usermanage.grpc.DeleteResponse> getDeleteMethod() {
    io.grpc.MethodDescriptor<com.github.conanchen.yeamore.usermanage.grpc.DeleteRequest, com.github.conanchen.yeamore.usermanage.grpc.DeleteResponse> getDeleteMethod;
    if ((getDeleteMethod = UserManGrpc.getDeleteMethod) == null) {
      synchronized (UserManGrpc.class) {
        if ((getDeleteMethod = UserManGrpc.getDeleteMethod) == null) {
          UserManGrpc.getDeleteMethod = getDeleteMethod = 
              io.grpc.MethodDescriptor.<com.github.conanchen.yeamore.usermanage.grpc.DeleteRequest, com.github.conanchen.yeamore.usermanage.grpc.DeleteResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(
                  "usermanage.UserMan", "Delete"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.usermanage.grpc.DeleteRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.usermanage.grpc.DeleteResponse.getDefaultInstance()))
                  .build();
          }
        }
     }
     return getDeleteMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static UserManStub newStub(io.grpc.Channel channel) {
    return new UserManStub(channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static UserManBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    return new UserManBlockingStub(channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static UserManFutureStub newFutureStub(
      io.grpc.Channel channel) {
    return new UserManFutureStub(channel);
  }

  /**
   * <pre>
   * The hanzi service definition.
   * </pre>
   */
  public static abstract class UserManImplBase implements io.grpc.BindableService {

    /**
     */
    public void add(com.github.conanchen.yeamore.usermanage.grpc.AddRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.usermanage.grpc.AddResponse> responseObserver) {
      asyncUnimplementedUnaryCall(getAddMethod(), responseObserver);
    }

    /**
     */
    public void list(com.github.conanchen.yeamore.usermanage.grpc.ListRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.usermanage.grpc.UserResponse> responseObserver) {
      asyncUnimplementedUnaryCall(getListMethod(), responseObserver);
    }

    /**
     */
    public void get(com.github.conanchen.yeamore.usermanage.grpc.GetRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.usermanage.grpc.UserResponse> responseObserver) {
      asyncUnimplementedUnaryCall(getGetMethod(), responseObserver);
    }

    /**
     */
    public void upsert(com.github.conanchen.yeamore.usermanage.grpc.UpsertRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.usermanage.grpc.UpsertResponse> responseObserver) {
      asyncUnimplementedUnaryCall(getUpsertMethod(), responseObserver);
    }

    /**
     */
    public void delete(com.github.conanchen.yeamore.usermanage.grpc.DeleteRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.usermanage.grpc.DeleteResponse> responseObserver) {
      asyncUnimplementedUnaryCall(getDeleteMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getAddMethod(),
            asyncUnaryCall(
              new MethodHandlers<
                com.github.conanchen.yeamore.usermanage.grpc.AddRequest,
                com.github.conanchen.yeamore.usermanage.grpc.AddResponse>(
                  this, METHODID_ADD)))
          .addMethod(
            getListMethod(),
            asyncServerStreamingCall(
              new MethodHandlers<
                com.github.conanchen.yeamore.usermanage.grpc.ListRequest,
                com.github.conanchen.yeamore.usermanage.grpc.UserResponse>(
                  this, METHODID_LIST)))
          .addMethod(
            getGetMethod(),
            asyncUnaryCall(
              new MethodHandlers<
                com.github.conanchen.yeamore.usermanage.grpc.GetRequest,
                com.github.conanchen.yeamore.usermanage.grpc.UserResponse>(
                  this, METHODID_GET)))
          .addMethod(
            getUpsertMethod(),
            asyncUnaryCall(
              new MethodHandlers<
                com.github.conanchen.yeamore.usermanage.grpc.UpsertRequest,
                com.github.conanchen.yeamore.usermanage.grpc.UpsertResponse>(
                  this, METHODID_UPSERT)))
          .addMethod(
            getDeleteMethod(),
            asyncUnaryCall(
              new MethodHandlers<
                com.github.conanchen.yeamore.usermanage.grpc.DeleteRequest,
                com.github.conanchen.yeamore.usermanage.grpc.DeleteResponse>(
                  this, METHODID_DELETE)))
          .build();
    }
  }

  /**
   * <pre>
   * The hanzi service definition.
   * </pre>
   */
  public static final class UserManStub extends io.grpc.stub.AbstractStub<UserManStub> {
    private UserManStub(io.grpc.Channel channel) {
      super(channel);
    }

    private UserManStub(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected UserManStub build(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      return new UserManStub(channel, callOptions);
    }

    /**
     */
    public void add(com.github.conanchen.yeamore.usermanage.grpc.AddRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.usermanage.grpc.AddResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(getAddMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void list(com.github.conanchen.yeamore.usermanage.grpc.ListRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.usermanage.grpc.UserResponse> responseObserver) {
      asyncServerStreamingCall(
          getChannel().newCall(getListMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void get(com.github.conanchen.yeamore.usermanage.grpc.GetRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.usermanage.grpc.UserResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(getGetMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void upsert(com.github.conanchen.yeamore.usermanage.grpc.UpsertRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.usermanage.grpc.UpsertResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(getUpsertMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     */
    public void delete(com.github.conanchen.yeamore.usermanage.grpc.DeleteRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.usermanage.grpc.DeleteResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(getDeleteMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   * <pre>
   * The hanzi service definition.
   * </pre>
   */
  public static final class UserManBlockingStub extends io.grpc.stub.AbstractStub<UserManBlockingStub> {
    private UserManBlockingStub(io.grpc.Channel channel) {
      super(channel);
    }

    private UserManBlockingStub(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected UserManBlockingStub build(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      return new UserManBlockingStub(channel, callOptions);
    }

    /**
     */
    public com.github.conanchen.yeamore.usermanage.grpc.AddResponse add(com.github.conanchen.yeamore.usermanage.grpc.AddRequest request) {
      return blockingUnaryCall(
          getChannel(), getAddMethod(), getCallOptions(), request);
    }

    /**
     */
    public java.util.Iterator<com.github.conanchen.yeamore.usermanage.grpc.UserResponse> list(
        com.github.conanchen.yeamore.usermanage.grpc.ListRequest request) {
      return blockingServerStreamingCall(
          getChannel(), getListMethod(), getCallOptions(), request);
    }

    /**
     */
    public com.github.conanchen.yeamore.usermanage.grpc.UserResponse get(com.github.conanchen.yeamore.usermanage.grpc.GetRequest request) {
      return blockingUnaryCall(
          getChannel(), getGetMethod(), getCallOptions(), request);
    }

    /**
     */
    public com.github.conanchen.yeamore.usermanage.grpc.UpsertResponse upsert(com.github.conanchen.yeamore.usermanage.grpc.UpsertRequest request) {
      return blockingUnaryCall(
          getChannel(), getUpsertMethod(), getCallOptions(), request);
    }

    /**
     */
    public com.github.conanchen.yeamore.usermanage.grpc.DeleteResponse delete(com.github.conanchen.yeamore.usermanage.grpc.DeleteRequest request) {
      return blockingUnaryCall(
          getChannel(), getDeleteMethod(), getCallOptions(), request);
    }
  }

  /**
   * <pre>
   * The hanzi service definition.
   * </pre>
   */
  public static final class UserManFutureStub extends io.grpc.stub.AbstractStub<UserManFutureStub> {
    private UserManFutureStub(io.grpc.Channel channel) {
      super(channel);
    }

    private UserManFutureStub(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected UserManFutureStub build(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      return new UserManFutureStub(channel, callOptions);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<com.github.conanchen.yeamore.usermanage.grpc.AddResponse> add(
        com.github.conanchen.yeamore.usermanage.grpc.AddRequest request) {
      return futureUnaryCall(
          getChannel().newCall(getAddMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<com.github.conanchen.yeamore.usermanage.grpc.UserResponse> get(
        com.github.conanchen.yeamore.usermanage.grpc.GetRequest request) {
      return futureUnaryCall(
          getChannel().newCall(getGetMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<com.github.conanchen.yeamore.usermanage.grpc.UpsertResponse> upsert(
        com.github.conanchen.yeamore.usermanage.grpc.UpsertRequest request) {
      return futureUnaryCall(
          getChannel().newCall(getUpsertMethod(), getCallOptions()), request);
    }

    /**
     */
    public com.google.common.util.concurrent.ListenableFuture<com.github.conanchen.yeamore.usermanage.grpc.DeleteResponse> delete(
        com.github.conanchen.yeamore.usermanage.grpc.DeleteRequest request) {
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
    private final UserManImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(UserManImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_ADD:
          serviceImpl.add((com.github.conanchen.yeamore.usermanage.grpc.AddRequest) request,
              (io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.usermanage.grpc.AddResponse>) responseObserver);
          break;
        case METHODID_LIST:
          serviceImpl.list((com.github.conanchen.yeamore.usermanage.grpc.ListRequest) request,
              (io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.usermanage.grpc.UserResponse>) responseObserver);
          break;
        case METHODID_GET:
          serviceImpl.get((com.github.conanchen.yeamore.usermanage.grpc.GetRequest) request,
              (io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.usermanage.grpc.UserResponse>) responseObserver);
          break;
        case METHODID_UPSERT:
          serviceImpl.upsert((com.github.conanchen.yeamore.usermanage.grpc.UpsertRequest) request,
              (io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.usermanage.grpc.UpsertResponse>) responseObserver);
          break;
        case METHODID_DELETE:
          serviceImpl.delete((com.github.conanchen.yeamore.usermanage.grpc.DeleteRequest) request,
              (io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.usermanage.grpc.DeleteResponse>) responseObserver);
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

  private static volatile io.grpc.ServiceDescriptor serviceDescriptor;

  public static io.grpc.ServiceDescriptor getServiceDescriptor() {
    io.grpc.ServiceDescriptor result = serviceDescriptor;
    if (result == null) {
      synchronized (UserManGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
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
