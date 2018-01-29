#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/hello/Hello.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class HELLOHelloReply;
  @class HELLOHelloRequest;
  @class HELLOListHelloRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol HELLOHello <NSObject>

#pragma mark SayHello(HelloRequest) returns (HelloReply)

/**
 * Sends a greeting
 */
- (void)sayHelloWithRequest:(HELLOHelloRequest *)request handler:(void(^)(HELLOHelloReply *_Nullable response, NSError *_Nullable error))handler;

/**
 * Sends a greeting
 */
- (GRPCProtoCall *)RPCToSayHelloWithRequest:(HELLOHelloRequest *)request handler:(void(^)(HELLOHelloReply *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListOldHello(ListHelloRequest) returns (stream HelloReply)

- (void)listOldHelloWithRequest:(HELLOListHelloRequest *)request eventHandler:(void(^)(BOOL done, HELLOHelloReply *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListOldHelloWithRequest:(HELLOListHelloRequest *)request eventHandler:(void(^)(BOOL done, HELLOHelloReply *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface HELLOHello : GRPCProtoService<HELLOHello>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
