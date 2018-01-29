#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/promotion/PromotionInvestpayment.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class IVSTPRMAddInvestPaymentRequest;
  @class IVSTPRMGetInvestPaymentRequest;
  @class IVSTPRMInvestPaymentResponse;
  @class IVSTPRMListInvestPaymentRequest;
  @class IVSTPRMPreparInvestPaymentRequest;
  @class IVSTPRMPrepareInvestPaymentResponse;
  @class IVSTPRMSearchInvestPaymentRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol IVSTPRMInvestPaymentApi <NSObject>

#pragma mark Prepare(PreparInvestPaymentRequest) returns (PrepareInvestPaymentResponse)

- (void)prepareWithRequest:(IVSTPRMPreparInvestPaymentRequest *)request handler:(void(^)(IVSTPRMPrepareInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToPrepareWithRequest:(IVSTPRMPreparInvestPaymentRequest *)request handler:(void(^)(IVSTPRMPrepareInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Add(AddInvestPaymentRequest) returns (InvestPaymentResponse)

- (void)addWithRequest:(IVSTPRMAddInvestPaymentRequest *)request handler:(void(^)(IVSTPRMInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddWithRequest:(IVSTPRMAddInvestPaymentRequest *)request handler:(void(^)(IVSTPRMInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Get(GetInvestPaymentRequest) returns (InvestPaymentResponse)

- (void)getWithRequest:(IVSTPRMGetInvestPaymentRequest *)request handler:(void(^)(IVSTPRMInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(IVSTPRMGetInvestPaymentRequest *)request handler:(void(^)(IVSTPRMInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Search(SearchInvestPaymentRequest) returns (stream InvestPaymentResponse)

- (void)searchWithRequest:(IVSTPRMSearchInvestPaymentRequest *)request eventHandler:(void(^)(BOOL done, IVSTPRMInvestPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToSearchWithRequest:(IVSTPRMSearchInvestPaymentRequest *)request eventHandler:(void(^)(BOOL done, IVSTPRMInvestPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark List(ListInvestPaymentRequest) returns (stream InvestPaymentResponse)

- (void)listWithRequest:(IVSTPRMListInvestPaymentRequest *)request eventHandler:(void(^)(BOOL done, IVSTPRMInvestPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(IVSTPRMListInvestPaymentRequest *)request eventHandler:(void(^)(BOOL done, IVSTPRMInvestPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface IVSTPRMInvestPaymentApi : GRPCProtoService<IVSTPRMInvestPaymentApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
