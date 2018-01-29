#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/store/StoreMember.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDAAddMembershipRequest;
  @class GDABanMembershipRequest;
  @class GDABanMembershipResponse;
  @class GDAListMembershipByMemberRequest;
  @class GDAListMembershipByStoreRequest;
  @class GDAListMyMemberStoreRequest;
  @class GDAMembershipResponse;
  @class GDAUpdateMembershipRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAStoreMemberApi <NSObject>

#pragma mark Add(AddMembershipRequest) returns (MembershipResponse)

- (void)addWithRequest:(GDAAddMembershipRequest *)request handler:(void(^)(GDAMembershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddWithRequest:(GDAAddMembershipRequest *)request handler:(void(^)(GDAMembershipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Update(UpdateMembershipRequest) returns (MembershipResponse)

- (void)updateWithRequest:(GDAUpdateMembershipRequest *)request handler:(void(^)(GDAMembershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToUpdateWithRequest:(GDAUpdateMembershipRequest *)request handler:(void(^)(GDAMembershipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListByStore(ListMembershipByStoreRequest) returns (stream MembershipResponse)

- (void)listByStoreWithRequest:(GDAListMembershipByStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByStoreWithRequest:(GDAListMembershipByStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListByMember(ListMembershipByMemberRequest) returns (stream MembershipResponse)

- (void)listByMemberWithRequest:(GDAListMembershipByMemberRequest *)request eventHandler:(void(^)(BOOL done, GDAMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListByMemberWithRequest:(GDAListMembershipByMemberRequest *)request eventHandler:(void(^)(BOOL done, GDAMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMyMemberStore(ListMyMemberStoreRequest) returns (stream MembershipResponse)

/**
 * should be only used by me
 */
- (void)listMyMemberStoreWithRequest:(GDAListMyMemberStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * should be only used by me
 */
- (GRPCProtoCall *)RPCToListMyMemberStoreWithRequest:(GDAListMyMemberStoreRequest *)request eventHandler:(void(^)(BOOL done, GDAMembershipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark Ban(BanMembershipRequest) returns (BanMembershipResponse)

- (void)banWithRequest:(GDABanMembershipRequest *)request handler:(void(^)(GDABanMembershipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBanWithRequest:(GDABanMembershipRequest *)request handler:(void(^)(GDABanMembershipResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAStoreMemberApi : GRPCProtoService<GDAStoreMemberApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
