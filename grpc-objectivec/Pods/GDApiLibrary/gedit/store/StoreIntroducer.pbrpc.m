#import "gedit/store/StoreIntroducer.pbrpc.h"
#import "gedit/store/StoreIntroducer.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation GDAStoreIntroducerApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.store" serviceName:@"StoreIntroducerApi"]);
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


#pragma mark Add(AddIntroducershipRequest) returns (IntroducershipResponse)

- (void)addWithRequest:(GDAAddIntroducershipRequest *)request handler:(void(^)(GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToAddWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToAddWithRequest:(GDAAddIntroducershipRequest *)request handler:(void(^)(GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Add"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAIntroducershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListByStore(ListIntroducershipByStoreRequest) returns (stream IntroducershipResponse)

- (void)listByStoreWithRequest:(GDAListIntroducershipByStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListByStoreWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListByStoreWithRequest:(GDAListIntroducershipByStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListByStore"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAIntroducershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListByIntroducer(ListIntroducershipByIntroducerRequest) returns (stream IntroducershipResponse)

- (void)listByIntroducerWithRequest:(GDAListIntroducershipByIntroducerRequest *)request eventHandler:(void(^)(BOOL done, GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListByIntroducerWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListByIntroducerWithRequest:(GDAListIntroducershipByIntroducerRequest *)request eventHandler:(void(^)(BOOL done, GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListByIntroducer"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAIntroducershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListMyIntroducedStore(ListMyIntroducedStoreRequest) returns (stream IntroducershipResponse)

/**
 * should be only used by me
 */
- (void)listMyIntroducedStoreWithRequest:(GDAListMyIntroducedStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListMyIntroducedStoreWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
/**
 * should be only used by me
 */
- (GRPCProtoCall *)RPCToListMyIntroducedStoreWithRequest:(GDAListMyIntroducedStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListMyIntroducedStore"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAIntroducershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark Ban(BanIntroducershipRequest) returns (IntroducershipResponse)

- (void)banWithRequest:(GDABanIntroducershipRequest *)request handler:(void(^)(GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToBanWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToBanWithRequest:(GDABanIntroducershipRequest *)request handler:(void(^)(GDAIntroducershipResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Ban"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAIntroducershipResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
