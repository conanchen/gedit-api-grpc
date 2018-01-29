#import "gedit/store/StoreOwner.pbrpc.h"
#import "gedit/store/StoreOwner.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation GDAStoreOwnerApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.store" serviceName:@"StoreOwnerApi"]);
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


#pragma mark Transfer(TransferOwnershipRequest) returns (OwnershipResponse)

/**
 * should be only used by me or authorized users(e.g. administrator)
 */
- (void)transferWithRequest:(GDATransferOwnershipRequest *)request handler:(void(^)(GDAOwnershipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToTransferWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * should be only used by me or authorized users(e.g. administrator)
 */
- (GRPCProtoCall *)RPCToTransferWithRequest:(GDATransferOwnershipRequest *)request handler:(void(^)(GDAOwnershipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Transfer"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAOwnershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListByOwner(ListOwnershipByOwnerRequest) returns (stream OwnershipResponse)

/**
 * should be only used by authorized users(e.g. administrator)
 */
- (void)listByOwnerWithRequest:(GDAListOwnershipByOwnerRequest *)request eventHandler:(void(^)(BOOL done, GDAOwnershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListByOwnerWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
/**
 * should be only used by authorized users(e.g. administrator)
 */
- (GRPCProtoCall *)RPCToListByOwnerWithRequest:(GDAListOwnershipByOwnerRequest *)request eventHandler:(void(^)(BOOL done, GDAOwnershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListByOwner"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAOwnershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListMyStore(ListMyStoreRequest) returns (stream OwnershipResponse)

/**
 * should be only used by me
 */
- (void)listMyStoreWithRequest:(GDAListMyStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAOwnershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListMyStoreWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
/**
 * should be only used by me
 */
- (GRPCProtoCall *)RPCToListMyStoreWithRequest:(GDAListMyStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAOwnershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListMyStore"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAOwnershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark FindOwnerByStore(FindOwnerByStoreRequest) returns (OwnershipResponse)

/**
 * 根据storeUuid找到店主的uuid
 */
- (void)findOwnerByStoreWithRequest:(GDAFindOwnerByStoreRequest *)request handler:(void(^)(GDAOwnershipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToFindOwnerByStoreWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * 根据storeUuid找到店主的uuid
 */
- (GRPCProtoCall *)RPCToFindOwnerByStoreWithRequest:(GDAFindOwnerByStoreRequest *)request handler:(void(^)(GDAOwnershipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"FindOwnerByStore"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAOwnershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
