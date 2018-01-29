#import "gedit/product/CatalogMember.pbrpc.h"
#import "gedit/product/CatalogMember.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation CTGMMBCatalogMemberApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.product" serviceName:@"CatalogMemberApi"]);
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


#pragma mark Get(GetCatalogMemberRequest) returns (CatalogMemberResponse)

- (void)getWithRequest:(CTGMMBGetCatalogMemberRequest *)request handler:(void(^)(CTGMMBCatalogMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetWithRequest:(CTGMMBGetCatalogMemberRequest *)request handler:(void(^)(CTGMMBCatalogMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Get"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[CTGMMBCatalogMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark List(ListCatalogMemberRequest) returns (stream CatalogMemberResponse)

- (void)listWithRequest:(CTGMMBListCatalogMemberRequest *)request eventHandler:(void(^)(BOOL done, CTGMMBCatalogMemberResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListWithRequest:(CTGMMBListCatalogMemberRequest *)request eventHandler:(void(^)(BOOL done, CTGMMBCatalogMemberResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"List"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[CTGMMBCatalogMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
