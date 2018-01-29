#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/accounting/AccountingBalance.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class ACCNTBalanceResponse;
  @class ACCNTListBalanceRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol ACCNTAccountingBalanceApi <NSObject>

#pragma mark ListBalance(ListBalanceRequest) returns (stream BalanceResponse)

- (void)listBalanceWithRequest:(ACCNTListBalanceRequest *)request eventHandler:(void(^)(BOOL done, ACCNTBalanceResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListBalanceWithRequest:(ACCNTListBalanceRequest *)request eventHandler:(void(^)(BOOL done, ACCNTBalanceResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface ACCNTAccountingBalanceApi : GRPCProtoService<ACCNTAccountingBalanceApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
