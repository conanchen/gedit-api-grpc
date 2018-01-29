#import "gedit/accounting/AccountingJournal.pbrpc.h"
#import "gedit/accounting/AccountingJournal.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"
#import "gedit/accounting/AccountingEvent.pbobjc.h"

@implementation GDAAccountingJournalApi

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
- (void)upsertJournalWithRequest:(GDAUpsertJournalRequest *)request handler:(void(^)(GDAJournalResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToUpsertJournalWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * will compute postings at the same time when save Journal
 */
- (GRPCProtoCall *)RPCToUpsertJournalWithRequest:(GDAUpsertJournalRequest *)request handler:(void(^)(GDAJournalResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"UpsertJournal"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAJournalResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark GetJournal(GetJournalRequest) returns (JournalResponse)

- (void)getJournalWithRequest:(GDAGetJournalRequest *)request handler:(void(^)(GDAJournalResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToGetJournalWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToGetJournalWithRequest:(GDAGetJournalRequest *)request handler:(void(^)(GDAJournalResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"GetJournal"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAJournalResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark ListJournal(ListJournalRequest) returns (stream JournalResponse)

- (void)listJournalWithRequest:(GDAListJournalRequest *)request eventHandler:(void(^)(BOOL done, GDAJournalResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToListJournalWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
- (GRPCProtoCall *)RPCToListJournalWithRequest:(GDAListJournalRequest *)request eventHandler:(void(^)(BOOL done, GDAJournalResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"ListJournal"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDAJournalResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
