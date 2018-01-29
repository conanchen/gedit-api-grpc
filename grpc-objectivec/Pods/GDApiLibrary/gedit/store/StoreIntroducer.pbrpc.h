#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/store/StoreIntroducer.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDAAddIntroducershipRequest;
  @class GDABanIntroducershipRequest;
  @class GDAIntroducershipResponse;
  @class GDAListIntroducershipByIntroducerRequest;
  @class GDAListIntroducershipByStoreRequest;
  @class GDAListMyIntroducedStoreRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAStoreIntroducerApi <NSObject>

#pragma mark Add(AddIntroducershipRequest) returns (IntroducershipResponse)

- (void)addWithRequest:(GDAAddIntroducershipRequest *)request handler:(void(^)(GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddWithRequest:(GDAAddIntroducershipRequest *)request handler:(void(^)(GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListByStore(ListIntroducershipByStoreRequest) returns (stream IntroducershipResponse)

- (void)listByStoreWithRequest:(GDAListIntroducershipByStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByStoreWithRequest:(GDAListIntroducershipByStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListByIntroducer(ListIntroducershipByIntroducerRequest) returns (stream IntroducershipResponse)

- (void)listByIntroducerWithRequest:(GDAListIntroducershipByIntroducerRequest *)request eventHandler:(void(^)(BOOL done, GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByIntroducerWithRequest:(GDAListIntroducershipByIntroducerRequest *)request eventHandler:(void(^)(BOOL done, GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMyIntroducedStore(ListMyIntroducedStoreRequest) returns (stream IntroducershipResponse)

/**
 * should be only used by me
 */
- (void)listMyIntroducedStoreWithRequest:(GDAListMyIntroducedStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * should be only used by me
 */
- (GRPCProtoCall *)RPCToListMyIntroducedStoreWithRequest:(GDAListMyIntroducedStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark Ban(BanIntroducershipRequest) returns (IntroducershipResponse)

- (void)banWithRequest:(GDABanIntroducershipRequest *)request handler:(void(^)(GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBanWithRequest:(GDABanIntroducershipRequest *)request handler:(void(^)(GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAStoreIntroducerApi : GRPCProtoService<GDAStoreIntroducerApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
