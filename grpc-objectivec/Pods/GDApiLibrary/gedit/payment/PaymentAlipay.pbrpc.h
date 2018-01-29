#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/payment/PaymentAlipay.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class PMALIPAYCreateAlipayPaymentRequest;
  @class PMALIPAYPreparAlipayPaymentRequest;
  @class PMALIPAYPrepareAlipayPaymentResponse;
  @class PMCOMMPaymentResponse;
#else
  #import "gedit/Common.pbobjc.h"
  #import "gedit/payment/PaymentCommon.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol PMALIPAYPayerInAlipayApi <NSObject>

#pragma mark Prepare(PreparAlipayPaymentRequest) returns (PrepareAlipayPaymentResponse)

/**
 * only called by me, 顾客扫码收银员的收款码后获取如果支付一定金额
 */
- (void)prepareWithRequest:(PMALIPAYPreparAlipayPaymentRequest *)request handler:(void(^)(PMALIPAYPrepareAlipayPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * only called by me, 顾客扫码收银员的收款码后获取如果支付一定金额
 */
- (GRPCProtoCall *)RPCToPrepareWithRequest:(PMALIPAYPreparAlipayPaymentRequest *)request handler:(void(^)(PMALIPAYPrepareAlipayPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Create(CreateAlipayPaymentRequest) returns (PaymentResponse)

/**
 * only called by me, 顾客确定付款
 */
- (void)createWithRequest:(PMALIPAYCreateAlipayPaymentRequest *)request handler:(void(^)(PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * only called by me, 顾客确定付款
 */
- (GRPCProtoCall *)RPCToCreateWithRequest:(PMALIPAYCreateAlipayPaymentRequest *)request handler:(void(^)(PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface PMALIPAYPayerInAlipayApi : GRPCProtoService<PMALIPAYPayerInAlipayApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
