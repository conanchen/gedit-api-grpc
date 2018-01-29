#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/user/UserProfile.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDABanUserRequest;
  @class GDABanUserResponse;
  @class GDAFindByMobileRequest;
  @class GDAGetMyProfileRequest;
  @class GDAGetRequest;
  @class GDAListRequest;
  @class GDAUpdateMyProfileRequest;
  @class GDAUpdateMyProfileResponse;
  @class GDAUserProfileResponse;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAUserProfileApi <NSObject>

#pragma mark Get(GetRequest) returns (UserProfileResponse)

- (void)getWithRequest:(GDAGetRequest *)request handler:(void(^)(GDAUserProfileResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(GDAGetRequest *)request handler:(void(^)(GDAUserProfileResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark FindByMobile(FindByMobileRequest) returns (UserProfileResponse)

- (void)findByMobileWithRequest:(GDAFindByMobileRequest *)request handler:(void(^)(GDAUserProfileResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToFindByMobileWithRequest:(GDAFindByMobileRequest *)request handler:(void(^)(GDAUserProfileResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark List(ListRequest) returns (stream UserProfileResponse)

- (void)listWithRequest:(GDAListRequest *)request eventHandler:(void(^)(BOOL done, GDAUserProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(GDAListRequest *)request eventHandler:(void(^)(BOOL done, GDAUserProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark UpdateMyProfile(UpdateMyProfileRequest) returns (UpdateMyProfileResponse)

- (void)updateMyProfileWithRequest:(GDAUpdateMyProfileRequest *)request handler:(void(^)(GDAUpdateMyProfileResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpdateMyProfileWithRequest:(GDAUpdateMyProfileRequest *)request handler:(void(^)(GDAUpdateMyProfileResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetMyProfile(GetMyProfileRequest) returns (UserProfileResponse)

- (void)getMyProfileWithRequest:(GDAGetMyProfileRequest *)request handler:(void(^)(GDAUserProfileResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetMyProfileWithRequest:(GDAGetMyProfileRequest *)request handler:(void(^)(GDAUserProfileResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Ban(BanUserRequest) returns (BanUserResponse)

- (void)banWithRequest:(GDABanUserRequest *)request handler:(void(^)(GDABanUserResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBanWithRequest:(GDABanUserRequest *)request handler:(void(^)(GDABanUserResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAUserProfileApi : GRPCProtoService<GDAUserProfileApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
