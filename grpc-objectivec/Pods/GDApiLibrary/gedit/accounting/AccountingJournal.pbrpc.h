#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/accounting/AccountingJournal.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDAGetJournalRequest;
  @class GDAJournalResponse;
  @class GDAListJournalRequest;
  @class GDAUpsertJournalRequest;
#else
  #import "gedit/Common.pbobjc.h"
  #import "gedit/accounting/AccountingEvent.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAAccountingJournalApi <NSObject>

#pragma mark UpsertJournal(UpsertJournalRequest) returns (JournalResponse)

/**
 * will compute postings at the same time when save Journal
 */
- (void)upsertJournalWithRequest:(GDAUpsertJournalRequest *)request handler:(void(^)(GDAJournalResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * will compute postings at the same time when save Journal
 */
- (GRPCProtoCall *)RPCToUpsertJournalWithRequest:(GDAUpsertJournalRequest *)request handler:(void(^)(GDAJournalResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetJournal(GetJournalRequest) returns (JournalResponse)

- (void)getJournalWithRequest:(GDAGetJournalRequest *)request handler:(void(^)(GDAJournalResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetJournalWithRequest:(GDAGetJournalRequest *)request handler:(void(^)(GDAJournalResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListJournal(ListJournalRequest) returns (stream JournalResponse)

- (void)listJournalWithRequest:(GDAListJournalRequest *)request eventHandler:(void(^)(BOOL done, GDAJournalResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListJournalWithRequest:(GDAListJournalRequest *)request eventHandler:(void(^)(BOOL done, GDAJournalResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAAccountingJournalApi : GRPCProtoService<GDAAccountingJournalApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
