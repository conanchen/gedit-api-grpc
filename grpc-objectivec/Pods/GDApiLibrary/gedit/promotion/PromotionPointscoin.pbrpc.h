#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/promotion/PromotionPointscoin.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDABuyPointsCoinRequest;
  @class GDAGetPointsCoinRequest;
  @class GDAListPointsCoinRequest;
  @class GDAPointsCoinResponse;
  @class GDAPreparePointsCoinRequest;
  @class GDAPreparePointsCoinResponse;
  @class GDASearchPointsCoinRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAPointsCoinApi <NSObject>

#pragma mark Prepare(PreparePointsCoinRequest) returns (PreparePointsCoinResponse)

- (void)prepareWithRequest:(GDAPreparePointsCoinRequest *)request handler:(void(^)(GDAPreparePointsCoinResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToPrepareWithRequest:(GDAPreparePointsCoinRequest *)request handler:(void(^)(GDAPreparePointsCoinResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Buy(BuyPointsCoinRequest) returns (PointsCoinResponse)

- (void)buyWithRequest:(GDABuyPointsCoinRequest *)request handler:(void(^)(GDAPointsCoinResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBuyWithRequest:(GDABuyPointsCoinRequest *)request handler:(void(^)(GDAPointsCoinResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Get(GetPointsCoinRequest) returns (PointsCoinResponse)

- (void)getWithRequest:(GDAGetPointsCoinRequest *)request handler:(void(^)(GDAPointsCoinResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(GDAGetPointsCoinRequest *)request handler:(void(^)(GDAPointsCoinResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Search(SearchPointsCoinRequest) returns (stream PointsCoinResponse)

- (void)searchWithRequest:(GDASearchPointsCoinRequest *)request eventHandler:(void(^)(BOOL done, GDAPointsCoinResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToSearchWithRequest:(GDASearchPointsCoinRequest *)request eventHandler:(void(^)(BOOL done, GDAPointsCoinResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark List(ListPointsCoinRequest) returns (stream PointsCoinResponse)

- (void)listWithRequest:(GDAListPointsCoinRequest *)request eventHandler:(void(^)(BOOL done, GDAPointsCoinResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(GDAListPointsCoinRequest *)request eventHandler:(void(^)(BOOL done, GDAPointsCoinResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAPointsCoinApi : GRPCProtoService<GDAPointsCoinApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
