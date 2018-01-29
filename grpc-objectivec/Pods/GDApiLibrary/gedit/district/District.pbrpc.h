#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/district/District.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class DISTRICTDistrictResponse;
  @class DISTRICTGetTopDistrictRequest;
  @class DISTRICTListChildDistrictRequest;
  @class DISTRICTListDistrictRequest;
  @class DISTRICTUpsertDistrictRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol DISTRICTDistrictApi <NSObject>

#pragma mark Upsert(UpsertDistrictRequest) returns (DistrictResponse)

/**
 * Sends a greeting
 */
- (void)upsertWithRequest:(DISTRICTUpsertDistrictRequest *)request handler:(void(^)(DISTRICTDistrictResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * Sends a greeting
 */
- (GRPCProtoCall *)RPCToUpsertWithRequest:(DISTRICTUpsertDistrictRequest *)request handler:(void(^)(DISTRICTDistrictResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetTop(GetTopDistrictRequest) returns (stream DistrictResponse)

- (void)getTopWithRequest:(DISTRICTGetTopDistrictRequest *)request eventHandler:(void(^)(BOOL done, DISTRICTDistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToGetTopWithRequest:(DISTRICTGetTopDistrictRequest *)request eventHandler:(void(^)(BOOL done, DISTRICTDistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListChild(ListChildDistrictRequest) returns (stream DistrictResponse)

- (void)listChildWithRequest:(DISTRICTListChildDistrictRequest *)request eventHandler:(void(^)(BOOL done, DISTRICTDistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListChildWithRequest:(DISTRICTListChildDistrictRequest *)request eventHandler:(void(^)(BOOL done, DISTRICTDistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark List(ListDistrictRequest) returns (stream DistrictResponse)

- (void)listWithRequest:(DISTRICTListDistrictRequest *)request eventHandler:(void(^)(BOOL done, DISTRICTDistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(DISTRICTListDistrictRequest *)request eventHandler:(void(^)(BOOL done, DISTRICTDistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface DISTRICTDistrictApi : GRPCProtoService<DISTRICTDistrictApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
