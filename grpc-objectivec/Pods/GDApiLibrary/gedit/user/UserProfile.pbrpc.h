#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/user/UserProfile.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class USRPROFBanUserRequest;
  @class USRPROFBanUserResponse;
  @class USRPROFFindByMobileRequest;
  @class USRPROFGetMyProfileRequest;
  @class USRPROFGetRequest;
  @class USRPROFListRequest;
  @class USRPROFUpdateMyProfileRequest;
  @class USRPROFUpdateMyProfileResponse;
  @class USRPROFUserProfileResponse;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol USRPROFUserProfileApi <NSObject>

#pragma mark Get(GetRequest) returns (UserProfileResponse)

- (void)getWithRequest:(USRPROFGetRequest *)request handler:(void(^)(USRPROFUserProfileResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(USRPROFGetRequest *)request handler:(void(^)(USRPROFUserProfileResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark FindByMobile(FindByMobileRequest) returns (UserProfileResponse)

- (void)findByMobileWithRequest:(USRPROFFindByMobileRequest *)request handler:(void(^)(USRPROFUserProfileResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToFindByMobileWithRequest:(USRPROFFindByMobileRequest *)request handler:(void(^)(USRPROFUserProfileResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark List(ListRequest) returns (stream UserProfileResponse)

- (void)listWithRequest:(USRPROFListRequest *)request eventHandler:(void(^)(BOOL done, USRPROFUserProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(USRPROFListRequest *)request eventHandler:(void(^)(BOOL done, USRPROFUserProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark UpdateMyProfile(UpdateMyProfileRequest) returns (UpdateMyProfileResponse)

- (void)updateMyProfileWithRequest:(USRPROFUpdateMyProfileRequest *)request handler:(void(^)(USRPROFUpdateMyProfileResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpdateMyProfileWithRequest:(USRPROFUpdateMyProfileRequest *)request handler:(void(^)(USRPROFUpdateMyProfileResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetMyProfile(GetMyProfileRequest) returns (UserProfileResponse)

- (void)getMyProfileWithRequest:(USRPROFGetMyProfileRequest *)request handler:(void(^)(USRPROFUserProfileResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetMyProfileWithRequest:(USRPROFGetMyProfileRequest *)request handler:(void(^)(USRPROFUserProfileResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Ban(BanUserRequest) returns (BanUserResponse)

- (void)banWithRequest:(USRPROFBanUserRequest *)request handler:(void(^)(USRPROFBanUserResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBanWithRequest:(USRPROFBanUserRequest *)request handler:(void(^)(USRPROFBanUserResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface USRPROFUserProfileApi : GRPCProtoService<USRPROFUserProfileApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
