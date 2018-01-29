#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/product/CatalogMember.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDACatalogMemberResponse;
  @class GDAGetCatalogMemberRequest;
  @class GDAListCatalogMemberRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDACatalogMemberApi <NSObject>

#pragma mark Get(GetCatalogMemberRequest) returns (CatalogMemberResponse)

- (void)getWithRequest:(GDAGetCatalogMemberRequest *)request handler:(void(^)(GDACatalogMemberResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(GDAGetCatalogMemberRequest *)request handler:(void(^)(GDACatalogMemberResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark List(ListCatalogMemberRequest) returns (stream CatalogMemberResponse)

- (void)listWithRequest:(GDAListCatalogMemberRequest *)request eventHandler:(void(^)(BOOL done, GDACatalogMemberResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(GDAListCatalogMemberRequest *)request eventHandler:(void(^)(BOOL done, GDACatalogMemberResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDACatalogMemberApi : GRPCProtoService<GDACatalogMemberApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
