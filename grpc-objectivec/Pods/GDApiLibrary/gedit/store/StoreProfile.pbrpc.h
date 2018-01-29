#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/store/StoreProfile.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDABanStoreRequest;
  @class GDABanStoreResponse;
  @class GDACreateStoreRequest;
  @class GDACreateStoreResponse;
  @class GDAGetStoreRequest;
  @class GDAListStoreRequest;
  @class GDAStoreProfileResponse;
  @class GDAUpdateStoreRequest;
  @class GDAUpdateStoreResponse;
  @class GDAUpsertWithAampPoiRequest;
  @class GDAUpsertWithAampPoiResponse;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAStoreProfileApi <NSObject>

#pragma mark Create(CreateStoreRequest) returns (CreateStoreResponse)

- (void)createWithRequest:(GDACreateStoreRequest *)request handler:(void(^)(GDACreateStoreResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToCreateWithRequest:(GDACreateStoreRequest *)request handler:(void(^)(GDACreateStoreResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Update(UpdateStoreRequest) returns (UpdateStoreResponse)

- (void)updateWithRequest:(GDAUpdateStoreRequest *)request handler:(void(^)(GDAUpdateStoreResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpdateWithRequest:(GDAUpdateStoreRequest *)request handler:(void(^)(GDAUpdateStoreResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UpsertWithAampPoi(UpsertWithAampPoiRequest) returns (UpsertWithAampPoiResponse)

- (void)upsertWithAampPoiWithRequest:(GDAUpsertWithAampPoiRequest *)request handler:(void(^)(GDAUpsertWithAampPoiResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpsertWithAampPoiWithRequest:(GDAUpsertWithAampPoiRequest *)request handler:(void(^)(GDAUpsertWithAampPoiResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Get(GetStoreRequest) returns (StoreProfileResponse)

- (void)getWithRequest:(GDAGetStoreRequest *)request handler:(void(^)(GDAStoreProfileResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(GDAGetStoreRequest *)request handler:(void(^)(GDAStoreProfileResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark List(ListStoreRequest) returns (stream StoreProfileResponse)

- (void)listWithRequest:(GDAListStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAStoreProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(GDAListStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAStoreProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark Ban(BanStoreRequest) returns (BanStoreResponse)

- (void)banWithRequest:(GDABanStoreRequest *)request handler:(void(^)(GDABanStoreResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBanWithRequest:(GDABanStoreRequest *)request handler:(void(^)(GDABanStoreResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAStoreProfileApi : GRPCProtoService<GDAStoreProfileApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
