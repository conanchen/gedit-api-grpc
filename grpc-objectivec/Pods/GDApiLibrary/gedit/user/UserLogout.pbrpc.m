#import "gedit/user/UserLogout.pbrpc.h"
#import "gedit/user/UserLogout.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation GDAUserLogoutApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.user" serviceName:@"UserLogoutApi"]);
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


#pragma mark Logout(LogoutRequest) returns (LogoutResponse)

/**
 * local
 */
- (void)logoutWithRequest:(GDALogoutRequest *)request handler:(void(^)(GDALogoutResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToLogoutWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * local
 */
- (GRPCProtoCall *)RPCToLogoutWithRequest:(GDALogoutRequest *)request handler:(void(^)(GDALogoutResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Logout"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDALogoutResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
