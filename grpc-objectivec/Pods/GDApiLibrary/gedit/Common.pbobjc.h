// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/common.proto

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

NS_ASSUME_NONNULL_BEGIN

#pragma mark - Enum GDAPaymentChannel

typedef GPB_ENUM(GDAPaymentChannel) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  GDAPaymentChannel_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  GDAPaymentChannel_Alipay = 0,
  GDAPaymentChannel_Wechat = 1,
  GDAPaymentChannel_Unionpay = 2,
};

GPBEnumDescriptor *GDAPaymentChannel_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL GDAPaymentChannel_IsValidValue(int32_t value);

#pragma mark - Enum GDAAccountType

typedef GPB_ENUM(GDAAccountType) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  GDAAccountType_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /** 现金账户 */
  GDAAccountType_Cash = 0,

  /** 可消费积分账户 */
  GDAAccountType_CurrentPoints = 1,

  /** 可兑换积分账户 */
  GDAAccountType_FixedPoints = 2,

  /** 红包账户 */
  GDAAccountType_Redpack = 3,

  /** 优惠券账户 */
  GDAAccountType_Coupon = 4,
};

GPBEnumDescriptor *GDAAccountType_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL GDAAccountType_IsValidValue(int32_t value);

#pragma mark - Enum GDAStatus_Code

/**
 * *
 * The set of canonical status codes. If new codes are added over time they must choose
 * a numerical value that does not collide with any previously used value.
 **/
typedef GPB_ENUM(GDAStatus_Code) {
  /**
   * Value used if any message's field encounters a value that is not defined
   * by this enum. The message will also have C functions to get/set the rawValue
   * of the field.
   **/
  GDAStatus_Code_GPBUnrecognizedEnumeratorValue = kGPBUnrecognizedEnumeratorValue,
  /**
   * *
   * The operation completed successfully.
   **/
  GDAStatus_Code_Ok = 0,

  /**
   * *
   * The operation was cancelled (typically by the caller).
   **/
  GDAStatus_Code_Cancelled = 1,

  /**
   * *
   * Unknown error.  An example of where this error may be returned is
   * if a Status value received from another address space belongs to
   * an error-space that is not known in this address space.  Also
   * errors raised by APIs that do not return enough error information
   * may be converted to this error.
   **/
  GDAStatus_Code_Unknown = 2,

  /**
   * *
   * Client specified an invalid argument.  Note that this differs
   * from FAILED_PRECONDITION.  INVALID_ARGUMENT indicates arguments
   * that are problematic regardless of the state of the system
   * (e.g., a malformed file name).
   **/
  GDAStatus_Code_InvalidArgument = 3,

  /**
   * *
   * Deadline expired before operation could complete.  For operations
   * that change the state of the system, this error may be returned
   * even if the operation has completed successfully.  For example, a
   * successful response from a server could have been delayed long
   * enough for the deadline to expire.
   **/
  GDAStatus_Code_DeadlineExceeded = 4,

  /**
   * *
   * Some requested entity (e.g., file or directory) was not found.
   **/
  GDAStatus_Code_NotFound = 5,

  /**
   * *
   * Some entity that we attempted to create (e.g., file or directory) already exists.
   **/
  GDAStatus_Code_AlreadyExists = 6,

  /**
   * *
   * The caller does not have permission to execute the specified
   * operation.  PERMISSION_DENIED must not be used for rejections
   * caused by exhausting some resource (use RESOURCE_EXHAUSTED
   * instead for those errors).  PERMISSION_DENIED must not be
   * used if the caller cannot be identified (use UNAUTHENTICATED
   * instead for those errors).
   **/
  GDAStatus_Code_PermissionDenied = 7,

  /**
   * *
   * Some resource has been exhausted, perhaps a per-user quota, or
   * perhaps the entire file system is out of space.
   **/
  GDAStatus_Code_ResourceExhausted = 8,

  /**
   * *
   * Operation was rejected because the system is not in a state
   * required for the operation's execution.  For example, directory
   * to be deleted may be non-empty, an rmdir operation is applied to
   * a non-directory, etc.
   *
   * <p>A litmus test that may help a service implementor in deciding
   * between FAILED_PRECONDITION, ABORTED, and UNAVAILABLE:
   * (a) Use UNAVAILABLE if the client can retry just the failing call.
   * (b) Use ABORTED if the client should retry at a higher-level
   * (e.g., restarting a read-modify-write sequence).
   * (c) Use FAILED_PRECONDITION if the client should not retry until
   * the system state has been explicitly fixed.  E.g., if an "rmdir"
   * fails because the directory is non-empty, FAILED_PRECONDITION
   * should be returned since the client should not retry unless
   * they have first fixed up the directory by deleting files from it.
   **/
  GDAStatus_Code_FailedPrecondition = 9,

  /**
   * *
   * The operation was aborted, typically due to a concurrency issue
   * like sequencer check failures, transaction aborts, etc.
   *
   * <p>See litmus test above for deciding between FAILED_PRECONDITION,
   * ABORTED, and UNAVAILABLE.
   **/
  GDAStatus_Code_Aborted = 10,

  /**
   * *
   * Operation was attempted past the valid range.  E.g., seeking or
   * reading past end of file.
   *
   * <p>Unlike INVALID_ARGUMENT, this error indicates a problem that may
   * be fixed if the system state changes. For example, a 32-bit file
   * system will generate INVALID_ARGUMENT if asked to read at an
   * offset that is not in the range [0,2^32-1], but it will generate
   * OUT_OF_RANGE if asked to read from an offset past the current
   * file size.
   *
   * <p>There is a fair bit of overlap between FAILED_PRECONDITION and OUT_OF_RANGE.
   * We recommend using OUT_OF_RANGE (the more specific error) when it applies
   * so that callers who are iterating through
   * a space can easily look for an OUT_OF_RANGE error to detect when they are done.
   **/
  GDAStatus_Code_OutOfRange = 11,

  /**
   * *
   * Operation is not implemented or not supported/enabled in this service.
   **/
  GDAStatus_Code_Unimplemented = 12,

  /**
   * *
   * Internal errors.  Means some invariants expected by underlying
   * system has been broken.  If you see one of these errors,
   * something is very broken.
   **/
  GDAStatus_Code_Internal = 13,

  /**
   * *
   * The service is currently unavailable.  This is a most likely a
   * transient condition and may be corrected by retrying with
   * a backoff.
   *
   * <p>See litmus test above for deciding between FAILED_PRECONDITION,
   * ABORTED, and UNAVAILABLE.
   **/
  GDAStatus_Code_Unavailable = 14,

  /**
   * *
   * Unrecoverable data loss or corruption.
   **/
  GDAStatus_Code_DataLoss = 15,

  /**
   * *
   * The request does not have valid authentication credentials for the
   * operation.
   **/
  GDAStatus_Code_Unauthenticated = 16,
};

GPBEnumDescriptor *GDAStatus_Code_EnumDescriptor(void);

/**
 * Checks to see if the given value is defined by the enum or was not known at
 * the time this source was generated.
 **/
BOOL GDAStatus_Code_IsValidValue(int32_t value);

#pragma mark - GDACommonRoot

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
@interface GDACommonRoot : GPBRootObject
@end

#pragma mark - GDAStatus

typedef GPB_ENUM(GDAStatus_FieldNumber) {
  GDAStatus_FieldNumber_Code = 1,
  GDAStatus_FieldNumber_Details = 2,
};

@interface GDAStatus : GPBMessage

/** copy from io.grpc.Status.Code */
@property(nonatomic, readwrite) GDAStatus_Code code;

@property(nonatomic, readwrite, copy, null_resettable) NSString *details;

@end

/**
 * Fetches the raw value of a @c GDAStatus's @c code property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t GDAStatus_Code_RawValue(GDAStatus *message);
/**
 * Sets the raw value of an @c GDAStatus's @c code property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetGDAStatus_Code_RawValue(GDAStatus *message, int32_t value);

#pragma mark - GDALocation

typedef GPB_ENUM(GDALocation_FieldNumber) {
  GDALocation_FieldNumber_Lat = 1,
  GDALocation_FieldNumber_Lon = 2,
};

@interface GDALocation : GPBMessage

@property(nonatomic, readwrite) double lat;

@property(nonatomic, readwrite) double lon;

@end

#pragma mark - GDAListString

typedef GPB_ENUM(GDAListString_FieldNumber) {
  GDAListString_FieldNumber_StrsArray = 11,
};

@interface GDAListString : GPBMessage

/** 可以用来保存多个图片url、多个电话号码等 */
@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *strsArray;
/** The number of items in @c strsArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger strsArray_Count;

@end

#pragma mark - GDADistrict

typedef GPB_ENUM(GDADistrict_FieldNumber) {
  GDADistrict_FieldNumber_Id_p = 1,
  GDADistrict_FieldNumber_Pid = 2,
  GDADistrict_FieldNumber_Citycode = 11,
  GDADistrict_FieldNumber_Adcode = 12,
  GDADistrict_FieldNumber_Name = 13,
  GDADistrict_FieldNumber_Center = 15,
  GDADistrict_FieldNumber_Level = 16,
};

/**
 * 行政区信息,参考http://lbs.amap.com/api/webservice/guide/api/district
 **/
@interface GDADistrict : GPBMessage

/** 自定义编号，如100000表示中国,110000表示北京，尽量使用adcode的值来填充。 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *id_p;

/** 上级编号，如北京110000的上级是中国100000 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *pid;

/** 行政区名称 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *name;

/** 城市编码 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *citycode;

/** 区域编码,街道没有独有的adcode，均继承父类（区县）的adcode */
@property(nonatomic, readwrite, copy, null_resettable) NSString *adcode;

/** 城市中心点, 必须说明,在区县级别，有28个区县不能返回中心点,在乡镇/街道界别，有9262个乡镇/街道不能返回中心点 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *center;

/** 行政区划级别 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *level;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
