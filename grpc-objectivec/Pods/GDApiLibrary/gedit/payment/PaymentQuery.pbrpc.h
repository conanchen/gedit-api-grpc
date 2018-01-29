#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/payment/PaymentQuery.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDAGetPaymentRequest;
  @class GDAListMyPayeePaymentRequest;
  @class GDAListMyPayerPaymentRequest;
  @class GDAListPaymentRequest;
  @class GDAPaymentResponse;
#else
  #import "gedit/payment/PaymentCommon.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAPaymentQueryApi <NSObject>

#pragma mark Get(GetPaymentRequest) returns (PaymentResponse)

- (void)getWithRequest:(GDAGetPaymentRequest *)request handler:(void(^)(GDAPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(GDAGetPaymentRequest *)request handler:(void(^)(GDAPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark List(ListPaymentRequest) returns (stream PaymentResponse)

- (void)listWithRequest:(GDAListPaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(GDAListPaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMyPayerPayment(ListMyPayerPaymentRequest) returns (stream PaymentResponse)

/**
 * only called by me，获取我的付款单
 */
- (void)listMyPayerPaymentWithRequest:(GDAListMyPayerPaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * only called by me，获取我的付款单
 */
- (GRPCProtoCall *)RPCToListMyPayerPaymentWithRequest:(GDAListMyPayerPaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMyPayeePayment(ListMyPayeePaymentRequest) returns (stream PaymentResponse)

/**
 * only called by me，获取我的收款单
 */
- (void)listMyPayeePaymentWithRequest:(GDAListMyPayeePaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * only called by me，获取我的收款单
 */
- (GRPCProtoCall *)RPCToListMyPayeePaymentWithRequest:(GDAListMyPayeePaymentRequest *)request eventHandler:(void(^)(BOOL done, GDAPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAPaymentQueryApi : GRPCProtoService<GDAPaymentQueryApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
