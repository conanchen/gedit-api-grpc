#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/product/Product.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDAGetProductRequest;
  @class GDAListProductRequest;
  @class GDAProductResponse;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAProductApi <NSObject>

#pragma mark Get(GetProductRequest) returns (ProductResponse)

- (void)getWithRequest:(GDAGetProductRequest *)request handler:(void(^)(GDAProductResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(GDAGetProductRequest *)request handler:(void(^)(GDAProductResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark List(ListProductRequest) returns (stream ProductResponse)

- (void)listWithRequest:(GDAListProductRequest *)request eventHandler:(void(^)(BOOL done, GDAProductResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(GDAListProductRequest *)request eventHandler:(void(^)(BOOL done, GDAProductResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAProductApi : GRPCProtoService<GDAProductApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
