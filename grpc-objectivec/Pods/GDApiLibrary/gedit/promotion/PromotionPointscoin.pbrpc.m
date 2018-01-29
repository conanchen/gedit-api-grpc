#import "gedit/promotion/PromotionPointscoin.pbrpc.h"
#import "gedit/promotion/PromotionPointscoin.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation GDAPointsCoinApi

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

- (void)prepareWithRequest:(GDAPreparePointsCoinRequest *)request handler:(void(^)(GDAPreparePointsCoinResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToPrepareWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToPrepareWithRequest:(GDAPreparePointsCoinRequest *)request handler:(void(^)(GDAPreparePointsCoinResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Prepare"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPreparePointsCoinResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Buy(BuyPointsCoinRequest) returns (PointsCoinResponse)

- (void)buyWithRequest:(GDABuyPointsCoinRequest *)request handler:(void(^)(GDAPointsCoinResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBuyWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToBuyWithRequest:(GDABuyPointsCoinRequest *)request handler:(void(^)(GDAPointsCoinResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Buy"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPointsCoinResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Get(GetPointsCoinRequest) returns (PointsCoinResponse)

- (void)getWithRequest:(GDAGetPointsCoinRequest *)request handler:(void(^)(GDAPointsCoinResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetWithRequest:(GDAGetPointsCoinRequest *)request handler:(void(^)(GDAPointsCoinResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Get"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPointsCoinResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Search(SearchPointsCoinRequest) returns (stream PointsCoinResponse)

- (void)searchWithRequest:(GDASearchPointsCoinRequest *)request eventHandler:(void(^)(BOOL done, GDAPointsCoinResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToSearchWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSearchWithRequest:(GDASearchPointsCoinRequest *)request eventHandler:(void(^)(BOOL done, GDAPointsCoinResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"Search"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPointsCoinResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark List(ListPointsCoinRequest) returns (stream PointsCoinResponse)

- (void)listWithRequest:(GDAListPointsCoinRequest *)request eventHandler:(void(^)(BOOL done, GDAPointsCoinResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListWithRequest:(GDAListPointsCoinRequest *)request eventHandler:(void(^)(BOOL done, GDAPointsCoinResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"List"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPointsCoinResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
