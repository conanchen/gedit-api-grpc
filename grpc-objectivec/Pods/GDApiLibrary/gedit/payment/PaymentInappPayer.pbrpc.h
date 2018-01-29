#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/payment/PaymentInappPayer.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDACreatePayerInappPaymentRequest;
  @class GDAGetMyPayeeCodeRequest;
  @class GDAGetMyPayeeCodeResponse;
  @class GDAGetPayeeCodeRequest;
  @class GDAGetPayeeCodeResponse;
  @class GDAPaymentResponse;
  @class GDAPreparePayerInappPaymentRequest;
  @class GDAPreparePayerInappPaymentResponse;
#else
  #import "gedit/Common.pbobjc.h"
  #import "gedit/payment/PaymentCommon.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAPayerActiveInappApi <NSObject>

#pragma mark GetMyPayeeCode(GetMyPayeeCodeRequest) returns (GetMyPayeeCodeResponse)

/**
 * 顾客主扫模式----START 收银员收款出示二维码    <------------> 顾客扫码付款 交互API
 * only called by me,例如收银员app调用本api生成收款码供顾客扫码支付
 */
- (void)getMyPayeeCodeWithRequest:(GDAGetMyPayeeCodeRequest *)request handler:(void(^)(GDAGetMyPayeeCodeResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * 顾客主扫模式----START 收银员收款出示二维码    <------------> 顾客扫码付款 交互API
 * only called by me,例如收银员app调用本api生成收款码供顾客扫码支付
 */
- (GRPCProtoCall *)RPCToGetMyPayeeCodeWithRequest:(GDAGetMyPayeeCodeRequest *)request handler:(void(^)(GDAGetMyPayeeCodeResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark GetPayeeCode(GetPayeeCodeRequest) returns (GetPayeeCodeResponse)

/**
 * 顾客端调用获取收银员收款码相关信息
 */
- (void)getPayeeCodeWithRequest:(GDAGetPayeeCodeRequest *)request handler:(void(^)(GDAGetPayeeCodeResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * 顾客端调用获取收银员收款码相关信息
 */
- (GRPCProtoCall *)RPCToGetPayeeCodeWithRequest:(GDAGetPayeeCodeRequest *)request handler:(void(^)(GDAGetPayeeCodeResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Prepare(PreparePayerInappPaymentRequest) returns (PreparePayerInappPaymentResponse)

/**
 * only called by me, 顾客扫码收银员的收款码后，如果支付一定金额将会获取多少积分返还等信息
 */
- (void)prepareWithRequest:(GDAPreparePayerInappPaymentRequest *)request handler:(void(^)(GDAPreparePayerInappPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * only called by me, 顾客扫码收银员的收款码后，如果支付一定金额将会获取多少积分返还等信息
 */
- (GRPCProtoCall *)RPCToPrepareWithRequest:(GDAPreparePayerInappPaymentRequest *)request handler:(void(^)(GDAPreparePayerInappPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark Create(CreatePayerInappPaymentRequest) returns (PaymentResponse)

/**
 * only called by me, 顾客确定付款
 */
- (void)createWithRequest:(GDACreatePayerInappPaymentRequest *)request handler:(void(^)(GDAPaymentResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * only called by me, 顾客确定付款
 */
- (GRPCProtoCall *)RPCToCreateWithRequest:(GDACreatePayerInappPaymentRequest *)request handler:(void(^)(GDAPaymentResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAPayerActiveInappApi : GRPCProtoService<GDAPayerActiveInappApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
