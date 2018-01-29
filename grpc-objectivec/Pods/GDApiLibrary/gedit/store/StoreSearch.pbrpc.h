#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/store/StoreSearch.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDADeleteStoreRequest;
  @class GDADeleteStoreResponse;
  @class GDAIndexStoreRequest;
  @class GDAIndexStoreResponse;
  @class GDASearchStoreRequest;
  @class GDASearchStoreResponse;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAStoreSearchApi <NSObject>

#pragma mark Index(IndexStoreRequest) returns (IndexStoreResponse)

- (void)indexWithRequest:(GDAIndexStoreRequest *)request handler:(void(^)(GDAIndexStoreResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToIndexWithRequest:(GDAIndexStoreRequest *)request handler:(void(^)(GDAIndexStoreResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Delete(DeleteStoreRequest) returns (DeleteStoreResponse)

- (void)deleteWithRequest:(GDADeleteStoreRequest *)request handler:(void(^)(GDADeleteStoreResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDeleteWithRequest:(GDADeleteStoreRequest *)request handler:(void(^)(GDADeleteStoreResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Search(SearchStoreRequest) returns (stream SearchStoreResponse)

- (void)searchWithRequest:(GDASearchStoreRequest *)request eventHandler:(void(^)(BOOL done, GDASearchStoreResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToSearchWithRequest:(GDASearchStoreRequest *)request eventHandler:(void(^)(BOOL done, GDASearchStoreResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAStoreSearchApi : GRPCProtoService<GDAStoreSearchApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
