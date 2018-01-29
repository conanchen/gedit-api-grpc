#import "gedit/payment/PaymentUnionpay.pbrpc.h"
#import "gedit/payment/PaymentUnionpay.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"
#import "gedit/payment/PaymentCommon.pbobjc.h"

@implementation GDAPayerInUnionpayApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.payment" serviceName:@"PayerInUnionpayApi"]);
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


#pragma mark Prepare(PrepareUnionpayPaymentRequest) returns (PrepareUnionpayPaymentResponse)

/**
 * only called by me, 顾客扫码收银员的收款码后获取如果支付一定金额
 */
- (void)prepareWithRequest:(GDAPrepareUnionpayPaymentRequest *)request handler:(void(^)(GDAPrepareUnionpayPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToPrepareWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * only called by me, 顾客扫码收银员的收款码后获取如果支付一定金额
 */
- (GRPCProtoCall *)RPCToPrepareWithRequest:(GDAPrepareUnionpayPaymentRequest *)request handler:(void(^)(GDAPrepareUnionpayPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Prepare"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPrepareUnionpayPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Create(CreateUnionpayPaymentRequest) returns (PaymentResponse)

/**
 * only called by me, 顾客确定付款
 */
- (void)createWithRequest:(GDACreateUnionpayPaymentRequest *)request handler:(void(^)(GDAPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * only called by me, 顾客确定付款
 */
- (GRPCProtoCall *)RPCToCreateWithRequest:(GDACreateUnionpayPaymentRequest *)request handler:(void(^)(GDAPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Create"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
