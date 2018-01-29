#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/promotion/PromotionPointscoin.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class PNTCPRMBuyPointsCoinRequest;
  @class PNTCPRMGetPointsCoinRequest;
  @class PNTCPRMListPointsCoinRequest;
  @class PNTCPRMPointsCoinResponse;
  @class PNTCPRMPreparePointsCoinRequest;
  @class PNTCPRMPreparePointsCoinResponse;
  @class PNTCPRMSearchPointsCoinRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol PNTCPRMPointsCoinApi <NSObject>

#pragma mark Prepare(PreparePointsCoinRequest) returns (PreparePointsCoinResponse)

- (void)prepareWithRequest:(PNTCPRMPreparePointsCoinRequest *)request handler:(void(^)(PNTCPRMPreparePointsCoinResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToPrepareWithRequest:(PNTCPRMPreparePointsCoinRequest *)request handler:(void(^)(PNTCPRMPreparePointsCoinResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Buy(BuyPointsCoinRequest) returns (PointsCoinResponse)

- (void)buyWithRequest:(PNTCPRMBuyPointsCoinRequest *)request handler:(void(^)(PNTCPRMPointsCoinResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToBuyWithRequest:(PNTCPRMBuyPointsCoinRequest *)request handler:(void(^)(PNTCPRMPointsCoinResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Get(GetPointsCoinRequest) returns (PointsCoinResponse)

- (void)getWithRequest:(PNTCPRMGetPointsCoinRequest *)request handler:(void(^)(PNTCPRMPointsCoinResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(PNTCPRMGetPointsCoinRequest *)request handler:(void(^)(PNTCPRMPointsCoinResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Search(SearchPointsCoinRequest) returns (stream PointsCoinResponse)

- (void)searchWithRequest:(PNTCPRMSearchPointsCoinRequest *)request eventHandler:(void(^)(BOOL done, PNTCPRMPointsCoinResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToSearchWithRequest:(PNTCPRMSearchPointsCoinRequest *)request eventHandler:(void(^)(BOOL done, PNTCPRMPointsCoinResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark List(ListPointsCoinRequest) returns (stream PointsCoinResponse)

- (void)listWithRequest:(PNTCPRMListPointsCoinRequest *)request eventHandler:(void(^)(BOOL done, PNTCPRMPointsCoinResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(PNTCPRMListPointsCoinRequest *)request eventHandler:(void(^)(BOOL done, PNTCPRMPointsCoinResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface PNTCPRMPointsCoinApi : GRPCProtoService<PNTCPRMPointsCoinApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
