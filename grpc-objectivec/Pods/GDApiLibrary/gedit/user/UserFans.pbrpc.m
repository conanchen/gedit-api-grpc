#import "gedit/user/UserFans.pbrpc.h"
#import "gedit/user/UserFans.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation GDAUserFansApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.user" serviceName:@"UserFansApi"]);
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


#pragma mark Add(AddFanshipRequest) returns (FanshipResponse)

- (void)addWithRequest:(GDAAddFanshipRequest *)request handler:(void(^)(GDAFanshipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddWithRequest:(GDAAddFanshipRequest *)request handler:(void(^)(GDAFanshipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Add"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAFanshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark FindParent(FindParentFanshipRequest) returns (FanshipResponse)

- (void)findParentWithRequest:(GDAFindParentFanshipRequest *)request handler:(void(^)(GDAFanshipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToFindParentWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToFindParentWithRequest:(GDAFindParentFanshipRequest *)request handler:(void(^)(GDAFanshipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"FindParent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAFanshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListChild(ListChildFanshipRequest) returns (stream FanshipResponse)

- (void)listChildWithRequest:(GDAListChildFanshipRequest *)request eventHandler:(void(^)(BOOL done, GDAFanshipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListChildWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListChildWithRequest:(GDAListChildFanshipRequest *)request eventHandler:(void(^)(BOOL done, GDAFanshipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListChild"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAFanshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListMyFan(ListMyFanRequest) returns (stream FanshipResponse)

/**
 * should be only used by me
 */
- (void)listMyFanWithRequest:(GDAListMyFanRequest *)request eventHandler:(void(^)(BOOL done, GDAFanshipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListMyFanWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
/**
 * should be only used by me
 */
- (GRPCProtoCall *)RPCToListMyFanWithRequest:(GDAListMyFanRequest *)request eventHandler:(void(^)(BOOL done, GDAFanshipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListMyFan"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAFanshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
