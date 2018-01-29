#import "gedit/store/StoreProfile.pbrpc.h"
#import "gedit/store/StoreProfile.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation GDAStoreProfileApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.store" serviceName:@"StoreProfileApi"]);
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


#pragma mark Create(CreateStoreRequest) returns (CreateStoreResponse)

- (void)createWithRequest:(GDACreateStoreRequest *)request handler:(void(^)(GDACreateStoreResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCreateWithRequest:(GDACreateStoreRequest *)request handler:(void(^)(GDACreateStoreResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Create"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDACreateStoreResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Update(UpdateStoreRequest) returns (UpdateStoreResponse)

- (void)updateWithRequest:(GDAUpdateStoreRequest *)request handler:(void(^)(GDAUpdateStoreResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpdateWithRequest:(GDAUpdateStoreRequest *)request handler:(void(^)(GDAUpdateStoreResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Update"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAUpdateStoreResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UpsertWithAampPoi(UpsertWithAampPoiRequest) returns (UpsertWithAampPoiResponse)

- (void)upsertWithAampPoiWithRequest:(GDAUpsertWithAampPoiRequest *)request handler:(void(^)(GDAUpsertWithAampPoiResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpsertWithAampPoiWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpsertWithAampPoiWithRequest:(GDAUpsertWithAampPoiRequest *)request handler:(void(^)(GDAUpsertWithAampPoiResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpsertWithAampPoi"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAUpsertWithAampPoiResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Get(GetStoreRequest) returns (StoreProfileResponse)

- (void)getWithRequest:(GDAGetStoreRequest *)request handler:(void(^)(GDAStoreProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetWithRequest:(GDAGetStoreRequest *)request handler:(void(^)(GDAStoreProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Get"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAStoreProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark List(ListStoreRequest) returns (stream StoreProfileResponse)

- (void)listWithRequest:(GDAListStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAStoreProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListWithRequest:(GDAListStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAStoreProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"List"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAStoreProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark Ban(BanStoreRequest) returns (BanStoreResponse)

- (void)banWithRequest:(GDABanStoreRequest *)request handler:(void(^)(GDABanStoreResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBanWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToBanWithRequest:(GDABanStoreRequest *)request handler:(void(^)(GDABanStoreResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Ban"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDABanStoreResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
