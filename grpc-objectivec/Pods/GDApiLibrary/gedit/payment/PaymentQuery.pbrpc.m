#import "gedit/payment/PaymentQuery.pbrpc.h"
#import "gedit/payment/PaymentQuery.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/payment/PaymentCommon.pbobjc.h"

@implementation GDAPaymentQueryApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.payment" serviceName:@"PaymentQueryApi"]);
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


#pragma mark Get(GetPaymentRequest) returns (PaymentResponse)

- (void)getWithRequest:(GDAGetPaymentRequest *)request handler:(void(^)(GDAPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetWithRequest:(GDAGetPaymentRequest *)request handler:(void(^)(GDAPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Get"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark List(ListPaymentRequest) returns (stream PaymentResponse)

- (void)listWithRequest:(GDAListPaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListWithRequest:(GDAListPaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"List"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListMyPayerPayment(ListMyPayerPaymentRequest) returns (stream PaymentResponse)

/**
 * only called by me，获取我的付款单
 */
- (void)listMyPayerPaymentWithRequest:(GDAListMyPayerPaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListMyPayerPaymentWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
/**
 * only called by me，获取我的付款单
 */
- (GRPCProtoCall *)RPCToListMyPayerPaymentWithRequest:(GDAListMyPayerPaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListMyPayerPayment"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListMyPayeePayment(ListMyPayeePaymentRequest) returns (stream PaymentResponse)

/**
 * only called by me，获取我的收款单
 */
- (void)listMyPayeePaymentWithRequest:(GDAListMyPayeePaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListMyPayeePaymentWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
/**
 * only called by me，获取我的收款单
 */
- (GRPCProtoCall *)RPCToListMyPayeePaymentWithRequest:(GDAListMyPayeePaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListMyPayeePayment"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
