#import "gedit/hello/Hello.pbrpc.h"
#import "gedit/hello/Hello.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation GDAHello

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.hello" serviceName:@"Hello"]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark SayHello(HelloRequest) returns (HelloReply)

/**
 * Sends a greeting
 */
- (void)sayHelloWithRequest:(GDAHelloRequest *)request handler:(void(^)(GDAHelloReply *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSayHelloWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Sends a greeting
 */
- (GRPCProtoCall *)RPCToSayHelloWithRequest:(GDAHelloRequest *)request handler:(void(^)(GDAHelloReply *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SayHello"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAHelloReply class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListOldHello(ListHelloRequest) returns (stream HelloReply)

- (void)listOldHelloWithRequest:(GDAListHelloRequest *)request eventHandler:(void(^)(BOOL done, GDAHelloReply *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListOldHelloWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListOldHelloWithRequest:(GDAListHelloRequest *)request eventHandler:(void(^)(BOOL done, GDAHelloReply *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListOldHello"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAHelloReply class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
