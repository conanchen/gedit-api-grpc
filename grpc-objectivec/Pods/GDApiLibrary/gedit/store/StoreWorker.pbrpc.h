#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/store/StoreWorker.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDAAddWorkershipRequest;
  @class GDABanWorkshipRequest;
  @class GDAGetMyCurrentWorkinStoreRequest;
  @class GDAListMyWorkinStoreRequest;
  @class GDAListWorkshipByStoreRequest;
  @class GDAListWorkshipByWorkerRequest;
  @class GDAWorkshipResponse;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAStoreWorkerApi <NSObject>

#pragma mark Add(AddWorkershipRequest) returns (WorkshipResponse)

- (void)addWithRequest:(GDAAddWorkershipRequest *)request handler:(void(^)(GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddWithRequest:(GDAAddWorkershipRequest *)request handler:(void(^)(GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListByStore(ListWorkshipByStoreRequest) returns (stream WorkshipResponse)

- (void)listByStoreWithRequest:(GDAListWorkshipByStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByStoreWithRequest:(GDAListWorkshipByStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListByWorker(ListWorkshipByWorkerRequest) returns (stream WorkshipResponse)

- (void)listByWorkerWithRequest:(GDAListWorkshipByWorkerRequest *)request eventHandler:(void(^)(BOOL done, GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByWorkerWithRequest:(GDAListWorkshipByWorkerRequest *)request eventHandler:(void(^)(BOOL done, GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMyWorkinStore(ListMyWorkinStoreRequest) returns (stream WorkshipResponse)

/**
 * should be only used by me
 */
- (void)listMyWorkinStoreWithRequest:(GDAListMyWorkinStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * should be only used by me
 */
- (GRPCProtoCall *)RPCToListMyWorkinStoreWithRequest:(GDAListMyWorkinStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark GetMyCurrentWorkinStore(GetMyCurrentWorkinStoreRequest) returns (WorkshipResponse)

/**
 * 收银员app端调用
 */
- (void)getMyCurrentWorkinStoreWithRequest:(GDAGetMyCurrentWorkinStoreRequest *)request handler:(void(^)(GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * 收银员app端调用
 */
- (GRPCProtoCall *)RPCToGetMyCurrentWorkinStoreWithRequest:(GDAGetMyCurrentWorkinStoreRequest *)request handler:(void(^)(GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Ban(BanWorkshipRequest) returns (WorkshipResponse)

- (void)banWithRequest:(GDABanWorkshipRequest *)request handler:(void(^)(GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBanWithRequest:(GDABanWorkshipRequest *)request handler:(void(^)(GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAStoreWorkerApi : GRPCProtoService<GDAStoreWorkerApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
