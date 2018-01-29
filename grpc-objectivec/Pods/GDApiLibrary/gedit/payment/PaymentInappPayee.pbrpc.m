#import "gedit/payment/PaymentInappPayee.pbrpc.h"
#import "gedit/payment/PaymentInappPayee.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"
#import "gedit/payment/PaymentCommon.pbobjc.h"

@implementation PayerPassiveInappPayerPassiveInappApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.payment" serviceName:@"PayerPassiveInappApi"]);
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


#pragma mark GetMyPayerCode(GetMyPayerCodeRequest) returns (GetMyPayerCodeResponse)

/**
 * 顾客被扫模式----START 收银员打开扫一扫    <------------> 顾客出示付款码 交互API
 * only called by me,例如顾客app调用本api生成付款码供收银员扫码收款
 */
- (void)getMyPayerCodeWithRequest:(PayerPassiveInappGetMyPayerCodeRequest *)request handler:(void(^)(PayerPassiveInappGetMyPayerCodeResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetMyPayerCodeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * 顾客被扫模式----START 收银员打开扫一扫    <------------> 顾客出示付款码 交互API
 * only called by me,例如顾客app调用本api生成付款码供收银员扫码收款
 */
- (GRPCProtoCall *)RPCToGetMyPayerCodeWithRequest:(PayerPassiveInappGetMyPayerCodeRequest *)request handler:(void(^)(PayerPassiveInappGetMyPayerCodeResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetMyPayerCode"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PayerPassiveInappGetMyPayerCodeResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetPayerCode(GetPayerCodeRequest) returns (GetPayerCodeResponse)

/**
 * 收银员端调用获取顾客付款码相关信息
 */
- (void)getPayerCodeWithRequest:(PayerPassiveInappGetPayerCodeRequest *)request handler:(void(^)(PayerPassiveInappGetPayerCodeResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetPayerCodeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * 收银员端调用获取顾客付款码相关信息
 */
- (GRPCProtoCall *)RPCToGetPayerCodeWithRequest:(PayerPassiveInappGetPayerCodeRequest *)request handler:(void(^)(PayerPassiveInappGetPayerCodeResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetPayerCode"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PayerPassiveInappGetPayerCodeResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Prepare(PreparePayeeInappPaymentRequest) returns (PreparePayeeInappPaymentResponse)

/**
 * only called by me, 收银员扫描顾客付款码后，如果收到一定金额将会获取多少积分返还、邀请顾客获取返还积分等信息
 */
- (void)prepareWithRequest:(PayerPassiveInappPreparePayeeInappPaymentRequest *)request handler:(void(^)(PayerPassiveInappPreparePayeeInappPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToPrepareWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * only called by me, 收银员扫描顾客付款码后，如果收到一定金额将会获取多少积分返还、邀请顾客获取返还积分等信息
 */
- (GRPCProtoCall *)RPCToPrepareWithRequest:(PayerPassiveInappPreparePayeeInappPaymentRequest *)request handler:(void(^)(PayerPassiveInappPreparePayeeInappPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Prepare"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PayerPassiveInappPreparePayeeInappPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Create(CreatePayeeInappPaymentRequest) returns (PaymentResponse)

/**
 * only called by me, 收银员确定收款
 */
- (void)createWithRequest:(PayerPassiveInappCreatePayeeInappPaymentRequest *)request handler:(void(^)(PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * only called by me, 收银员确定收款
 */
- (GRPCProtoCall *)RPCToCreateWithRequest:(PayerPassiveInappCreatePayeeInappPaymentRequest *)request handler:(void(^)(PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Create"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PMCOMMPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
