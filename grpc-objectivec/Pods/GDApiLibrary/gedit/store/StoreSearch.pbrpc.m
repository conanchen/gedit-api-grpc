#import "gedit/store/StoreSearch.pbrpc.h"
#import "gedit/store/StoreSearch.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation GDAStoreSearchApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.store" serviceName:@"StoreSearchApi"]);
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


#pragma mark Index(IndexStoreRequest) returns (IndexStoreResponse)

- (void)indexWithRequest:(GDAIndexStoreRequest *)request handler:(void(^)(GDAIndexStoreResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToIndexWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToIndexWithRequest:(GDAIndexStoreRequest *)request handler:(void(^)(GDAIndexStoreResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Index"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAIndexStoreResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Delete(DeleteStoreRequest) returns (DeleteStoreResponse)

- (void)deleteWithRequest:(GDADeleteStoreRequest *)request handler:(void(^)(GDADeleteStoreResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToDeleteWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToDeleteWithRequest:(GDADeleteStoreRequest *)request handler:(void(^)(GDADeleteStoreResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Delete"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDADeleteStoreResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Search(SearchStoreRequest) returns (stream SearchStoreResponse)

- (void)searchWithRequest:(GDASearchStoreRequest *)request eventHandler:(void(^)(BOOL done, GDASearchStoreResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToSearchWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToSearchWithRequest:(GDASearchStoreRequest *)request eventHandler:(void(^)(BOOL done, GDASearchStoreResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"Search"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDASearchStoreResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
