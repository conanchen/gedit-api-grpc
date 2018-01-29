#import "gedit/district/District.pbrpc.h"
#import "gedit/district/District.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation DISTRICTDistrictApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.district" serviceName:@"DistrictApi"]);
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


#pragma mark Upsert(UpsertDistrictRequest) returns (DistrictResponse)

/**
 * Sends a greeting
 */
- (void)upsertWithRequest:(DISTRICTUpsertDistrictRequest *)request handler:(void(^)(DISTRICTDistrictResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpsertWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * Sends a greeting
 */
- (GRPCProtoCall *)RPCToUpsertWithRequest:(DISTRICTUpsertDistrictRequest *)request handler:(void(^)(DISTRICTDistrictResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"Upsert"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DISTRICTDistrictResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetTop(GetTopDistrictRequest) returns (stream DistrictResponse)

- (void)getTopWithRequest:(DISTRICTGetTopDistrictRequest *)request eventHandler:(void(^)(BOOL done, DISTRICTDistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToGetTopWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetTopWithRequest:(DISTRICTGetTopDistrictRequest *)request eventHandler:(void(^)(BOOL done, DISTRICTDistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"GetTop"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DISTRICTDistrictResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListChild(ListChildDistrictRequest) returns (stream DistrictResponse)

- (void)listChildWithRequest:(DISTRICTListChildDistrictRequest *)request eventHandler:(void(^)(BOOL done, DISTRICTDistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListChildWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListChildWithRequest:(DISTRICTListChildDistrictRequest *)request eventHandler:(void(^)(BOOL done, DISTRICTDistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListChild"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DISTRICTDistrictResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark List(ListDistrictRequest) returns (stream DistrictResponse)

- (void)listWithRequest:(DISTRICTListDistrictRequest *)request eventHandler:(void(^)(BOOL done, DISTRICTDistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListWithRequest:(DISTRICTListDistrictRequest *)request eventHandler:(void(^)(BOOL done, DISTRICTDistrictResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"List"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[DISTRICTDistrictResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
