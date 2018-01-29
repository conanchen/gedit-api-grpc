#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/user/UserLocation.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDAUpdateMyLocationRequest;
  @class GDAUpdateMyLocationResponse;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAUserLocationApi <NSObject>

#pragma mark UpdateMyLocation(UpdateMyLocationRequest) returns (UpdateMyLocationResponse)

- (void)updateMyLocationWithRequest:(GDAUpdateMyLocationRequest *)request handler:(void(^)(GDAUpdateMyLocationResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpdateMyLocationWithRequest:(GDAUpdateMyLocationRequest *)request handler:(void(^)(GDAUpdateMyLocationResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAUserLocationApi : GRPCProtoService<GDAUserLocationApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
