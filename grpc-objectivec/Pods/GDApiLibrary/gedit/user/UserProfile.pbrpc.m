#import "gedit/user/UserProfile.pbrpc.h"
#import "gedit/user/UserProfile.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation GDAUserProfileApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.user" serviceName:@"UserProfileApi"]);
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


#pragma mark Get(GetRequest) returns (UserProfileResponse)

- (void)getWithRequest:(GDAGetRequest *)request handler:(void(^)(GDAUserProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetWithRequest:(GDAGetRequest *)request handler:(void(^)(GDAUserProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Get"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAUserProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark FindByMobile(FindByMobileRequest) returns (UserProfileResponse)

- (void)findByMobileWithRequest:(GDAFindByMobileRequest *)request handler:(void(^)(GDAUserProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToFindByMobileWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToFindByMobileWithRequest:(GDAFindByMobileRequest *)request handler:(void(^)(GDAUserProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"FindByMobile"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAUserProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark List(ListRequest) returns (stream UserProfileResponse)

- (void)listWithRequest:(GDAListRequest *)request eventHandler:(void(^)(BOOL done, GDAUserProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListWithRequest:(GDAListRequest *)request eventHandler:(void(^)(BOOL done, GDAUserProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"List"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAUserProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark UpdateMyProfile(UpdateMyProfileRequest) returns (UpdateMyProfileResponse)

- (void)updateMyProfileWithRequest:(GDAUpdateMyProfileRequest *)request handler:(void(^)(GDAUpdateMyProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateMyProfileWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpdateMyProfileWithRequest:(GDAUpdateMyProfileRequest *)request handler:(void(^)(GDAUpdateMyProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdateMyProfile"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAUpdateMyProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetMyProfile(GetMyProfileRequest) returns (UserProfileResponse)

- (void)getMyProfileWithRequest:(GDAGetMyProfileRequest *)request handler:(void(^)(GDAUserProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetMyProfileWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetMyProfileWithRequest:(GDAGetMyProfileRequest *)request handler:(void(^)(GDAUserProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetMyProfile"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAUserProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Ban(BanUserRequest) returns (BanUserResponse)

- (void)banWithRequest:(GDABanUserRequest *)request handler:(void(^)(GDABanUserResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBanWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToBanWithRequest:(GDABanUserRequest *)request handler:(void(^)(GDABanUserResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Ban"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDABanUserResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
