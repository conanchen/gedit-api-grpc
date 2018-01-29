#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/product/Product.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class PRDPRDGetProductRequest;
  @class PRDPRDListProductRequest;
  @class PRDPRDProductResponse;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol PRDPRDProductApi <NSObject>

#pragma mark Get(GetProductRequest) returns (ProductResponse)

- (void)getWithRequest:(PRDPRDGetProductRequest *)request handler:(void(^)(PRDPRDProductResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(PRDPRDGetProductRequest *)request handler:(void(^)(PRDPRDProductResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark List(ListProductRequest) returns (stream ProductResponse)

- (void)listWithRequest:(PRDPRDListProductRequest *)request eventHandler:(void(^)(BOOL done, PRDPRDProductResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(PRDPRDListProductRequest *)request eventHandler:(void(^)(BOOL done, PRDPRDProductResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface PRDPRDProductApi : GRPCProtoService<PRDPRDProductApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
