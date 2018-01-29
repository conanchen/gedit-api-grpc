#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/product/Catalog.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDACatalogResponse;
  @class GDAGetCatalogRequest;
  @class GDAListCatalogRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDACatalogApi <NSObject>

#pragma mark Get(GetCatalogRequest) returns (CatalogResponse)

- (void)getWithRequest:(GDAGetCatalogRequest *)request handler:(void(^)(GDACatalogResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(GDAGetCatalogRequest *)request handler:(void(^)(GDACatalogResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark List(ListCatalogRequest) returns (stream CatalogResponse)

- (void)listWithRequest:(GDAListCatalogRequest *)request eventHandler:(void(^)(BOOL done, GDACatalogResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(GDAListCatalogRequest *)request eventHandler:(void(^)(BOOL done, GDACatalogResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDACatalogApi : GRPCProtoService<GDACatalogApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
