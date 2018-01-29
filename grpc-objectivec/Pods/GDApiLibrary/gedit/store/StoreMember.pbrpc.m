#import "gedit/store/StoreMember.pbrpc.h"
#import "gedit/store/StoreMember.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation GDAStoreMemberApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.store" serviceName:@"StoreMemberApi"]);
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


#pragma mark Add(AddMembershipRequest) returns (MembershipResponse)

- (void)addWithRequest:(GDAAddMembershipRequest *)request handler:(void(^)(GDAMembershipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddWithRequest:(GDAAddMembershipRequest *)request handler:(void(^)(GDAMembershipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Add"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAMembershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Update(UpdateMembershipRequest) returns (MembershipResponse)

- (void)updateWithRequest:(GDAUpdateMembershipRequest *)request handler:(void(^)(GDAMembershipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpdateWithRequest:(GDAUpdateMembershipRequest *)request handler:(void(^)(GDAMembershipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Update"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAMembershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListByStore(ListMembershipByStoreRequest) returns (stream MembershipResponse)

- (void)listByStoreWithRequest:(GDAListMembershipByStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListByStoreWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListByStoreWithRequest:(GDAListMembershipByStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListByStore"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAMembershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListByMember(ListMembershipByMemberRequest) returns (stream MembershipResponse)

- (void)listByMemberWithRequest:(GDAListMembershipByMemberRequest *)request eventHandler:(void(^)(BOOL done, GDAMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListByMemberWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListByMemberWithRequest:(GDAListMembershipByMemberRequest *)request eventHandler:(void(^)(BOOL done, GDAMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListByMember"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAMembershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListMyMemberStore(ListMyMemberStoreRequest) returns (stream MembershipResponse)

/**
 * should be only used by me
 */
- (void)listMyMemberStoreWithRequest:(GDAListMyMemberStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListMyMemberStoreWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
/**
 * should be only used by me
 */
- (GRPCProtoCall *)RPCToListMyMemberStoreWithRequest:(GDAListMyMemberStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListMyMemberStore"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAMembershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark Ban(BanMembershipRequest) returns (BanMembershipResponse)

- (void)banWithRequest:(GDABanMembershipRequest *)request handler:(void(^)(GDABanMembershipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBanWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToBanWithRequest:(GDABanMembershipRequest *)request handler:(void(^)(GDABanMembershipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Ban"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDABanMembershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
