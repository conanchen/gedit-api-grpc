#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/store/StoreOwner.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDAFindOwnerByStoreRequest;
  @class GDAListMyStoreRequest;
  @class GDAListOwnershipByOwnerRequest;
  @class GDAOwnershipResponse;
  @class GDATransferOwnershipRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAStoreOwnerApi <NSObject>

#pragma mark Transfer(TransferOwnershipRequest) returns (OwnershipResponse)

/**
 * should be only used by me or authorized users(e.g. administrator)
 */
- (void)transferWithRequest:(GDATransferOwnershipRequest *)request handler:(void(^)(GDAOwnershipResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * should be only used by me or authorized users(e.g. administrator)
 */
- (GRPCProtoCall *)RPCToTransferWithRequest:(GDATransferOwnershipRequest *)request handler:(void(^)(GDAOwnershipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListByOwner(ListOwnershipByOwnerRequest) returns (stream OwnershipResponse)

/**
 * should be only used by authorized users(e.g. administrator)
 */
- (void)listByOwnerWithRequest:(GDAListOwnershipByOwnerRequest *)request eventHandler:(void(^)(BOOL done, GDAOwnershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * should be only used by authorized users(e.g. administrator)
 */
- (GRPCProtoCall *)RPCToListByOwnerWithRequest:(GDAListOwnershipByOwnerRequest *)request eventHandler:(void(^)(BOOL done, GDAOwnershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMyStore(ListMyStoreRequest) returns (stream OwnershipResponse)

/**
 * should be only used by me
 */
- (void)listMyStoreWithRequest:(GDAListMyStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAOwnershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * should be only used by me
 */
- (GRPCProtoCall *)RPCToListMyStoreWithRequest:(GDAListMyStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAOwnershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark FindOwnerByStore(FindOwnerByStoreRequest) returns (OwnershipResponse)

/**
 * 根据storeUuid找到店主的uuid
 */
- (void)findOwnerByStoreWithRequest:(GDAFindOwnerByStoreRequest *)request handler:(void(^)(GDAOwnershipResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * 根据storeUuid找到店主的uuid
 */
- (GRPCProtoCall *)RPCToFindOwnerByStoreWithRequest:(GDAFindOwnerByStoreRequest *)request handler:(void(^)(GDAOwnershipResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAStoreOwnerApi : GRPCProtoService<GDAStoreOwnerApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
