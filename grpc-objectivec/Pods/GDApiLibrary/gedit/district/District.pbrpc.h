#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/district/District.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDADistrictResponse;
  @class GDAGetTopDistrictRequest;
  @class GDAListChildDistrictRequest;
  @class GDAListDistrictRequest;
  @class GDAUpsertDistrictRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDADistrictApi <NSObject>

#pragma mark Upsert(UpsertDistrictRequest) returns (DistrictResponse)

/**
 * Sends a greeting
 */
- (void)upsertWithRequest:(GDAUpsertDistrictRequest *)request handler:(void(^)(GDADistrictResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Sends a greeting
 */
- (GRPCProtoCall *)RPCToUpsertWithRequest:(GDAUpsertDistrictRequest *)request handler:(void(^)(GDADistrictResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetTop(GetTopDistrictRequest) returns (stream DistrictResponse)

- (void)getTopWithRequest:(GDAGetTopDistrictRequest *)request eventHandler:(void(^)(BOOL done, GDADistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToGetTopWithRequest:(GDAGetTopDistrictRequest *)request eventHandler:(void(^)(BOOL done, GDADistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListChild(ListChildDistrictRequest) returns (stream DistrictResponse)

- (void)listChildWithRequest:(GDAListChildDistrictRequest *)request eventHandler:(void(^)(BOOL done, GDADistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListChildWithRequest:(GDAListChildDistrictRequest *)request eventHandler:(void(^)(BOOL done, GDADistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark List(ListDistrictRequest) returns (stream DistrictResponse)

- (void)listWithRequest:(GDAListDistrictRequest *)request eventHandler:(void(^)(BOOL done, GDADistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(GDAListDistrictRequest *)request eventHandler:(void(^)(BOOL done, GDADistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDADistrictApi : GRPCProtoService<GDADistrictApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
