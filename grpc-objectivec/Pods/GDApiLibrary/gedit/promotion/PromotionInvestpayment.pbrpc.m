#import "gedit/promotion/PromotionInvestpayment.pbrpc.h"
#import "gedit/promotion/PromotionInvestpayment.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation GDAInvestPaymentApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.promotion" serviceName:@"InvestPaymentApi"]);
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


#pragma mark Prepare(PreparInvestPaymentRequest) returns (PrepareInvestPaymentResponse)

- (void)prepareWithRequest:(GDAPreparInvestPaymentRequest *)request handler:(void(^)(GDAPrepareInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToPrepareWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToPrepareWithRequest:(GDAPreparInvestPaymentRequest *)request handler:(void(^)(GDAPrepareInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Prepare"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPrepareInvestPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Add(AddInvestPaymentRequest) returns (InvestPaymentResponse)

- (void)addWithRequest:(GDAAddInvestPaymentRequest *)request handler:(void(^)(GDAInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddWithRequest:(GDAAddInvestPaymentRequest *)request handler:(void(^)(GDAInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Add"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAInvestPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Get(GetInvestPaymentRequest) returns (InvestPaymentResponse)

- (void)getWithRequest:(GDAGetInvestPaymentRequest *)request handler:(void(^)(GDAInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetWithRequest:(GDAGetInvestPaymentRequest *)request handler:(void(^)(GDAInvestPaymentResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Get"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAInvestPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Search(SearchInvestPaymentRequest) returns (stream InvestPaymentResponse)

- (void)searchWithRequest:(GDASearchInvestPaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAInvestPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToSearchWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSearchWithRequest:(GDASearchInvestPaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAInvestPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"Search"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAInvestPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark List(ListInvestPaymentRequest) returns (stream InvestPaymentResponse)

- (void)listWithRequest:(GDAListInvestPaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAInvestPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListWithRequest:(GDAListInvestPaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAInvestPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"List"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAInvestPaymentResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
