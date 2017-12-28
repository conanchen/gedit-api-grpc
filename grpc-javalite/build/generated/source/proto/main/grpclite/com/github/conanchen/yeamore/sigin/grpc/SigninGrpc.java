package com.github.conanchen.yeamore.sigin.grpc;

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
 */
@javax.annotation.Generated(
    value = "by gRPC proto compiler (version 1.8.0)",
    comments = "Source: signin/signin.proto")
public final class SigninGrpc {

  private SigninGrpc() {}

  public static final String SERVICE_NAME = "signin.Signin";

  // Static method descriptors that strictly reflect the proto.
  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  @java.lang.Deprecated // Use {@link #getQQSigninMethod()} instead. 
  public static final io.grpc.MethodDescriptor<com.github.conanchen.yeamore.sigin.grpc.QQSigninRequest,
      com.github.conanchen.yeamore.sigin.grpc.SigninResponse> METHOD_QQSIGNIN = getQQSigninMethod();

  private static volatile io.grpc.MethodDescriptor<com.github.conanchen.yeamore.sigin.grpc.QQSigninRequest,
      com.github.conanchen.yeamore.sigin.grpc.SigninResponse> getQQSigninMethod;

  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  public static io.grpc.MethodDescriptor<com.github.conanchen.yeamore.sigin.grpc.QQSigninRequest,
      com.github.conanchen.yeamore.sigin.grpc.SigninResponse> getQQSigninMethod() {
    io.grpc.MethodDescriptor<com.github.conanchen.yeamore.sigin.grpc.QQSigninRequest, com.github.conanchen.yeamore.sigin.grpc.SigninResponse> getQQSigninMethod;
    if ((getQQSigninMethod = SigninGrpc.getQQSigninMethod) == null) {
      synchronized (SigninGrpc.class) {
        if ((getQQSigninMethod = SigninGrpc.getQQSigninMethod) == null) {
          SigninGrpc.getQQSigninMethod = getQQSigninMethod = 
              io.grpc.MethodDescriptor.<com.github.conanchen.yeamore.sigin.grpc.QQSigninRequest, com.github.conanchen.yeamore.sigin.grpc.SigninResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(
                  "signin.Signin", "QQSignin"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.sigin.grpc.QQSigninRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.sigin.grpc.SigninResponse.getDefaultInstance()))
                  .build();
          }
        }
     }
     return getQQSigninMethod;
  }
  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  @java.lang.Deprecated // Use {@link #getWXSigninMethod()} instead. 
  public static final io.grpc.MethodDescriptor<com.github.conanchen.yeamore.sigin.grpc.WXSigninRequest,
      com.github.conanchen.yeamore.sigin.grpc.SigninResponse> METHOD_WXSIGNIN = getWXSigninMethod();

  private static volatile io.grpc.MethodDescriptor<com.github.conanchen.yeamore.sigin.grpc.WXSigninRequest,
      com.github.conanchen.yeamore.sigin.grpc.SigninResponse> getWXSigninMethod;

  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  public static io.grpc.MethodDescriptor<com.github.conanchen.yeamore.sigin.grpc.WXSigninRequest,
      com.github.conanchen.yeamore.sigin.grpc.SigninResponse> getWXSigninMethod() {
    io.grpc.MethodDescriptor<com.github.conanchen.yeamore.sigin.grpc.WXSigninRequest, com.github.conanchen.yeamore.sigin.grpc.SigninResponse> getWXSigninMethod;
    if ((getWXSigninMethod = SigninGrpc.getWXSigninMethod) == null) {
      synchronized (SigninGrpc.class) {
        if ((getWXSigninMethod = SigninGrpc.getWXSigninMethod) == null) {
          SigninGrpc.getWXSigninMethod = getWXSigninMethod = 
              io.grpc.MethodDescriptor.<com.github.conanchen.yeamore.sigin.grpc.WXSigninRequest, com.github.conanchen.yeamore.sigin.grpc.SigninResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(
                  "signin.Signin", "WXSignin"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.sigin.grpc.WXSigninRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.sigin.grpc.SigninResponse.getDefaultInstance()))
                  .build();
          }
        }
     }
     return getWXSigninMethod;
  }
  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  @java.lang.Deprecated // Use {@link #getWBSigninMethod()} instead. 
  public static final io.grpc.MethodDescriptor<com.github.conanchen.yeamore.sigin.grpc.WBSigninRequest,
      com.github.conanchen.yeamore.sigin.grpc.SigninResponse> METHOD_WBSIGNIN = getWBSigninMethod();

  private static volatile io.grpc.MethodDescriptor<com.github.conanchen.yeamore.sigin.grpc.WBSigninRequest,
      com.github.conanchen.yeamore.sigin.grpc.SigninResponse> getWBSigninMethod;

  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  public static io.grpc.MethodDescriptor<com.github.conanchen.yeamore.sigin.grpc.WBSigninRequest,
      com.github.conanchen.yeamore.sigin.grpc.SigninResponse> getWBSigninMethod() {
    io.grpc.MethodDescriptor<com.github.conanchen.yeamore.sigin.grpc.WBSigninRequest, com.github.conanchen.yeamore.sigin.grpc.SigninResponse> getWBSigninMethod;
    if ((getWBSigninMethod = SigninGrpc.getWBSigninMethod) == null) {
      synchronized (SigninGrpc.class) {
        if ((getWBSigninMethod = SigninGrpc.getWBSigninMethod) == null) {
          SigninGrpc.getWBSigninMethod = getWBSigninMethod = 
              io.grpc.MethodDescriptor.<com.github.conanchen.yeamore.sigin.grpc.WBSigninRequest, com.github.conanchen.yeamore.sigin.grpc.SigninResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(
                  "signin.Signin", "WBSignin"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.sigin.grpc.WBSigninRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.sigin.grpc.SigninResponse.getDefaultInstance()))
                  .build();
          }
        }
     }
     return getWBSigninMethod;
  }
  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  @java.lang.Deprecated // Use {@link #getLocalSigninMethod()} instead. 
  public static final io.grpc.MethodDescriptor<com.github.conanchen.yeamore.sigin.grpc.LocalSigninRequest,
      com.github.conanchen.yeamore.sigin.grpc.SigninResponse> METHOD_LOCAL_SIGNIN = getLocalSigninMethod();

  private static volatile io.grpc.MethodDescriptor<com.github.conanchen.yeamore.sigin.grpc.LocalSigninRequest,
      com.github.conanchen.yeamore.sigin.grpc.SigninResponse> getLocalSigninMethod;

  @io.grpc.ExperimentalApi("https://github.com/grpc/grpc-java/issues/1901")
  public static io.grpc.MethodDescriptor<com.github.conanchen.yeamore.sigin.grpc.LocalSigninRequest,
      com.github.conanchen.yeamore.sigin.grpc.SigninResponse> getLocalSigninMethod() {
    io.grpc.MethodDescriptor<com.github.conanchen.yeamore.sigin.grpc.LocalSigninRequest, com.github.conanchen.yeamore.sigin.grpc.SigninResponse> getLocalSigninMethod;
    if ((getLocalSigninMethod = SigninGrpc.getLocalSigninMethod) == null) {
      synchronized (SigninGrpc.class) {
        if ((getLocalSigninMethod = SigninGrpc.getLocalSigninMethod) == null) {
          SigninGrpc.getLocalSigninMethod = getLocalSigninMethod = 
              io.grpc.MethodDescriptor.<com.github.conanchen.yeamore.sigin.grpc.LocalSigninRequest, com.github.conanchen.yeamore.sigin.grpc.SigninResponse>newBuilder()
              .setType(io.grpc.MethodDescriptor.MethodType.UNARY)
              .setFullMethodName(generateFullMethodName(
                  "signin.Signin", "LocalSignin"))
              .setSampledToLocalTracing(true)
              .setRequestMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.sigin.grpc.LocalSigninRequest.getDefaultInstance()))
              .setResponseMarshaller(io.grpc.protobuf.lite.ProtoLiteUtils.marshaller(
                  com.github.conanchen.yeamore.sigin.grpc.SigninResponse.getDefaultInstance()))
                  .build();
          }
        }
     }
     return getLocalSigninMethod;
  }

  /**
   * Creates a new async stub that supports all call types for the service
   */
  public static SigninStub newStub(io.grpc.Channel channel) {
    return new SigninStub(channel);
  }

  /**
   * Creates a new blocking-style stub that supports unary and streaming output calls on the service
   */
  public static SigninBlockingStub newBlockingStub(
      io.grpc.Channel channel) {
    return new SigninBlockingStub(channel);
  }

  /**
   * Creates a new ListenableFuture-style stub that supports unary calls on the service
   */
  public static SigninFutureStub newFutureStub(
      io.grpc.Channel channel) {
    return new SigninFutureStub(channel);
  }

  /**
   */
  public static abstract class SigninImplBase implements io.grpc.BindableService {

    /**
     * <pre>
     *qq
     * </pre>
     */
    public void qQSignin(com.github.conanchen.yeamore.sigin.grpc.QQSigninRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.sigin.grpc.SigninResponse> responseObserver) {
      asyncUnimplementedUnaryCall(getQQSigninMethod(), responseObserver);
    }

    /**
     * <pre>
     * wechat
     * </pre>
     */
    public void wXSignin(com.github.conanchen.yeamore.sigin.grpc.WXSigninRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.sigin.grpc.SigninResponse> responseObserver) {
      asyncUnimplementedUnaryCall(getWXSigninMethod(), responseObserver);
    }

    /**
     * <pre>
     * weibo
     * </pre>
     */
    public void wBSignin(com.github.conanchen.yeamore.sigin.grpc.WBSigninRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.sigin.grpc.SigninResponse> responseObserver) {
      asyncUnimplementedUnaryCall(getWBSigninMethod(), responseObserver);
    }

    /**
     * <pre>
     * local
     * </pre>
     */
    public void localSignin(com.github.conanchen.yeamore.sigin.grpc.LocalSigninRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.sigin.grpc.SigninResponse> responseObserver) {
      asyncUnimplementedUnaryCall(getLocalSigninMethod(), responseObserver);
    }

    @java.lang.Override public final io.grpc.ServerServiceDefinition bindService() {
      return io.grpc.ServerServiceDefinition.builder(getServiceDescriptor())
          .addMethod(
            getQQSigninMethod(),
            asyncUnaryCall(
              new MethodHandlers<
                com.github.conanchen.yeamore.sigin.grpc.QQSigninRequest,
                com.github.conanchen.yeamore.sigin.grpc.SigninResponse>(
                  this, METHODID_QQSIGNIN)))
          .addMethod(
            getWXSigninMethod(),
            asyncUnaryCall(
              new MethodHandlers<
                com.github.conanchen.yeamore.sigin.grpc.WXSigninRequest,
                com.github.conanchen.yeamore.sigin.grpc.SigninResponse>(
                  this, METHODID_WXSIGNIN)))
          .addMethod(
            getWBSigninMethod(),
            asyncUnaryCall(
              new MethodHandlers<
                com.github.conanchen.yeamore.sigin.grpc.WBSigninRequest,
                com.github.conanchen.yeamore.sigin.grpc.SigninResponse>(
                  this, METHODID_WBSIGNIN)))
          .addMethod(
            getLocalSigninMethod(),
            asyncUnaryCall(
              new MethodHandlers<
                com.github.conanchen.yeamore.sigin.grpc.LocalSigninRequest,
                com.github.conanchen.yeamore.sigin.grpc.SigninResponse>(
                  this, METHODID_LOCAL_SIGNIN)))
          .build();
    }
  }

  /**
   */
  public static final class SigninStub extends io.grpc.stub.AbstractStub<SigninStub> {
    private SigninStub(io.grpc.Channel channel) {
      super(channel);
    }

    private SigninStub(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected SigninStub build(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      return new SigninStub(channel, callOptions);
    }

    /**
     * <pre>
     *qq
     * </pre>
     */
    public void qQSignin(com.github.conanchen.yeamore.sigin.grpc.QQSigninRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.sigin.grpc.SigninResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(getQQSigninMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * wechat
     * </pre>
     */
    public void wXSignin(com.github.conanchen.yeamore.sigin.grpc.WXSigninRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.sigin.grpc.SigninResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(getWXSigninMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * weibo
     * </pre>
     */
    public void wBSignin(com.github.conanchen.yeamore.sigin.grpc.WBSigninRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.sigin.grpc.SigninResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(getWBSigninMethod(), getCallOptions()), request, responseObserver);
    }

    /**
     * <pre>
     * local
     * </pre>
     */
    public void localSignin(com.github.conanchen.yeamore.sigin.grpc.LocalSigninRequest request,
        io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.sigin.grpc.SigninResponse> responseObserver) {
      asyncUnaryCall(
          getChannel().newCall(getLocalSigninMethod(), getCallOptions()), request, responseObserver);
    }
  }

  /**
   */
  public static final class SigninBlockingStub extends io.grpc.stub.AbstractStub<SigninBlockingStub> {
    private SigninBlockingStub(io.grpc.Channel channel) {
      super(channel);
    }

    private SigninBlockingStub(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected SigninBlockingStub build(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      return new SigninBlockingStub(channel, callOptions);
    }

    /**
     * <pre>
     *qq
     * </pre>
     */
    public com.github.conanchen.yeamore.sigin.grpc.SigninResponse qQSignin(com.github.conanchen.yeamore.sigin.grpc.QQSigninRequest request) {
      return blockingUnaryCall(
          getChannel(), getQQSigninMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * wechat
     * </pre>
     */
    public com.github.conanchen.yeamore.sigin.grpc.SigninResponse wXSignin(com.github.conanchen.yeamore.sigin.grpc.WXSigninRequest request) {
      return blockingUnaryCall(
          getChannel(), getWXSigninMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * weibo
     * </pre>
     */
    public com.github.conanchen.yeamore.sigin.grpc.SigninResponse wBSignin(com.github.conanchen.yeamore.sigin.grpc.WBSigninRequest request) {
      return blockingUnaryCall(
          getChannel(), getWBSigninMethod(), getCallOptions(), request);
    }

    /**
     * <pre>
     * local
     * </pre>
     */
    public com.github.conanchen.yeamore.sigin.grpc.SigninResponse localSignin(com.github.conanchen.yeamore.sigin.grpc.LocalSigninRequest request) {
      return blockingUnaryCall(
          getChannel(), getLocalSigninMethod(), getCallOptions(), request);
    }
  }

  /**
   */
  public static final class SigninFutureStub extends io.grpc.stub.AbstractStub<SigninFutureStub> {
    private SigninFutureStub(io.grpc.Channel channel) {
      super(channel);
    }

    private SigninFutureStub(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      super(channel, callOptions);
    }

    @java.lang.Override
    protected SigninFutureStub build(io.grpc.Channel channel,
        io.grpc.CallOptions callOptions) {
      return new SigninFutureStub(channel, callOptions);
    }

    /**
     * <pre>
     *qq
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<com.github.conanchen.yeamore.sigin.grpc.SigninResponse> qQSignin(
        com.github.conanchen.yeamore.sigin.grpc.QQSigninRequest request) {
      return futureUnaryCall(
          getChannel().newCall(getQQSigninMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * wechat
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<com.github.conanchen.yeamore.sigin.grpc.SigninResponse> wXSignin(
        com.github.conanchen.yeamore.sigin.grpc.WXSigninRequest request) {
      return futureUnaryCall(
          getChannel().newCall(getWXSigninMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * weibo
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<com.github.conanchen.yeamore.sigin.grpc.SigninResponse> wBSignin(
        com.github.conanchen.yeamore.sigin.grpc.WBSigninRequest request) {
      return futureUnaryCall(
          getChannel().newCall(getWBSigninMethod(), getCallOptions()), request);
    }

    /**
     * <pre>
     * local
     * </pre>
     */
    public com.google.common.util.concurrent.ListenableFuture<com.github.conanchen.yeamore.sigin.grpc.SigninResponse> localSignin(
        com.github.conanchen.yeamore.sigin.grpc.LocalSigninRequest request) {
      return futureUnaryCall(
          getChannel().newCall(getLocalSigninMethod(), getCallOptions()), request);
    }
  }

  private static final int METHODID_QQSIGNIN = 0;
  private static final int METHODID_WXSIGNIN = 1;
  private static final int METHODID_WBSIGNIN = 2;
  private static final int METHODID_LOCAL_SIGNIN = 3;

  private static final class MethodHandlers<Req, Resp> implements
      io.grpc.stub.ServerCalls.UnaryMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ServerStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.ClientStreamingMethod<Req, Resp>,
      io.grpc.stub.ServerCalls.BidiStreamingMethod<Req, Resp> {
    private final SigninImplBase serviceImpl;
    private final int methodId;

    MethodHandlers(SigninImplBase serviceImpl, int methodId) {
      this.serviceImpl = serviceImpl;
      this.methodId = methodId;
    }

    @java.lang.Override
    @java.lang.SuppressWarnings("unchecked")
    public void invoke(Req request, io.grpc.stub.StreamObserver<Resp> responseObserver) {
      switch (methodId) {
        case METHODID_QQSIGNIN:
          serviceImpl.qQSignin((com.github.conanchen.yeamore.sigin.grpc.QQSigninRequest) request,
              (io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.sigin.grpc.SigninResponse>) responseObserver);
          break;
        case METHODID_WXSIGNIN:
          serviceImpl.wXSignin((com.github.conanchen.yeamore.sigin.grpc.WXSigninRequest) request,
              (io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.sigin.grpc.SigninResponse>) responseObserver);
          break;
        case METHODID_WBSIGNIN:
          serviceImpl.wBSignin((com.github.conanchen.yeamore.sigin.grpc.WBSigninRequest) request,
              (io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.sigin.grpc.SigninResponse>) responseObserver);
          break;
        case METHODID_LOCAL_SIGNIN:
          serviceImpl.localSignin((com.github.conanchen.yeamore.sigin.grpc.LocalSigninRequest) request,
              (io.grpc.stub.StreamObserver<com.github.conanchen.yeamore.sigin.grpc.SigninResponse>) responseObserver);
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
      synchronized (SigninGrpc.class) {
        result = serviceDescriptor;
        if (result == null) {
          serviceDescriptor = result = io.grpc.ServiceDescriptor.newBuilder(SERVICE_NAME)
              .addMethod(getQQSigninMethod())
              .addMethod(getWXSigninMethod())
              .addMethod(getWBSigninMethod())
              .addMethod(getLocalSigninMethod())
              .build();
        }
      }
    }
    return result;
  }
}
