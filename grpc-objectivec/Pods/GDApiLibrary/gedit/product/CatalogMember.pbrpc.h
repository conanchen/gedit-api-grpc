#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/product/CatalogMember.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class CTGMMBCatalogMemberResponse;
  @class CTGMMBGetCatalogMemberRequest;
  @class CTGMMBListCatalogMemberRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol CTGMMBCatalogMemberApi <NSObject>

#pragma mark Get(GetCatalogMemberRequest) returns (CatalogMemberResponse)

- (void)getWithRequest:(CTGMMBGetCatalogMemberRequest *)request handler:(void(^)(CTGMMBCatalogMemberResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(CTGMMBGetCatalogMemberRequest *)request handler:(void(^)(CTGMMBCatalogMemberResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark List(ListCatalogMemberRequest) returns (stream CatalogMemberResponse)

- (void)listWithRequest:(CTGMMBListCatalogMemberRequest *)request eventHandler:(void(^)(BOOL done, CTGMMBCatalogMemberResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(CTGMMBListCatalogMemberRequest *)request eventHandler:(void(^)(BOOL done, CTGMMBCatalogMemberResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface CTGMMBCatalogMemberApi : GRPCProtoService<CTGMMBCatalogMemberApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
