#import "gedit/accounting/AccountingRewardsif.pbrpc.h"
#import "gedit/accounting/AccountingRewardsif.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"
#import "gedit/accounting/AccountingEvent.pbobjc.h"

@implementation ACCNTAccountingRewardsIfEventApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.accounting" serviceName:@"AccountingRewardsIfEventApi"]);
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


#pragma mark QueryRewardsIfEvent(QueryRewardsIfEventRequest) returns (stream RewardIfEventResponse)

/**
 * 咨询发生某种事件将会给相关的人员的奖励如：积分扣减、奖励、返还、抵扣
 */
- (void)queryRewardsIfEventWithRequest:(ACCNTQueryRewardsIfEventRequest *)request eventHandler:(void(^)(BOOL done, ACCNTRewardIfEventResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  [[self RPCToQueryRewardsIfEventWithRequest:request eventHandler:eventHandler] start];
}
// Returns a not-yet-started RPC object.
/**
 * 咨询发生某种事件将会给相关的人员的奖励如：积分扣减、奖励、返还、抵扣
 */
- (GRPCProtoCall *)RPCToQueryRewardsIfEventWithRequest:(ACCNTQueryRewardsIfEventRequest *)request eventHandler:(void(^)(BOOL done, ACCNTRewardIfEventResponse *_Nullable response, NSError *_Nullable error))eventHandler{
  return [self RPCToMethod:@"QueryRewardsIfEvent"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[ACCNTRewardIfEventResponse class]
        responsesWriteable:[GRXWriteable writeableWithEventHandler:eventHandler]];
}
@end
