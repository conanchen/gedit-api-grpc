#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/store/StoreOwner.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class STOWNFindOwnerByStoreRequest;
  @class STOWNListMyStoreRequest;
  @class STOWNListOwnershipByOwnerRequest;
  @class STOWNOwnershipResponse;
  @class STOWNTransferOwnershipRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol STOWNStoreOwnerApi <NSObject>

#pragma mark Transfer(TransferOwnershipRequest) returns (OwnershipResponse)

/**
 * should be only used by me or authorized users(e.g. administrator)
 */
- (void)transferWithRequest:(STOWNTransferOwnershipRequest *)request handler:(void(^)(STOWNOwnershipResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * should be only used by me or authorized users(e.g. administrator)
 */
- (GRPCProtoCall *)RPCToTransferWithRequest:(STOWNTransferOwnershipRequest *)request handler:(void(^)(STOWNOwnershipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListByOwner(ListOwnershipByOwnerRequest) returns (stream OwnershipResponse)

/**
 * should be only used by authorized users(e.g. administrator)
 */
- (void)listByOwnerWithRequest:(STOWNListOwnershipByOwnerRequest *)request eventHandler:(void(^)(BOOL done, STOWNOwnershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * should be only used by authorized users(e.g. administrator)
 */
- (GRPCProtoCall *)RPCToListByOwnerWithRequest:(STOWNListOwnershipByOwnerRequest *)request eventHandler:(void(^)(BOOL done, STOWNOwnershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMyStore(ListMyStoreRequest) returns (stream OwnershipResponse)

/**
 * should be only used by me
 */
- (void)listMyStoreWithRequest:(STOWNListMyStoreRequest *)request eventHandler:(void(^)(BOOL done, STOWNOwnershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * should be only used by me
 */
- (GRPCProtoCall *)RPCToListMyStoreWithRequest:(STOWNListMyStoreRequest *)request eventHandler:(void(^)(BOOL done, STOWNOwnershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark FindOwnerByStore(FindOwnerByStoreRequest) returns (OwnershipResponse)

/**
 * 根据storeUuid找到店主的uuid
 */
- (void)findOwnerByStoreWithRequest:(STOWNFindOwnerByStoreRequest *)request handler:(void(^)(STOWNOwnershipResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * 根据storeUuid找到店主的uuid
 */
- (GRPCProtoCall *)RPCToFindOwnerByStoreWithRequest:(STOWNFindOwnerByStoreRequest *)request handler:(void(^)(STOWNOwnershipResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface STOWNStoreOwnerApi : GRPCProtoService<STOWNStoreOwnerApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
