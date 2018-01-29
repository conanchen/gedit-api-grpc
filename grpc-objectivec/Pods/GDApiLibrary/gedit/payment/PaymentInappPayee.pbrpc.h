#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/payment/PaymentInappPayee.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class PMCOMMPaymentResponse;
  @class PayerPassiveInappCreatePayeeInappPaymentRequest;
  @class PayerPassiveInappGetMyPayerCodeRequest;
  @class PayerPassiveInappGetMyPayerCodeResponse;
  @class PayerPassiveInappGetPayerCodeRequest;
  @class PayerPassiveInappGetPayerCodeResponse;
  @class PayerPassiveInappPreparePayeeInappPaymentRequest;
  @class PayerPassiveInappPreparePayeeInappPaymentResponse;
#else
  #import "gedit/Common.pbobjc.h"
  #import "gedit/payment/PaymentCommon.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol PayerPassiveInappPayerPassiveInappApi <NSObject>

#pragma mark GetMyPayerCode(GetMyPayerCodeRequest) returns (GetMyPayerCodeResponse)

/**
 * 顾客被扫模式----START 收银员打开扫一扫    <------------> 顾客出示付款码 交互API
 * only called by me,例如顾客app调用本api生成付款码供收银员扫码收款
 */
- (void)getMyPayerCodeWithRequest:(PayerPassiveInappGetMyPayerCodeRequest *)request handler:(void(^)(PayerPassiveInappGetMyPayerCodeResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * 顾客被扫模式----START 收银员打开扫一扫    <------------> 顾客出示付款码 交互API
 * only called by me,例如顾客app调用本api生成付款码供收银员扫码收款
 */
- (GRPCProtoCall *)RPCToGetMyPayerCodeWithRequest:(PayerPassiveInappGetMyPayerCodeRequest *)request handler:(void(^)(PayerPassiveInappGetMyPayerCodeResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetPayerCode(GetPayerCodeRequest) returns (GetPayerCodeResponse)

/**
 * 收银员端调用获取顾客付款码相关信息
 */
- (void)getPayerCodeWithRequest:(PayerPassiveInappGetPayerCodeRequest *)request handler:(void(^)(PayerPassiveInappGetPayerCodeResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * 收银员端调用获取顾客付款码相关信息
 */
- (GRPCProtoCall *)RPCToGetPayerCodeWithRequest:(PayerPassiveInappGetPayerCodeRequest *)request handler:(void(^)(PayerPassiveInappGetPayerCodeResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Prepare(PreparePayeeInappPaymentRequest) returns (PreparePayeeInappPaymentResponse)

/**
 * only called by me, 收银员扫描顾客付款码后，如果收到一定金额将会获取多少积分返还、邀请顾客获取返还积分等信息
 */
- (void)prepareWithRequest:(PayerPassiveInappPreparePayeeInappPaymentRequest *)request handler:(void(^)(PayerPassiveInappPreparePayeeInappPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * only called by me, 收银员扫描顾客付款码后，如果收到一定金额将会获取多少积分返还、邀请顾客获取返还积分等信息
 */
- (GRPCProtoCall *)RPCToPrepareWithRequest:(PayerPassiveInappPreparePayeeInappPaymentRequest *)request handler:(void(^)(PayerPassiveInappPreparePayeeInappPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Create(CreatePayeeInappPaymentRequest) returns (PaymentResponse)

/**
 * only called by me, 收银员确定收款
 */
- (void)createWithRequest:(PayerPassiveInappCreatePayeeInappPaymentRequest *)request handler:(void(^)(PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * only called by me, 收银员确定收款
 */
- (GRPCProtoCall *)RPCToCreateWithRequest:(PayerPassiveInappCreatePayeeInappPaymentRequest *)request handler:(void(^)(PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface PayerPassiveInappPayerPassiveInappApi : GRPCProtoService<PayerPassiveInappPayerPassiveInappApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
