#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/accounting/AccountingAccount.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class ACCNTAccountResponse;
  @class ACCNTFindAccountRequest;
  @class ACCNTGetAccountRequest;
  @class ACCNTListMyAccountRequest;
  @class ACCNTUpsertAccountsRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol ACCNTAccountingAccountApi <NSObject>

#pragma mark UpsertAccounts(UpsertAccountsRequest) returns (stream AccountResponse)

- (void)upsertAccountsWithRequest:(ACCNTUpsertAccountsRequest *)request eventHandler:(void(^)(BOOL done, ACCNTAccountResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToUpsertAccountsWithRequest:(ACCNTUpsertAccountsRequest *)request eventHandler:(void(^)(BOOL done, ACCNTAccountResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark GetAccount(GetAccountRequest) returns (AccountResponse)

- (void)getAccountWithRequest:(ACCNTGetAccountRequest *)request handler:(void(^)(ACCNTAccountResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetAccountWithRequest:(ACCNTGetAccountRequest *)request handler:(void(^)(ACCNTAccountResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark FindAccountBy(FindAccountRequest) returns (AccountResponse)

- (void)findAccountByWithRequest:(ACCNTFindAccountRequest *)request handler:(void(^)(ACCNTAccountResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToFindAccountByWithRequest:(ACCNTFindAccountRequest *)request handler:(void(^)(ACCNTAccountResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListMyAccount(ListMyAccountRequest) returns (stream AccountResponse)

- (void)listMyAccountWithRequest:(ACCNTListMyAccountRequest *)request eventHandler:(void(^)(BOOL done, ACCNTAccountResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListMyAccountWithRequest:(ACCNTListMyAccountRequest *)request eventHandler:(void(^)(BOOL done, ACCNTAccountResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface ACCNTAccountingAccountApi : GRPCProtoService<ACCNTAccountingAccountApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
