#import "gedit/Helloworld.pbrpc.h"
#import "gedit/Helloworld.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>

@implementation GDAGreeter

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"helloworld" serviceName:@"Greeter"]);
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
@end
