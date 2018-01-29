#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/accounting/AccountingBalance.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDABalanceResponse;
  @class GDAListBalanceRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAAccountingBalanceApi <NSObject>

#pragma mark ListBalance(ListBalanceRequest) returns (stream BalanceResponse)

- (void)listBalanceWithRequest:(GDAListBalanceRequest *)request eventHandler:(void(^)(BOOL done, GDABalanceResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListBalanceWithRequest:(GDAListBalanceRequest *)request eventHandler:(void(^)(BOOL done, GDABalanceResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAAccountingBalanceApi : GRPCProtoService<GDAAccountingBalanceApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
