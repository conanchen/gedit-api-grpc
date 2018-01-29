// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/payment/payment_inapp_payer.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_VERSION < 30002
#error This file was generated by a newer version of protoc which is incompatible with your Protocol Buffer library sources.
#endif
#if 30002 < GOOGLE_PROTOBUF_OBJC_MIN_SUPPORTED_VERSION
#error This file was generated by an older version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

@class COMMONStatus;
@class PayerActiveInappPayeeCode;
GPB_ENUM_FWD_DECLARE(COMMONPaymentChannel);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - PayerActiveInappPaymentInappPayerRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface PayerActiveInappPaymentInappPayerRoot : GPBRootObject
@end

#pragma mark - PayerActiveInappGetMyPayeeCodeRequest

typedef GPB_ENUM(PayerActiveInappGetMyPayeeCodeRequest_FieldNumber) {
  PayerActiveInappGetMyPayeeCodeRequest_FieldNumber_PayeeStoreUuid = 1,
};

@interface PayerActiveInappGetMyPayeeCodeRequest : GPBMessage

/** 收款人工作的店铺 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeStoreUuid;

@end

#pragma mark - PayerActiveInappGetMyPayeeCodeResponse

typedef GPB_ENUM(PayerActiveInappGetMyPayeeCodeResponse_FieldNumber) {
  PayerActiveInappGetMyPayeeCodeResponse_FieldNumber_PayeeCode = 1,
  PayerActiveInappGetMyPayeeCodeResponse_FieldNumber_Status = 999,
};

@interface PayerActiveInappGetMyPayeeCodeResponse : GPBMessage

/** 如果我不在这个店GetMyPayeeCodeRequest.payeeStoreUuid工作，status应说明错误原因 */
@property(nonatomic, readwrite, strong, null_resettable) COMMONStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, strong, null_resettable) PayerActiveInappPayeeCode *payeeCode;
/** Test to see if @c payeeCode has been set. */
@property(nonatomic, readwrite) BOOL hasPayeeCode;

@end

#pragma mark - PayerActiveInappPayeeCode

typedef GPB_ENUM(PayerActiveInappPayeeCode_FieldNumber) {
  PayerActiveInappPayeeCode_FieldNumber_PayeeCode = 1,
  PayerActiveInappPayeeCode_FieldNumber_ExpiresIn = 3,
  PayerActiveInappPayeeCode_FieldNumber_PayeeUuid = 5,
  PayerActiveInappPayeeCode_FieldNumber_PayeeLogo = 7,
  PayerActiveInappPayeeCode_FieldNumber_PayeeName = 9,
  PayerActiveInappPayeeCode_FieldNumber_PayeeStoreUuid = 13,
  PayerActiveInappPayeeCode_FieldNumber_PayeeStoreLogo = 15,
  PayerActiveInappPayeeCode_FieldNumber_PayeeStoreNamee = 17,
  PayerActiveInappPayeeCode_FieldNumber_PayeeWorkerUuid = 25,
  PayerActiveInappPayeeCode_FieldNumber_PayeeWorkerLogo = 27,
  PayerActiveInappPayeeCode_FieldNumber_PayeeWorkerName = 29,
};

@interface PayerActiveInappPayeeCode : GPBMessage

/** 收银员的收款码 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeCode;

/** code的过期时间 */
@property(nonatomic, readwrite) int64_t expiresIn;

/** 以下为QRCode界面可能用到的提示用信息 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeUuid;

/** 收款人店主logo */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeLogo;

/** 收款人店主昵称 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeName;

/** 收银员工作店铺的uuid */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeStoreUuid;

/** 收银员工作店铺的logo */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeStoreLogo;

/** 收银员工作店铺的名称 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeStoreNamee;

/** 收银员uuid */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeWorkerUuid;

/** 收银员logo */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeWorkerLogo;

/** 收银员昵称 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeWorkerName;

@end

#pragma mark - PayerActiveInappGetPayeeCodeRequest

typedef GPB_ENUM(PayerActiveInappGetPayeeCodeRequest_FieldNumber) {
  PayerActiveInappGetPayeeCodeRequest_FieldNumber_PayeeCode = 13,
};

@interface PayerActiveInappGetPayeeCodeRequest : GPBMessage

/** 收银员的收款码 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeCode;

@end

#pragma mark - PayerActiveInappGetPayeeCodeResponse

typedef GPB_ENUM(PayerActiveInappGetPayeeCodeResponse_FieldNumber) {
  PayerActiveInappGetPayeeCodeResponse_FieldNumber_PayeeCode = 1,
  PayerActiveInappGetPayeeCodeResponse_FieldNumber_Status = 999,
};

@interface PayerActiveInappGetPayeeCodeResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) COMMONStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, strong, null_resettable) PayerActiveInappPayeeCode *payeeCode;
/** Test to see if @c payeeCode has been set. */
@property(nonatomic, readwrite) BOOL hasPayeeCode;

@end

#pragma mark - PayerActiveInappPreparePayerInappPaymentRequest

typedef GPB_ENUM(PayerActiveInappPreparePayerInappPaymentRequest_FieldNumber) {
  PayerActiveInappPreparePayerInappPaymentRequest_FieldNumber_PayeeCode = 13,
  PayerActiveInappPreparePayerInappPaymentRequest_FieldNumber_ShouldPay = 15,
};

@interface PayerActiveInappPreparePayerInappPaymentRequest : GPBMessage

/** 收银员的收款码 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeCode;

/** 应付金额 = 实付金额 + 实付积分等价金额 */
@property(nonatomic, readwrite) int32_t shouldPay;

@end

#pragma mark - PayerActiveInappPreparePayerInappPaymentResponse

typedef GPB_ENUM(PayerActiveInappPreparePayerInappPaymentResponse_FieldNumber) {
  PayerActiveInappPreparePayerInappPaymentResponse_FieldNumber_PayeeCode = 11,
  PayerActiveInappPreparePayerInappPaymentResponse_FieldNumber_PayeeName = 12,
  PayerActiveInappPreparePayerInappPaymentResponse_FieldNumber_PayeeStoreName = 13,
  PayerActiveInappPreparePayerInappPaymentResponse_FieldNumber_PayeeWorkerName = 14,
  PayerActiveInappPreparePayerInappPaymentResponse_FieldNumber_ShouldPay = 15,
  PayerActiveInappPreparePayerInappPaymentResponse_FieldNumber_ActualPay = 16,
  PayerActiveInappPreparePayerInappPaymentResponse_FieldNumber_PointsPay = 17,
  PayerActiveInappPreparePayerInappPaymentResponse_FieldNumber_PointsRepay = 18,
  PayerActiveInappPreparePayerInappPaymentResponse_FieldNumber_PointsPayComment = 20,
  PayerActiveInappPreparePayerInappPaymentResponse_FieldNumber_PointsRepayComment = 21,
  PayerActiveInappPreparePayerInappPaymentResponse_FieldNumber_Status = 999,
};

@interface PayerActiveInappPreparePayerInappPaymentResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) COMMONStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

/** 收银员的收款码 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeCode;

/** 收款人（其实是店主）昵称 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeName;

/** 收款店铺名称 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeStoreName;

/** 收银员昵称 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeWorkerName;

/** 应付金额 = 实付金额 + 实付积分等价金额 */
@property(nonatomic, readwrite) int32_t shouldPay;

/** 实付金额 */
@property(nonatomic, readwrite) int32_t actualPay;

/** 参照accounting_rewardsif.proto */
@property(nonatomic, readwrite) int32_t pointsPay;

/** 奖励项2：可获取多少积分返还 */
@property(nonatomic, readwrite) int32_t pointsRepay;

@property(nonatomic, readwrite, copy, null_resettable) NSString *pointsPayComment;

@property(nonatomic, readwrite, copy, null_resettable) NSString *pointsRepayComment;

@end

#pragma mark - PayerActiveInappCreatePayerInappPaymentRequest

typedef GPB_ENUM(PayerActiveInappCreatePayerInappPaymentRequest_FieldNumber) {
  PayerActiveInappCreatePayerInappPaymentRequest_FieldNumber_PayeeCode = 13,
  PayerActiveInappCreatePayerInappPaymentRequest_FieldNumber_ShouldPay = 15,
  PayerActiveInappCreatePayerInappPaymentRequest_FieldNumber_ActualPay = 16,
  PayerActiveInappCreatePayerInappPaymentRequest_FieldNumber_PointsPay = 17,
  PayerActiveInappCreatePayerInappPaymentRequest_FieldNumber_PointsRepay = 18,
  PayerActiveInappCreatePayerInappPaymentRequest_FieldNumber_PaymentChannel = 26,
  PayerActiveInappCreatePayerInappPaymentRequest_FieldNumber_PayerIp = 30,
};

typedef GPB_ENUM(PayerActiveInappCreatePayerInappPaymentRequest_Points_OneOfCase) {
  PayerActiveInappCreatePayerInappPaymentRequest_Points_OneOfCase_GPBUnsetOneOfCase = 0,
  PayerActiveInappCreatePayerInappPaymentRequest_Points_OneOfCase_PointsPay = 17,
  PayerActiveInappCreatePayerInappPaymentRequest_Points_OneOfCase_PointsRepay = 18,
};

/**
 * only called by myself，即顾客是我
 **/
@interface PayerActiveInappCreatePayerInappPaymentRequest : GPBMessage

/** 收银员的收款码 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payeeCode;

/** 应付金额 = 实付金额 + 实付积分等价金额 */
@property(nonatomic, readwrite) int32_t shouldPay;

/** 实付金额 */
@property(nonatomic, readwrite) int32_t actualPay;

@property(nonatomic, readonly) PayerActiveInappCreatePayerInappPaymentRequest_Points_OneOfCase pointsOneOfCase;

/** 实付积分代替金额 */
@property(nonatomic, readwrite) int32_t pointsPay;

/** 返还积分 */
@property(nonatomic, readwrite) int32_t pointsRepay;

/** 支付通道如支付宝、微信、云闪付 */
@property(nonatomic, readwrite) enum COMMONPaymentChannel paymentChannel;

/** 顾客客户端的实际ip地址 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *payerIp;

@end

/**
 * Fetches the raw value of a @c PayerActiveInappCreatePayerInappPaymentRequest's @c paymentChannel property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t PayerActiveInappCreatePayerInappPaymentRequest_PaymentChannel_RawValue(PayerActiveInappCreatePayerInappPaymentRequest *message);
/**
 * Sets the raw value of an @c PayerActiveInappCreatePayerInappPaymentRequest's @c paymentChannel property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetPayerActiveInappCreatePayerInappPaymentRequest_PaymentChannel_RawValue(PayerActiveInappCreatePayerInappPaymentRequest *message, int32_t value);

/**
 * Clears whatever value was set for the oneof 'points'.
 **/
void PayerActiveInappCreatePayerInappPaymentRequest_ClearPointsOneOfCase(PayerActiveInappCreatePayerInappPaymentRequest *message);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
