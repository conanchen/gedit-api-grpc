#import "gedit/payment/PaymentInappPayer.pbrpc.h"
#import "gedit/payment/PaymentInappPayer.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"
#import "gedit/payment/PaymentCommon.pbobjc.h"

@implementation GDAPayerActiveInappApi

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
- (void)getMyPayeeCodeWithRequest:(GDAGetMyPayeeCodeRequest *)request handler:(void(^)(GDAGetMyPayeeCodeResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetMyPayeeCodeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * 顾客主扫模式----START 收银员收款出示二维码    <------------> 顾客扫码付款 交互API
 * only called by me,例如收银员app调用本api生成收款码供顾客扫码支付
 */
- (GRPCProtoCall *)RPCToGetMyPayeeCodeWithRequest:(GDAGetMyPayeeCodeRequest *)request handler:(void(^)(GDAGetMyPayeeCodeResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetMyPayeeCode"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAGetMyPayeeCodeResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetPayeeCode(GetPayeeCodeRequest) returns (GetPayeeCodeResponse)

/**
 * 顾客端调用获取收银员收款码相关信息
 */
- (void)getPayeeCodeWithRequest:(GDAGetPayeeCodeRequest *)request handler:(void(^)(GDAGetPayeeCodeResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetPayeeCodeWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * 顾客端调用获取收银员收款码相关信息
 */
- (GRPCProtoCall *)RPCToGetPayeeCodeWithRequest:(GDAGetPayeeCodeRequest *)request handler:(void(^)(GDAGetPayeeCodeResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetPayeeCode"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAGetPayeeCodeResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Prepare(PreparePayerInappPaymentRequest) returns (PreparePayerInappPaymentResponse)

/**
 * only called by me, 顾客扫码收银员的收款码后，如果支付一定金额将会获取多少积分返还等信息
 */
- (void)prepareWithRequest:(GDAPreparePayerInappPaymentRequest *)request handler:(void(^)(GDAPreparePayerInappPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToPrepareWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * only called by me, 顾客扫码收银员的收款码后，如果支付一定金额将会获取多少积分返还等信息
 */
- (GRPCProtoCall *)RPCToPrepareWithRequest:(GDAPreparePayerInappPaymentRequest *)request handler:(void(^)(GDAPreparePayerInappPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Prepare"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPreparePayerInappPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Create(CreatePayerInappPaymentRequest) returns (PaymentResponse)

/**
 * only called by me, 顾客确定付款
 */
- (void)createWithRequest:(GDACreatePayerInappPaymentRequest *)request handler:(void(^)(GDAPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * only called by me, 顾客确定付款
 */
- (GRPCProtoCall *)RPCToCreateWithRequest:(GDACreatePayerInappPaymentRequest *)request handler:(void(^)(GDAPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Create"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
