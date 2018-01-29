#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/payment/PaymentUnionpay.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class PMCOMMPaymentResponse;
  @class PMUNPAYCreateUnionpayPaymentRequest;
  @class PMUNPAYPrepareUnionpayPaymentRequest;
  @class PMUNPAYPrepareUnionpayPaymentResponse;
#else
  #import "gedit/Common.pbobjc.h"
  #import "gedit/payment/PaymentCommon.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol PMUNPAYPayerInUnionpayApi <NSObject>

#pragma mark Prepare(PrepareUnionpayPaymentRequest) returns (PrepareUnionpayPaymentResponse)

/**
 * only called by me, 顾客扫码收银员的收款码后获取如果支付一定金额
 */
- (void)prepareWithRequest:(PMUNPAYPrepareUnionpayPaymentRequest *)request handler:(void(^)(PMUNPAYPrepareUnionpayPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * only called by me, 顾客扫码收银员的收款码后获取如果支付一定金额
 */
- (GRPCProtoCall *)RPCToPrepareWithRequest:(PMUNPAYPrepareUnionpayPaymentRequest *)request handler:(void(^)(PMUNPAYPrepareUnionpayPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Create(CreateUnionpayPaymentRequest) returns (PaymentResponse)

/**
 * only called by me, 顾客确定付款
 */
- (void)createWithRequest:(PMUNPAYCreateUnionpayPaymentRequest *)request handler:(void(^)(PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * only called by me, 顾客确定付款
 */
- (GRPCProtoCall *)RPCToCreateWithRequest:(PMUNPAYCreateUnionpayPaymentRequest *)request handler:(void(^)(PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface PMUNPAYPayerInUnionpayApi : GRPCProtoService<PMUNPAYPayerInUnionpayApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
