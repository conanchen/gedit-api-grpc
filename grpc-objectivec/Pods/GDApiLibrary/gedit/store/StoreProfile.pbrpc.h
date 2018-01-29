#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/store/StoreProfile.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class STPRFBanStoreRequest;
  @class STPRFBanStoreResponse;
  @class STPRFCreateStoreRequest;
  @class STPRFCreateStoreResponse;
  @class STPRFGetStoreRequest;
  @class STPRFListStoreRequest;
  @class STPRFStoreProfileResponse;
  @class STPRFUpdateStoreRequest;
  @class STPRFUpdateStoreResponse;
  @class STPRFUpsertWithAampPoiRequest;
  @class STPRFUpsertWithAampPoiResponse;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol STPRFStoreProfileApi <NSObject>

#pragma mark Create(CreateStoreRequest) returns (CreateStoreResponse)

- (void)createWithRequest:(STPRFCreateStoreRequest *)request handler:(void(^)(STPRFCreateStoreResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToCreateWithRequest:(STPRFCreateStoreRequest *)request handler:(void(^)(STPRFCreateStoreResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Update(UpdateStoreRequest) returns (UpdateStoreResponse)

- (void)updateWithRequest:(STPRFUpdateStoreRequest *)request handler:(void(^)(STPRFUpdateStoreResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpdateWithRequest:(STPRFUpdateStoreRequest *)request handler:(void(^)(STPRFUpdateStoreResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark UpsertWithAampPoi(UpsertWithAampPoiRequest) returns (UpsertWithAampPoiResponse)

- (void)upsertWithAampPoiWithRequest:(STPRFUpsertWithAampPoiRequest *)request handler:(void(^)(STPRFUpsertWithAampPoiResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpsertWithAampPoiWithRequest:(STPRFUpsertWithAampPoiRequest *)request handler:(void(^)(STPRFUpsertWithAampPoiResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Get(GetStoreRequest) returns (StoreProfileResponse)

- (void)getWithRequest:(STPRFGetStoreRequest *)request handler:(void(^)(STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(STPRFGetStoreRequest *)request handler:(void(^)(STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark List(ListStoreRequest) returns (stream StoreProfileResponse)

- (void)listWithRequest:(STPRFListStoreRequest *)request eventHandler:(void(^)(BOOL done, STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(STPRFListStoreRequest *)request eventHandler:(void(^)(BOOL done, STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark Ban(BanStoreRequest) returns (BanStoreResponse)

- (void)banWithRequest:(STPRFBanStoreRequest *)request handler:(void(^)(STPRFBanStoreResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBanWithRequest:(STPRFBanStoreRequest *)request handler:(void(^)(STPRFBanStoreResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface STPRFStoreProfileApi : GRPCProtoService<STPRFStoreProfileApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
