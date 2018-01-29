#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/store/StoreMember.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class STMEMAddMembershipRequest;
  @class STMEMBanMembershipRequest;
  @class STMEMBanMembershipResponse;
  @class STMEMListMembershipByMemberRequest;
  @class STMEMListMembershipByStoreRequest;
  @class STMEMListMyMemberStoreRequest;
  @class STMEMMembershipResponse;
  @class STMEMUpdateMembershipRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol STMEMStoreMemberApi <NSObject>

#pragma mark Add(AddMembershipRequest) returns (MembershipResponse)

- (void)addWithRequest:(STMEMAddMembershipRequest *)request handler:(void(^)(STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddWithRequest:(STMEMAddMembershipRequest *)request handler:(void(^)(STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Update(UpdateMembershipRequest) returns (MembershipResponse)

- (void)updateWithRequest:(STMEMUpdateMembershipRequest *)request handler:(void(^)(STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpdateWithRequest:(STMEMUpdateMembershipRequest *)request handler:(void(^)(STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListByStore(ListMembershipByStoreRequest) returns (stream MembershipResponse)

- (void)listByStoreWithRequest:(STMEMListMembershipByStoreRequest *)request eventHandler:(void(^)(BOOL done, STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByStoreWithRequest:(STMEMListMembershipByStoreRequest *)request eventHandler:(void(^)(BOOL done, STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListByMember(ListMembershipByMemberRequest) returns (stream MembershipResponse)

- (void)listByMemberWithRequest:(STMEMListMembershipByMemberRequest *)request eventHandler:(void(^)(BOOL done, STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByMemberWithRequest:(STMEMListMembershipByMemberRequest *)request eventHandler:(void(^)(BOOL done, STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMyMemberStore(ListMyMemberStoreRequest) returns (stream MembershipResponse)

/**
 * should be only used by me
 */
- (void)listMyMemberStoreWithRequest:(STMEMListMyMemberStoreRequest *)request eventHandler:(void(^)(BOOL done, STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * should be only used by me
 */
- (GRPCProtoCall *)RPCToListMyMemberStoreWithRequest:(STMEMListMyMemberStoreRequest *)request eventHandler:(void(^)(BOOL done, STMEMMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark Ban(BanMembershipRequest) returns (BanMembershipResponse)

- (void)banWithRequest:(STMEMBanMembershipRequest *)request handler:(void(^)(STMEMBanMembershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBanWithRequest:(STMEMBanMembershipRequest *)request handler:(void(^)(STMEMBanMembershipResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface STMEMStoreMemberApi : GRPCProtoService<STMEMStoreMemberApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
