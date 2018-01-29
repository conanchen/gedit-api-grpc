#import "gedit/product/Catalog.pbrpc.h"
#import "gedit/product/Catalog.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation GDACatalogApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.product" serviceName:@"CatalogApi"]);
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


#pragma mark Get(GetCatalogRequest) returns (CatalogResponse)

- (void)getWithRequest:(GDAGetCatalogRequest *)request handler:(void(^)(GDACatalogResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetWithRequest:(GDAGetCatalogRequest *)request handler:(void(^)(GDACatalogResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Get"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDACatalogResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark List(ListCatalogRequest) returns (stream CatalogResponse)

- (void)listWithRequest:(GDAListCatalogRequest *)request eventHandler:(void(^)(BOOL done, GDACatalogResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListWithRequest:(GDAListCatalogRequest *)request eventHandler:(void(^)(BOOL done, GDACatalogResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"List"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDACatalogResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
