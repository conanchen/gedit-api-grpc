#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/store/StoreWorker.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class STWRKAddWorkershipRequest;
  @class STWRKBanWorkshipRequest;
  @class STWRKGetMyCurrentWorkinStoreRequest;
  @class STWRKListMyWorkinStoreRequest;
  @class STWRKListWorkshipByStoreRequest;
  @class STWRKListWorkshipByWorkerRequest;
  @class STWRKWorkshipResponse;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol STWRKStoreWorkerApi <NSObject>

#pragma mark Add(AddWorkershipRequest) returns (WorkshipResponse)

- (void)addWithRequest:(STWRKAddWorkershipRequest *)request handler:(void(^)(STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddWithRequest:(STWRKAddWorkershipRequest *)request handler:(void(^)(STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListByStore(ListWorkshipByStoreRequest) returns (stream WorkshipResponse)

- (void)listByStoreWithRequest:(STWRKListWorkshipByStoreRequest *)request eventHandler:(void(^)(BOOL done, STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByStoreWithRequest:(STWRKListWorkshipByStoreRequest *)request eventHandler:(void(^)(BOOL done, STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListByWorker(ListWorkshipByWorkerRequest) returns (stream WorkshipResponse)

- (void)listByWorkerWithRequest:(STWRKListWorkshipByWorkerRequest *)request eventHandler:(void(^)(BOOL done, STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByWorkerWithRequest:(STWRKListWorkshipByWorkerRequest *)request eventHandler:(void(^)(BOOL done, STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMyWorkinStore(ListMyWorkinStoreRequest) returns (stream WorkshipResponse)

/**
 * should be only used by me
 */
- (void)listMyWorkinStoreWithRequest:(STWRKListMyWorkinStoreRequest *)request eventHandler:(void(^)(BOOL done, STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * should be only used by me
 */
- (GRPCProtoCall *)RPCToListMyWorkinStoreWithRequest:(STWRKListMyWorkinStoreRequest *)request eventHandler:(void(^)(BOOL done, STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark GetMyCurrentWorkinStore(GetMyCurrentWorkinStoreRequest) returns (WorkshipResponse)

/**
 * 收银员app端调用
 */
- (void)getMyCurrentWorkinStoreWithRequest:(STWRKGetMyCurrentWorkinStoreRequest *)request handler:(void(^)(STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * 收银员app端调用
 */
- (GRPCProtoCall *)RPCToGetMyCurrentWorkinStoreWithRequest:(STWRKGetMyCurrentWorkinStoreRequest *)request handler:(void(^)(STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Ban(BanWorkshipRequest) returns (WorkshipResponse)

- (void)banWithRequest:(STWRKBanWorkshipRequest *)request handler:(void(^)(STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBanWithRequest:(STWRKBanWorkshipRequest *)request handler:(void(^)(STWRKWorkshipResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface STWRKStoreWorkerApi : GRPCProtoService<STWRKStoreWorkerApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
