#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/user/UserLocation.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class USRLOCUpdateMyLocationRequest;
  @class USRLOCUpdateMyLocationResponse;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol USRLOCUserLocationApi <NSObject>

#pragma mark UpdateMyLocation(UpdateMyLocationRequest) returns (UpdateMyLocationResponse)

- (void)updateMyLocationWithRequest:(USRLOCUpdateMyLocationRequest *)request handler:(void(^)(USRLOCUpdateMyLocationResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpdateMyLocationWithRequest:(USRLOCUpdateMyLocationRequest *)request handler:(void(^)(USRLOCUpdateMyLocationResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface USRLOCUserLocationApi : GRPCProtoService<USRLOCUserLocationApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
