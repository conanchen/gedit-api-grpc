#import "gedit/accounting/AccountingJournal.pbrpc.h"
#import "gedit/accounting/AccountingJournal.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"
#import "gedit/accounting/AccountingEvent.pbobjc.h"

@implementation ACCNTAccountingJournalApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.accounting" serviceName:@"AccountingJournalApi"]);
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


#pragma mark UpsertJournal(UpsertJournalRequest) returns (JournalResponse)

/**
 * will compute postings at the same time when save Journal
 */
- (void)upsertJournalWithRequest:(ACCNTUpsertJournalRequest *)request handler:(void(^)(ACCNTJournalResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpsertJournalWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * will compute postings at the same time when save Journal
 */
- (GRPCProtoCall *)RPCToUpsertJournalWithRequest:(ACCNTUpsertJournalRequest *)request handler:(void(^)(ACCNTJournalResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpsertJournal"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCNTJournalResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetJournal(GetJournalRequest) returns (JournalResponse)

- (void)getJournalWithRequest:(ACCNTGetJournalRequest *)request handler:(void(^)(ACCNTJournalResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetJournalWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetJournalWithRequest:(ACCNTGetJournalRequest *)request handler:(void(^)(ACCNTJournalResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetJournal"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCNTJournalResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListJournal(ListJournalRequest) returns (stream JournalResponse)

- (void)listJournalWithRequest:(ACCNTListJournalRequest *)request eventHandler:(void(^)(BOOL done, ACCNTJournalResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListJournalWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListJournalWithRequest:(ACCNTListJournalRequest *)request eventHandler:(void(^)(BOOL done, ACCNTJournalResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListJournal"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCNTJournalResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
