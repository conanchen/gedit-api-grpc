#import "gedit/accounting/AccountingPosting.pbrpc.h"
#import "gedit/accounting/AccountingPosting.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"
#import "gedit/accounting/AccountingEvent.pbobjc.h"

@implementation GDAAccountingPostingApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.accounting" serviceName:@"AccountingPostingApi"]);
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


#pragma mark GetPosting(GetPostingRequest) returns (PostingResponse)

- (void)getPostingWithRequest:(GDAGetPostingRequest *)request handler:(void(^)(GDAPostingResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetPostingWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetPostingWithRequest:(GDAGetPostingRequest *)request handler:(void(^)(GDAPostingResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetPosting"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPostingResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListPosting(ListPostingRequest) returns (stream PostingResponse)

- (void)listPostingWithRequest:(GDAListPostingRequest *)request eventHandler:(void(^)(BOOL done, GDAPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListPostingWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListPostingWithRequest:(GDAListPostingRequest *)request eventHandler:(void(^)(BOOL done, GDAPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListPosting"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPostingResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListMyPosting(ListMyPostingRequest) returns (stream PostingResponse)

- (void)listMyPostingWithRequest:(GDAListMyPostingRequest *)request eventHandler:(void(^)(BOOL done, GDAPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListMyPostingWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListMyPostingWithRequest:(GDAListMyPostingRequest *)request eventHandler:(void(^)(BOOL done, GDAPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListMyPosting"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAPostingResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
