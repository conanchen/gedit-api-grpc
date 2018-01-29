#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/store/StoreIntroducer.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class STIDCAddIntroducershipRequest;
  @class STIDCBanIntroducershipRequest;
  @class STIDCIntroducershipResponse;
  @class STIDCListIntroducershipByIntroducerRequest;
  @class STIDCListIntroducershipByStoreRequest;
  @class STIDCListMyIntroducedStoreRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol STIDCStoreIntroducerApi <NSObject>

#pragma mark Add(AddIntroducershipRequest) returns (IntroducershipResponse)

- (void)addWithRequest:(STIDCAddIntroducershipRequest *)request handler:(void(^)(STIDCIntroducershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddWithRequest:(STIDCAddIntroducershipRequest *)request handler:(void(^)(STIDCIntroducershipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListByStore(ListIntroducershipByStoreRequest) returns (stream IntroducershipResponse)

- (void)listByStoreWithRequest:(STIDCListIntroducershipByStoreRequest *)request eventHandler:(void(^)(BOOL done, STIDCIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByStoreWithRequest:(STIDCListIntroducershipByStoreRequest *)request eventHandler:(void(^)(BOOL done, STIDCIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListByIntroducer(ListIntroducershipByIntroducerRequest) returns (stream IntroducershipResponse)

- (void)listByIntroducerWithRequest:(STIDCListIntroducershipByIntroducerRequest *)request eventHandler:(void(^)(BOOL done, STIDCIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByIntroducerWithRequest:(STIDCListIntroducershipByIntroducerRequest *)request eventHandler:(void(^)(BOOL done, STIDCIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMyIntroducedStore(ListMyIntroducedStoreRequest) returns (stream IntroducershipResponse)

/**
 * should be only used by me
 */
- (void)listMyIntroducedStoreWithRequest:(STIDCListMyIntroducedStoreRequest *)request eventHandler:(void(^)(BOOL done, STIDCIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * should be only used by me
 */
- (GRPCProtoCall *)RPCToListMyIntroducedStoreWithRequest:(STIDCListMyIntroducedStoreRequest *)request eventHandler:(void(^)(BOOL done, STIDCIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark Ban(BanIntroducershipRequest) returns (IntroducershipResponse)

- (void)banWithRequest:(STIDCBanIntroducershipRequest *)request handler:(void(^)(STIDCIntroducershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBanWithRequest:(STIDCBanIntroducershipRequest *)request handler:(void(^)(STIDCIntroducershipResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface STIDCStoreIntroducerApi : GRPCProtoService<STIDCStoreIntroducerApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
