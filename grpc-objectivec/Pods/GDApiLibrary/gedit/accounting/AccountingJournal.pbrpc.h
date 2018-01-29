#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/accounting/AccountingJournal.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class ACCNTGetJournalRequest;
  @class ACCNTJournalResponse;
  @class ACCNTListJournalRequest;
  @class ACCNTUpsertJournalRequest;
#else
  #import "gedit/Common.pbobjc.h"
  #import "gedit/accounting/AccountingEvent.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol ACCNTAccountingJournalApi <NSObject>

#pragma mark UpsertJournal(UpsertJournalRequest) returns (JournalResponse)

/**
 * will compute postings at the same time when save Journal
 */
- (void)upsertJournalWithRequest:(ACCNTUpsertJournalRequest *)request handler:(void(^)(ACCNTJournalResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * will compute postings at the same time when save Journal
 */
- (GRPCProtoCall *)RPCToUpsertJournalWithRequest:(ACCNTUpsertJournalRequest *)request handler:(void(^)(ACCNTJournalResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetJournal(GetJournalRequest) returns (JournalResponse)

- (void)getJournalWithRequest:(ACCNTGetJournalRequest *)request handler:(void(^)(ACCNTJournalResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetJournalWithRequest:(ACCNTGetJournalRequest *)request handler:(void(^)(ACCNTJournalResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListJournal(ListJournalRequest) returns (stream JournalResponse)

- (void)listJournalWithRequest:(ACCNTListJournalRequest *)request eventHandler:(void(^)(BOOL done, ACCNTJournalResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListJournalWithRequest:(ACCNTListJournalRequest *)request eventHandler:(void(^)(BOOL done, ACCNTJournalResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface ACCNTAccountingJournalApi : GRPCProtoService<ACCNTAccountingJournalApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
