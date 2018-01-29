#import "gedit/accounting/AccountingPosting.pbrpc.h"
#import "gedit/accounting/AccountingPosting.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"
#import "gedit/accounting/AccountingEvent.pbobjc.h"

@implementation ACCNTAccountingPostingApi

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

- (void)getPostingWithRequest:(ACCNTGetPostingRequest *)request handler:(void(^)(ACCNTPostingResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetPostingWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetPostingWithRequest:(ACCNTGetPostingRequest *)request handler:(void(^)(ACCNTPostingResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetPosting"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCNTPostingResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListPosting(ListPostingRequest) returns (stream PostingResponse)

- (void)listPostingWithRequest:(ACCNTListPostingRequest *)request eventHandler:(void(^)(BOOL done, ACCNTPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListPostingWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListPostingWithRequest:(ACCNTListPostingRequest *)request eventHandler:(void(^)(BOOL done, ACCNTPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListPosting"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCNTPostingResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark ListMyPosting(ListMyPostingRequest) returns (stream PostingResponse)

- (void)listMyPostingWithRequest:(ACCNTListMyPostingRequest *)request eventHandler:(void(^)(BOOL done, ACCNTPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListMyPostingWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListMyPostingWithRequest:(ACCNTListMyPostingRequest *)request eventHandler:(void(^)(BOOL done, ACCNTPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListMyPosting"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCNTPostingResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
