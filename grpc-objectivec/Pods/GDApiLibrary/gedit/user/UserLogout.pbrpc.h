#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/user/UserLogout.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDALogoutRequest;
  @class GDALogoutResponse;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAUserLogoutApi <NSObject>

#pragma mark Logout(LogoutRequest) returns (LogoutResponse)

/**
 * local
 */
- (void)logoutWithRequest:(GDALogoutRequest *)request handler:(void(^)(GDALogoutResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * local
 */
- (GRPCProtoCall *)RPCToLogoutWithRequest:(GDALogoutRequest *)request handler:(void(^)(GDALogoutResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAUserLogoutApi : GRPCProtoService<GDAUserLogoutApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
