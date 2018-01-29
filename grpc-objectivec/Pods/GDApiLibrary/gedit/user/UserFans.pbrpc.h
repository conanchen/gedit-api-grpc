#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/user/UserFans.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDAAddFanshipRequest;
  @class GDAFanshipResponse;
  @class GDAFindParentFanshipRequest;
  @class GDAListChildFanshipRequest;
  @class GDAListMyFanRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAUserFansApi <NSObject>

#pragma mark Add(AddFanshipRequest) returns (FanshipResponse)

- (void)addWithRequest:(GDAAddFanshipRequest *)request handler:(void(^)(GDAFanshipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddWithRequest:(GDAAddFanshipRequest *)request handler:(void(^)(GDAFanshipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark FindParent(FindParentFanshipRequest) returns (FanshipResponse)

- (void)findParentWithRequest:(GDAFindParentFanshipRequest *)request handler:(void(^)(GDAFanshipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToFindParentWithRequest:(GDAFindParentFanshipRequest *)request handler:(void(^)(GDAFanshipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListChild(ListChildFanshipRequest) returns (stream FanshipResponse)

- (void)listChildWithRequest:(GDAListChildFanshipRequest *)request eventHandler:(void(^)(BOOL done, GDAFanshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListChildWithRequest:(GDAListChildFanshipRequest *)request eventHandler:(void(^)(BOOL done, GDAFanshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMyFan(ListMyFanRequest) returns (stream FanshipResponse)

/**
 * should be only used by me
 */
- (void)listMyFanWithRequest:(GDAListMyFanRequest *)request eventHandler:(void(^)(BOOL done, GDAFanshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * should be only used by me
 */
- (GRPCProtoCall *)RPCToListMyFanWithRequest:(GDAListMyFanRequest *)request eventHandler:(void(^)(BOOL done, GDAFanshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAUserFansApi : GRPCProtoService<GDAUserFansApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
