#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/store/StoreSearch.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class STSCHDeleteStoreRequest;
  @class STSCHDeleteStoreResponse;
  @class STSCHIndexStoreRequest;
  @class STSCHIndexStoreResponse;
  @class STSCHSearchStoreRequest;
  @class STSCHSearchStoreResponse;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol STSCHStoreSearchApi <NSObject>

#pragma mark Index(IndexStoreRequest) returns (IndexStoreResponse)

- (void)indexWithRequest:(STSCHIndexStoreRequest *)request handler:(void(^)(STSCHIndexStoreResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToIndexWithRequest:(STSCHIndexStoreRequest *)request handler:(void(^)(STSCHIndexStoreResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Delete(DeleteStoreRequest) returns (DeleteStoreResponse)

- (void)deleteWithRequest:(STSCHDeleteStoreRequest *)request handler:(void(^)(STSCHDeleteStoreResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToDeleteWithRequest:(STSCHDeleteStoreRequest *)request handler:(void(^)(STSCHDeleteStoreResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Search(SearchStoreRequest) returns (stream SearchStoreResponse)

- (void)searchWithRequest:(STSCHSearchStoreRequest *)request eventHandler:(void(^)(BOOL done, STSCHSearchStoreResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToSearchWithRequest:(STSCHSearchStoreRequest *)request eventHandler:(void(^)(BOOL done, STSCHSearchStoreResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface STSCHStoreSearchApi : GRPCProtoService<STSCHStoreSearchApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
