#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/Helloworld.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDAHelloReply;
  @class GDAHelloRequest;
#else
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAGreeter <NSObject>

#pragma mark SayHello(HelloRequest) returns (HelloReply)

/**
 * Sends a greeting
 */
- (void)sayHelloWithRequest:(GDAHelloRequest *)request handler:(void(^)(GDAHelloReply *_Nullable response, NSError *_Nullable error))handler;

/**
 * Sends a greeting
 */
- (GRPCProtoCall *)RPCToSayHelloWithRequest:(GDAHelloRequest *)request handler:(void(^)(GDAHelloReply *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAGreeter : GRPCProtoService<GDAGreeter>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
