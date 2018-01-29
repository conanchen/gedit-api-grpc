#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/hello/Hello.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDAHelloReply;
  @class GDAHelloRequest;
  @class GDAListHelloRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAHello <NSObject>

#pragma mark SayHello(HelloRequest) returns (HelloReply)

/**
 * Sends a greeting
 */
- (void)sayHelloWithRequest:(GDAHelloRequest *)request handler:(void(^)(GDAHelloReply *_Nullable response, NSError *_Nullable error))handler;

/**
 * Sends a greeting
 */
- (GRPCProtoCall *)RPCToSayHelloWithRequest:(GDAHelloRequest *)request handler:(void(^)(GDAHelloReply *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListOldHello(ListHelloRequest) returns (stream HelloReply)

- (void)listOldHelloWithRequest:(GDAListHelloRequest *)request eventHandler:(void(^)(BOOL done, GDAHelloReply *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListOldHelloWithRequest:(GDAListHelloRequest *)request eventHandler:(void(^)(BOOL done, GDAHelloReply *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAHello : GRPCProtoService<GDAHello>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
