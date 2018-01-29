// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/accounting/accounting_balance.proto

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

@class GDABalance;
@class GDAStatus;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - GDAAccountingBalanceRoot

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
@interface GDAAccountingBalanceRoot : GPBRootObject
@end

#pragma mark - GDAListBalanceRequest

typedef GPB_ENUM(GDAListBalanceRequest_FieldNumber) {
  GDAListBalanceRequest_FieldNumber_AccountUuid = 1,
  GDAListBalanceRequest_FieldNumber_From = 100,
  GDAListBalanceRequest_FieldNumber_Size = 101,
};

@interface GDAListBalanceRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *accountUuid;

@property(nonatomic, readwrite) int32_t from;

@property(nonatomic, readwrite) int32_t size;

@end

#pragma mark - GDABalanceResponse

typedef GPB_ENUM(GDABalanceResponse_FieldNumber) {
  GDABalanceResponse_FieldNumber_Balance = 1,
  GDABalanceResponse_FieldNumber_Status = 999,
};

@interface GDABalanceResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) GDAStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, strong, null_resettable) GDABalance *balance;
/** Test to see if @c balance has been set. */
@property(nonatomic, readwrite) BOOL hasBalance;

@end

#pragma mark - GDABalance

typedef GPB_ENUM(GDABalance_FieldNumber) {
  GDABalance_FieldNumber_AccountUuid = 1,
  GDABalance_FieldNumber_PreviousBalance = 15,
  GDABalance_FieldNumber_PreviousDate = 16,
  GDABalance_FieldNumber_CurrentChanges = 17,
  GDABalance_FieldNumber_CurrentDate = 18,
  GDABalance_FieldNumber_CurrentBalance = 19,
};

@interface GDABalance : GPBMessage

/** | 账户编号UUID      | 前期余额  | 前期日期  | 当期变化 | 当期日期  | 当期余额 |  CRC    | */
@property(nonatomic, readwrite, copy, null_resettable) NSString *accountUuid;

@property(nonatomic, readwrite) int32_t previousBalance;

@property(nonatomic, readwrite) int64_t previousDate;

@property(nonatomic, readwrite) int32_t currentChanges;

@property(nonatomic, readwrite) int64_t currentDate;

@property(nonatomic, readwrite) int32_t currentBalance;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
