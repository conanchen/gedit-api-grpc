#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/promotion/PromotionInvestpayment.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDAAddInvestPaymentRequest;
  @class GDAGetInvestPaymentRequest;
  @class GDAInvestPaymentResponse;
  @class GDAListInvestPaymentRequest;
  @class GDAPreparInvestPaymentRequest;
  @class GDAPrepareInvestPaymentResponse;
  @class GDASearchInvestPaymentRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAInvestPaymentApi <NSObject>

#pragma mark Prepare(PreparInvestPaymentRequest) returns (PrepareInvestPaymentResponse)

- (void)prepareWithRequest:(GDAPreparInvestPaymentRequest *)request handler:(void(^)(GDAPrepareInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToPrepareWithRequest:(GDAPreparInvestPaymentRequest *)request handler:(void(^)(GDAPrepareInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Add(AddInvestPaymentRequest) returns (InvestPaymentResponse)

- (void)addWithRequest:(GDAAddInvestPaymentRequest *)request handler:(void(^)(GDAInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddWithRequest:(GDAAddInvestPaymentRequest *)request handler:(void(^)(GDAInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Get(GetInvestPaymentRequest) returns (InvestPaymentResponse)

- (void)getWithRequest:(GDAGetInvestPaymentRequest *)request handler:(void(^)(GDAInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(GDAGetInvestPaymentRequest *)request handler:(void(^)(GDAInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Search(SearchInvestPaymentRequest) returns (stream InvestPaymentResponse)

- (void)searchWithRequest:(GDASearchInvestPaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAInvestPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToSearchWithRequest:(GDASearchInvestPaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAInvestPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark List(ListInvestPaymentRequest) returns (stream InvestPaymentResponse)

- (void)listWithRequest:(GDAListInvestPaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAInvestPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(GDAListInvestPaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAInvestPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAInvestPaymentApi : GRPCProtoService<GDAInvestPaymentApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
