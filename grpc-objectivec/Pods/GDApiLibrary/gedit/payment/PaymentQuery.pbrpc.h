#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/payment/PaymentQuery.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class PMCOMMPaymentResponse;
  @class PMQRYGetPaymentRequest;
  @class PMQRYListMyPayeePaymentRequest;
  @class PMQRYListMyPayerPaymentRequest;
  @class PMQRYListPaymentRequest;
#else
  #import "gedit/payment/PaymentCommon.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol PMQRYPaymentQueryApi <NSObject>

#pragma mark Get(GetPaymentRequest) returns (PaymentResponse)

- (void)getWithRequest:(PMQRYGetPaymentRequest *)request handler:(void(^)(PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetWithRequest:(PMQRYGetPaymentRequest *)request handler:(void(^)(PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark List(ListPaymentRequest) returns (stream PaymentResponse)

- (void)listWithRequest:(PMQRYListPaymentRequest *)request eventHandler:(void(^)(BOOL done, PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListWithRequest:(PMQRYListPaymentRequest *)request eventHandler:(void(^)(BOOL done, PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMyPayerPayment(ListMyPayerPaymentRequest) returns (stream PaymentResponse)

/**
 * only called by me，获取我的付款单
 */
- (void)listMyPayerPaymentWithRequest:(PMQRYListMyPayerPaymentRequest *)request eventHandler:(void(^)(BOOL done, PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * only called by me，获取我的付款单
 */
- (GRPCProtoCall *)RPCToListMyPayerPaymentWithRequest:(PMQRYListMyPayerPaymentRequest *)request eventHandler:(void(^)(BOOL done, PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMyPayeePayment(ListMyPayeePaymentRequest) returns (stream PaymentResponse)

/**
 * only called by me，获取我的收款单
 */
- (void)listMyPayeePaymentWithRequest:(PMQRYListMyPayeePaymentRequest *)request eventHandler:(void(^)(BOOL done, PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;

/**
 * only called by me，获取我的收款单
 */
- (GRPCProtoCall *)RPCToListMyPayeePaymentWithRequest:(PMQRYListMyPayeePaymentRequest *)request eventHandler:(void(^)(BOOL done, PMCOMMPaymentResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface PMQRYPaymentQueryApi : GRPCProtoService<PMQRYPaymentQueryApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
