#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/accounting/AccountingRewardsif.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class ACCNTQueryRewardsIfEventRequest;
  @class ACCNTRewardIfEventResponse;
#else
  #import "gedit/Common.pbobjc.h"
  #import "gedit/accounting/AccountingEvent.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol ACCNTAccountingRewardsIfEventApi <NSObject>

#pragma mark QueryRewardsIfEvent(QueryRewardsIfEventRequest) returns (stream RewardIfEventResponse)

/**
 * 咨询发生某种事件将会给相关的人员的奖励如：积分扣减、奖励、返还、抵扣
 */
- (void)queryRewardsIfEventWithRequest:(ACCNTQueryRewardsIfEventRequest *)request eventHandler:(void(^)(BOOL done, ACCNTRewardIfEventResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * 咨询发生某种事件将会给相关的人员的奖励如：积分扣减、奖励、返还、抵扣
 */
- (GRPCProtoCall *)RPCToQueryRewardsIfEventWithRequest:(ACCNTQueryRewardsIfEventRequest *)request eventHandler:(void(^)(BOOL done, ACCNTRewardIfEventResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface ACCNTAccountingRewardsIfEventApi : GRPCProtoService<ACCNTAccountingRewardsIfEventApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
