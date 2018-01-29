#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/user/UserFans.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class USRFANSAddFanshipRequest;
  @class USRFANSFanshipResponse;
  @class USRFANSFindParentFanshipRequest;
  @class USRFANSListChildFanshipRequest;
  @class USRFANSListMyFanRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol USRFANSUserFansApi <NSObject>

#pragma mark Add(AddFanshipRequest) returns (FanshipResponse)

- (void)addWithRequest:(USRFANSAddFanshipRequest *)request handler:(void(^)(USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToAddWithRequest:(USRFANSAddFanshipRequest *)request handler:(void(^)(USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark FindParent(FindParentFanshipRequest) returns (FanshipResponse)

- (void)findParentWithRequest:(USRFANSFindParentFanshipRequest *)request handler:(void(^)(USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToFindParentWithRequest:(USRFANSFindParentFanshipRequest *)request handler:(void(^)(USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListChild(ListChildFanshipRequest) returns (stream FanshipResponse)

- (void)listChildWithRequest:(USRFANSListChildFanshipRequest *)request eventHandler:(void(^)(BOOL done, USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListChildWithRequest:(USRFANSListChildFanshipRequest *)request eventHandler:(void(^)(BOOL done, USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMyFan(ListMyFanRequest) returns (stream FanshipResponse)

/**
 * should be only used by me
 */
- (void)listMyFanWithRequest:(USRFANSListMyFanRequest *)request eventHandler:(void(^)(BOOL done, USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * should be only used by me
 */
- (GRPCProtoCall *)RPCToListMyFanWithRequest:(USRFANSListMyFanRequest *)request eventHandler:(void(^)(BOOL done, USRFANSFanshipResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface USRFANSUserFansApi : GRPCProtoService<USRFANSUserFansApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
