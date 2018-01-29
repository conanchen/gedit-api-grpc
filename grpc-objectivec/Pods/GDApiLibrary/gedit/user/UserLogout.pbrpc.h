#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/user/UserLogout.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class USRLOGOUTLogoutRequest;
  @class USRLOGOUTLogoutResponse;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol USRLOGOUTUserLogoutApi <NSObject>

#pragma mark Logout(LogoutRequest) returns (LogoutResponse)

/**
 * local
 */
- (void)logoutWithRequest:(USRLOGOUTLogoutRequest *)request handler:(void(^)(USRLOGOUTLogoutResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * local
 */
- (GRPCProtoCall *)RPCToLogoutWithRequest:(USRLOGOUTLogoutRequest *)request handler:(void(^)(USRLOGOUTLogoutResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface USRLOGOUTUserLogoutApi : GRPCProtoService<USRLOGOUTUserLogoutApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
