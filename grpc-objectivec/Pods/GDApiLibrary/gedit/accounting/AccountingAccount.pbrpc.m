#import "gedit/accounting/AccountingAccount.pbrpc.h"
#import "gedit/accounting/AccountingAccount.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation GDAAccountingAccountApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.accounting" serviceName:@"AccountingAccountApi"]);
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


#pragma mark UpsertAccounts(UpsertAccountsRequest) returns (stream AccountResponse)

- (void)upsertAccountsWithRequest:(GDAUpsertAccountsRequest *)request eventHandler:(void(^)(BOOL done, GDAAccountResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToUpsertAccountsWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToUpsertAccountsWithRequest:(GDAUpsertAccountsRequest *)request eventHandler:(void(^)(BOOL done, GDAAccountResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"UpsertAccounts"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAAccountResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
#pragma mark GetAccount(GetAccountRequest) returns (AccountResponse)

- (void)getAccountWithRequest:(GDAGetAccountRequest *)request handler:(void(^)(GDAAccountResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetAccountWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetAccountWithRequest:(GDAGetAccountRequest *)request handler:(void(^)(GDAAccountResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetAccount"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAAccountResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark FindAccountBy(FindAccountRequest) returns (AccountResponse)

- (void)findAccountByWithRequest:(GDAFindAccountRequest *)request handler:(void(^)(GDAAccountResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToFindAccountByWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToFindAccountByWithRequest:(GDAFindAccountRequest *)request handler:(void(^)(GDAAccountResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"FindAccountBy"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAAccountResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListMyAccount(ListMyAccountRequest) returns (stream AccountResponse)

- (void)listMyAccountWithRequest:(GDAListMyAccountRequest *)request eventHandler:(void(^)(BOOL done, GDAAccountResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListMyAccountWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListMyAccountWithRequest:(GDAListMyAccountRequest *)request eventHandler:(void(^)(BOOL done, GDAAccountResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListMyAccount"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAAccountResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
