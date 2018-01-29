#import "gedit/store/StoreWorker.pbrpc.h"
#import "gedit/store/StoreWorker.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation GDAStoreWorkerApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.store" serviceName:@"StoreWorkerApi"]);
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


#pragma mark Add(AddWorkershipRequest) returns (WorkshipResponse)

- (void)addWithRequest:(GDAAddWorkershipRequest *)request handler:(void(^)(GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddWithRequest:(GDAAddWorkershipRequest *)request handler:(void(^)(GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Add"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAWorkshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListByStore(ListWorkshipByStoreRequest) returns (stream WorkshipResponse)

- (void)listByStoreWithRequest:(GDAListWorkshipByStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListByStoreWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListByStoreWithRequest:(GDAListWorkshipByStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListByStore"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAWorkshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListByWorker(ListWorkshipByWorkerRequest) returns (stream WorkshipResponse)

- (void)listByWorkerWithRequest:(GDAListWorkshipByWorkerRequest *)request eventHandler:(void(^)(BOOL done, GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListByWorkerWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListByWorkerWithRequest:(GDAListWorkshipByWorkerRequest *)request eventHandler:(void(^)(BOOL done, GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListByWorker"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAWorkshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListMyWorkinStore(ListMyWorkinStoreRequest) returns (stream WorkshipResponse)

/**
 * should be only used by me
 */
- (void)listMyWorkinStoreWithRequest:(GDAListMyWorkinStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListMyWorkinStoreWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
/**
 * should be only used by me
 */
- (GRPCProtoCall *)RPCToListMyWorkinStoreWithRequest:(GDAListMyWorkinStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListMyWorkinStore"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAWorkshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark GetMyCurrentWorkinStore(GetMyCurrentWorkinStoreRequest) returns (WorkshipResponse)

/**
 * 收银员app端调用
 */
- (void)getMyCurrentWorkinStoreWithRequest:(GDAGetMyCurrentWorkinStoreRequest *)request handler:(void(^)(GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetMyCurrentWorkinStoreWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * 收银员app端调用
 */
- (GRPCProtoCall *)RPCToGetMyCurrentWorkinStoreWithRequest:(GDAGetMyCurrentWorkinStoreRequest *)request handler:(void(^)(GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetMyCurrentWorkinStore"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAWorkshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Ban(BanWorkshipRequest) returns (WorkshipResponse)

- (void)banWithRequest:(GDABanWorkshipRequest *)request handler:(void(^)(GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBanWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToBanWithRequest:(GDABanWorkshipRequest *)request handler:(void(^)(GDAWorkshipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Ban"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAWorkshipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
