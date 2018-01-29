#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/accounting/AccountingAccount.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDAAccountResponse;
  @class GDAFindAccountRequest;
  @class GDAGetAccountRequest;
  @class GDAListMyAccountRequest;
  @class GDAUpsertAccountsRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAAccountingAccountApi <NSObject>

#pragma mark UpsertAccounts(UpsertAccountsRequest) returns (stream AccountResponse)

- (void)upsertAccountsWithRequest:(GDAUpsertAccountsRequest *)request eventHandler:(void(^)(BOOL done, GDAAccountResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToUpsertAccountsWithRequest:(GDAUpsertAccountsRequest *)request eventHandler:(void(^)(BOOL done, GDAAccountResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark GetAccount(GetAccountRequest) returns (AccountResponse)

- (void)getAccountWithRequest:(GDAGetAccountRequest *)request handler:(void(^)(GDAAccountResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetAccountWithRequest:(GDAGetAccountRequest *)request handler:(void(^)(GDAAccountResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark FindAccountBy(FindAccountRequest) returns (AccountResponse)

- (void)findAccountByWithRequest:(GDAFindAccountRequest *)request handler:(void(^)(GDAAccountResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToFindAccountByWithRequest:(GDAFindAccountRequest *)request handler:(void(^)(GDAAccountResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListMyAccount(ListMyAccountRequest) returns (stream AccountResponse)

- (void)listMyAccountWithRequest:(GDAListMyAccountRequest *)request eventHandler:(void(^)(BOOL done, GDAAccountResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListMyAccountWithRequest:(GDAListMyAccountRequest *)request eventHandler:(void(^)(BOOL done, GDAAccountResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAAccountingAccountApi : GRPCProtoService<GDAAccountingAccountApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
