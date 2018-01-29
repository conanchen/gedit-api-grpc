#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/payment/PaymentInappPayer.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class PMCOMMPaymentResponse;
  @class PayerActiveInappCreatePayerInappPaymentRequest;
  @class PayerActiveInappGetMyPayeeCodeRequest;
  @class PayerActiveInappGetMyPayeeCodeResponse;
  @class PayerActiveInappGetPayeeCodeRequest;
  @class PayerActiveInappGetPayeeCodeResponse;
  @class PayerActiveInappPreparePayerInappPaymentRequest;
  @class PayerActiveInappPreparePayerInappPaymentResponse;
#else
  #import "gedit/Common.pbobjc.h"
  #import "gedit/payment/PaymentCommon.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol PayerActiveInappPayerActiveInappApi <NSObject>

#pragma mark GetMyPayeeCode(GetMyPayeeCodeRequest) returns (GetMyPayeeCodeResponse)

/**
 * 顾客主扫模式----START 收银员收款出示二维码    <------------> 顾客扫码付款 交互API
 * only called by me,例如收银员app调用本api生成收款码供顾客扫码支付
 */
- (void)getMyPayeeCodeWithRequest:(PayerActiveInappGetMyPayeeCodeRequest *)request handler:(void(^)(PayerActiveInappGetMyPayeeCodeResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * 顾客主扫模式----START 收银员收款出示二维码    <------------> 顾客扫码付款 交互API
 * only called by me,例如收银员app调用本api生成收款码供顾客扫码支付
 */
- (GRPCProtoCall *)RPCToGetMyPayeeCodeWithRequest:(PayerActiveInappGetMyPayeeCodeRequest *)request handler:(void(^)(PayerActiveInappGetMyPayeeCodeResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetPayeeCode(GetPayeeCodeRequest) returns (GetPayeeCodeResponse)

/**
 * 顾客端调用获取收银员收款码相关信息
 */
- (void)getPayeeCodeWithRequest:(PayerActiveInappGetPayeeCodeRequest *)request handler:(void(^)(PayerActiveInappGetPayeeCodeResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * 顾客端调用获取收银员收款码相关信息
 */
- (GRPCProtoCall *)RPCToGetPayeeCodeWithRequest:(PayerActiveInappGetPayeeCodeRequest *)request handler:(void(^)(PayerActiveInappGetPayeeCodeResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Prepare(PreparePayerInappPaymentRequest) returns (PreparePayerInappPaymentResponse)

/**
 * only called by me, 顾客扫码收银员的收款码后，如果支付一定金额将会获取多少积分返还等信息
 */
- (void)prepareWithRequest:(PayerActiveInappPreparePayerInappPaymentRequest *)request handler:(void(^)(PayerActiveInappPreparePayerInappPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * only called by me, 顾客扫码收银员的收款码后，如果支付一定金额将会获取多少积分返还等信息
 */
- (GRPCProtoCall *)RPCToPrepareWithRequest:(PayerActiveInappPreparePayerInappPaymentRequest *)request handler:(void(^)(PayerActiveInappPreparePayerInappPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Create(CreatePayerInappPaymentRequest) returns (PaymentResponse)

/**
 * only called by me, 顾客确定付款
 */
- (void)createWithRequest:(PayerActiveInappCreatePayerInappPaymentRequest *)request handler:(void(^)(PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * only called by me, 顾客确定付款
 */
- (GRPCProtoCall *)RPCToCreateWithRequest:(PayerActiveInappCreatePayerInappPaymentRequest *)request handler:(void(^)(PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface PayerActiveInappPayerActiveInappApi : GRPCProtoService<PayerActiveInappPayerActiveInappApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
