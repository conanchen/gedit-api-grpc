#import "gedit/accounting/AccountingBalance.pbrpc.h"
#import "gedit/accounting/AccountingBalance.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation ACCNTAccountingBalanceApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.accounting" serviceName:@"AccountingBalanceApi"]);
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


#pragma mark ListBalance(ListBalanceRequest) returns (stream BalanceResponse)

- (void)listBalanceWithRequest:(ACCNTListBalanceRequest *)request eventHandler:(void(^)(BOOL done, ACCNTBalanceResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListBalanceWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListBalanceWithRequest:(ACCNTListBalanceRequest *)request eventHandler:(void(^)(BOOL done, ACCNTBalanceResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListBalance"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCNTBalanceResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
