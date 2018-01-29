#import "gedit/payment/PaymentInappPayer.pbrpc.h"
#import "gedit/payment/PaymentInappPayer.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"
#import "gedit/payment/PaymentCommon.pbobjc.h"

@implementation PayerActiveInappPayerActiveInappApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.payment" serviceName:@"PayerActiveInappApi"]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark GetMyPayeeCode(GetMyPayeeCodeRequest) returns (GetMyPayeeCodeResponse)

/**
 * 顾客主扫模式----START 收银员收款出示二维码    <------------> 顾客扫码付款 交互API
 * only called by me,例如收银员app调用本api生成收款码供顾客扫码支付
 */
- (void)getMyPayeeCodeWithRequest:(PayerActiveInappGetMyPayeeCodeRequest *)request handler:(void(^)(PayerActiveInappGetMyPayeeCodeResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetMyPayeeCodeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * 顾客主扫模式----START 收银员收款出示二维码    <------------> 顾客扫码付款 交互API
 * only called by me,例如收银员app调用本api生成收款码供顾客扫码支付
 */
- (GRPCProtoCall *)RPCToGetMyPayeeCodeWithRequest:(PayerActiveInappGetMyPayeeCodeRequest *)request handler:(void(^)(PayerActiveInappGetMyPayeeCodeResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetMyPayeeCode"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PayerActiveInappGetMyPayeeCodeResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetPayeeCode(GetPayeeCodeRequest) returns (GetPayeeCodeResponse)

/**
 * 顾客端调用获取收银员收款码相关信息
 */
- (void)getPayeeCodeWithRequest:(PayerActiveInappGetPayeeCodeRequest *)request handler:(void(^)(PayerActiveInappGetPayeeCodeResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetPayeeCodeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * 顾客端调用获取收银员收款码相关信息
 */
- (GRPCProtoCall *)RPCToGetPayeeCodeWithRequest:(PayerActiveInappGetPayeeCodeRequest *)request handler:(void(^)(PayerActiveInappGetPayeeCodeResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetPayeeCode"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PayerActiveInappGetPayeeCodeResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Prepare(PreparePayerInappPaymentRequest) returns (PreparePayerInappPaymentResponse)

/**
 * only called by me, 顾客扫码收银员的收款码后，如果支付一定金额将会获取多少积分返还等信息
 */
- (void)prepareWithRequest:(PayerActiveInappPreparePayerInappPaymentRequest *)request handler:(void(^)(PayerActiveInappPreparePayerInappPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToPrepareWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * only called by me, 顾客扫码收银员的收款码后，如果支付一定金额将会获取多少积分返还等信息
 */
- (GRPCProtoCall *)RPCToPrepareWithRequest:(PayerActiveInappPreparePayerInappPaymentRequest *)request handler:(void(^)(PayerActiveInappPreparePayerInappPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Prepare"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PayerActiveInappPreparePayerInappPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Create(CreatePayerInappPaymentRequest) returns (PaymentResponse)

/**
 * only called by me, 顾客确定付款
 */
- (void)createWithRequest:(PayerActiveInappCreatePayerInappPaymentRequest *)request handler:(void(^)(PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * only called by me, 顾客确定付款
 */
- (GRPCProtoCall *)RPCToCreateWithRequest:(PayerActiveInappCreatePayerInappPaymentRequest *)request handler:(void(^)(PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Create"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PMCOMMPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
