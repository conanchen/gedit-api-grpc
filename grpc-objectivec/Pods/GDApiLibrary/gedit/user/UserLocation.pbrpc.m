#import "gedit/user/UserLocation.pbrpc.h"
#import "gedit/user/UserLocation.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation USRLOCUserLocationApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.user" serviceName:@"UserLocationApi"]);
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


#pragma mark UpdateMyLocation(UpdateMyLocationRequest) returns (UpdateMyLocationResponse)

- (void)updateMyLocationWithRequest:(USRLOCUpdateMyLocationRequest *)request handler:(void(^)(USRLOCUpdateMyLocationResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateMyLocationWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpdateMyLocationWithRequest:(USRLOCUpdateMyLocationRequest *)request handler:(void(^)(USRLOCUpdateMyLocationResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpdateMyLocation"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRLOCUpdateMyLocationResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
