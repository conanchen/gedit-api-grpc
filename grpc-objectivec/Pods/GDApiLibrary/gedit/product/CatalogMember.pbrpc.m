#import "gedit/product/CatalogMember.pbrpc.h"
#import "gedit/product/CatalogMember.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation GDACatalogMemberApi

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

- (void)getWithRequest:(GDAGetCatalogMemberRequest *)request handler:(void(^)(GDACatalogMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetWithRequest:(GDAGetCatalogMemberRequest *)request handler:(void(^)(GDACatalogMemberResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Get"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDACatalogMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark List(ListCatalogMemberRequest) returns (stream CatalogMemberResponse)

- (void)listWithRequest:(GDAListCatalogMemberRequest *)request eventHandler:(void(^)(BOOL done, GDACatalogMemberResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListWithRequest:(GDAListCatalogMemberRequest *)request eventHandler:(void(^)(BOOL done, GDACatalogMemberResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"List"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDACatalogMemberResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
