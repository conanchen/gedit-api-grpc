#import "gedit/store/StoreProfile.pbrpc.h"
#import "gedit/store/StoreProfile.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation STPRFStoreProfileApi

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

- (void)createWithRequest:(STPRFCreateStoreRequest *)request handler:(void(^)(STPRFCreateStoreResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToCreateWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToCreateWithRequest:(STPRFCreateStoreRequest *)request handler:(void(^)(STPRFCreateStoreResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Create"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STPRFCreateStoreResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Update(UpdateStoreRequest) returns (UpdateStoreResponse)

- (void)updateWithRequest:(STPRFUpdateStoreRequest *)request handler:(void(^)(STPRFUpdateStoreResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpdateWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpdateWithRequest:(STPRFUpdateStoreRequest *)request handler:(void(^)(STPRFUpdateStoreResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Update"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STPRFUpdateStoreResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark UpsertWithAampPoi(UpsertWithAampPoiRequest) returns (UpsertWithAampPoiResponse)

- (void)upsertWithAampPoiWithRequest:(STPRFUpsertWithAampPoiRequest *)request handler:(void(^)(STPRFUpsertWithAampPoiResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpsertWithAampPoiWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpsertWithAampPoiWithRequest:(STPRFUpsertWithAampPoiRequest *)request handler:(void(^)(STPRFUpsertWithAampPoiResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpsertWithAampPoi"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STPRFUpsertWithAampPoiResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark Get(GetStoreRequest) returns (StoreProfileResponse)

- (void)getWithRequest:(STPRFGetStoreRequest *)request handler:(void(^)(STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetWithRequest:(STPRFGetStoreRequest *)request handler:(void(^)(STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Get"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STPRFStoreProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark List(ListStoreRequest) returns (stream StoreProfileResponse)

- (void)listWithRequest:(STPRFListStoreRequest *)request eventHandler:(void(^)(BOOL done, STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListWithRequest:(STPRFListStoreRequest *)request eventHandler:(void(^)(BOOL done, STPRFStoreProfileResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"List"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STPRFStoreProfileResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark Ban(BanStoreRequest) returns (BanStoreResponse)

- (void)banWithRequest:(STPRFBanStoreRequest *)request handler:(void(^)(STPRFBanStoreResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBanWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToBanWithRequest:(STPRFBanStoreRequest *)request handler:(void(^)(STPRFBanStoreResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Ban"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[STPRFBanStoreResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
