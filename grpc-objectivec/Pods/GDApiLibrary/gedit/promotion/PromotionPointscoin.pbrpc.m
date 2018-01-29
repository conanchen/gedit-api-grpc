#import "gedit/promotion/PromotionPointscoin.pbrpc.h"
#import "gedit/promotion/PromotionPointscoin.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation PNTCPRMPointsCoinApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.promotion" serviceName:@"PointsCoinApi"]);
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


#pragma mark Prepare(PreparePointsCoinRequest) returns (PreparePointsCoinResponse)

- (void)prepareWithRequest:(PNTCPRMPreparePointsCoinRequest *)request handler:(void(^)(PNTCPRMPreparePointsCoinResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToPrepareWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToPrepareWithRequest:(PNTCPRMPreparePointsCoinRequest *)request handler:(void(^)(PNTCPRMPreparePointsCoinResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Prepare"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PNTCPRMPreparePointsCoinResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Buy(BuyPointsCoinRequest) returns (PointsCoinResponse)

- (void)buyWithRequest:(PNTCPRMBuyPointsCoinRequest *)request handler:(void(^)(PNTCPRMPointsCoinResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBuyWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToBuyWithRequest:(PNTCPRMBuyPointsCoinRequest *)request handler:(void(^)(PNTCPRMPointsCoinResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Buy"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PNTCPRMPointsCoinResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Get(GetPointsCoinRequest) returns (PointsCoinResponse)

- (void)getWithRequest:(PNTCPRMGetPointsCoinRequest *)request handler:(void(^)(PNTCPRMPointsCoinResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetWithRequest:(PNTCPRMGetPointsCoinRequest *)request handler:(void(^)(PNTCPRMPointsCoinResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Get"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PNTCPRMPointsCoinResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Search(SearchPointsCoinRequest) returns (stream PointsCoinResponse)

- (void)searchWithRequest:(PNTCPRMSearchPointsCoinRequest *)request eventHandler:(void(^)(BOOL done, PNTCPRMPointsCoinResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToSearchWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSearchWithRequest:(PNTCPRMSearchPointsCoinRequest *)request eventHandler:(void(^)(BOOL done, PNTCPRMPointsCoinResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"Search"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PNTCPRMPointsCoinResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark List(ListPointsCoinRequest) returns (stream PointsCoinResponse)

- (void)listWithRequest:(PNTCPRMListPointsCoinRequest *)request eventHandler:(void(^)(BOOL done, PNTCPRMPointsCoinResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListWithRequest:(PNTCPRMListPointsCoinRequest *)request eventHandler:(void(^)(BOOL done, PNTCPRMPointsCoinResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"List"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[PNTCPRMPointsCoinResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
