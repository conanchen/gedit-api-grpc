// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/accounting/accounting_account.proto

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

@class GDAAccount;
@class GDAStatus;
@class GDAUserAndAccountType;
GPB_ENUM_FWD_DECLARE(GDAAccountType);

NS_ASSUME_NONNULL_BEGIN

#pragma mark - GDAAccountingAccountRoot

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
@interface GDAAccountingAccountRoot : GPBRootObject
@end

#pragma mark - GDAUpsertAccountsRequest

typedef GPB_ENUM(GDAUpsertAccountsRequest_FieldNumber) {
  GDAUpsertAccountsRequest_FieldNumber_UserUuid = 11,
};

@interface GDAUpsertAccountsRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *userUuid;

@end

#pragma mark - GDAListMyAccountRequest

typedef GPB_ENUM(GDAListMyAccountRequest_FieldNumber) {
  GDAListMyAccountRequest_FieldNumber_LastUpdated = 1,
};

@interface GDAListMyAccountRequest : GPBMessage

@property(nonatomic, readwrite) int64_t lastUpdated;

@end

#pragma mark - GDAAccountResponse

typedef GPB_ENUM(GDAAccountResponse_FieldNumber) {
  GDAAccountResponse_FieldNumber_Account = 1,
  GDAAccountResponse_FieldNumber_Status = 999,
};

@interface GDAAccountResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) GDAStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, strong, null_resettable) GDAAccount *account;
/** Test to see if @c account has been set. */
@property(nonatomic, readwrite) BOOL hasAccount;

@end

#pragma mark - GDAAccount

typedef GPB_ENUM(GDAAccount_FieldNumber) {
  GDAAccount_FieldNumber_Uuid = 11,
  GDAAccount_FieldNumber_UserUuid = 12,
  GDAAccount_FieldNumber_Type = 14,
  GDAAccount_FieldNumber_PreviousBalance = 15,
  GDAAccount_FieldNumber_PreviousDate = 16,
  GDAAccount_FieldNumber_CurrentChanges = 17,
  GDAAccount_FieldNumber_CurrentDate = 18,
  GDAAccount_FieldNumber_CurrentBalance = 19,
  GDAAccount_FieldNumber_Created = 60,
  GDAAccount_FieldNumber_LastUpdated = 61,
};

@interface GDAAccount : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *userUuid;

@property(nonatomic, readwrite) enum GDAAccountType type;

@property(nonatomic, readwrite) int32_t previousBalance;

@property(nonatomic, readwrite) int64_t previousDate;

@property(nonatomic, readwrite) int32_t currentChanges;

@property(nonatomic, readwrite) int64_t currentDate;

@property(nonatomic, readwrite) int32_t currentBalance;

@property(nonatomic, readwrite) int64_t created;

@property(nonatomic, readwrite) int64_t lastUpdated;

@end

/**
 * Fetches the raw value of a @c GDAAccount's @c type property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t GDAAccount_Type_RawValue(GDAAccount *message);
/**
 * Sets the raw value of an @c GDAAccount's @c type property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetGDAAccount_Type_RawValue(GDAAccount *message, int32_t value);

#pragma mark - GDAGetAccountRequest

typedef GPB_ENUM(GDAGetAccountRequest_FieldNumber) {
  GDAGetAccountRequest_FieldNumber_Uuid = 1,
};

@interface GDAGetAccountRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@end

#pragma mark - GDAFindAccountRequest

typedef GPB_ENUM(GDAFindAccountRequest_FieldNumber) {
  GDAFindAccountRequest_FieldNumber_UserAndAccountType = 1,
};

typedef GPB_ENUM(GDAFindAccountRequest_Value_OneOfCase) {
  GDAFindAccountRequest_Value_OneOfCase_GPBUnsetOneOfCase = 0,
  GDAFindAccountRequest_Value_OneOfCase_UserAndAccountType = 1,
};

@interface GDAFindAccountRequest : GPBMessage

@property(nonatomic, readonly) GDAFindAccountRequest_Value_OneOfCase valueOneOfCase;

@property(nonatomic, readwrite, strong, null_resettable) GDAUserAndAccountType *userAndAccountType;

@end

/**
 * Clears whatever value was set for the oneof 'value'.
 **/
void GDAFindAccountRequest_ClearValueOneOfCase(GDAFindAccountRequest *message);

#pragma mark - GDAUserAndAccountType

typedef GPB_ENUM(GDAUserAndAccountType_FieldNumber) {
  GDAUserAndAccountType_FieldNumber_UserUuid = 11,
  GDAUserAndAccountType_FieldNumber_Type = 14,
};

@interface GDAUserAndAccountType : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *userUuid;

@property(nonatomic, readwrite) enum GDAAccountType type;

@end

/**
 * Fetches the raw value of a @c GDAUserAndAccountType's @c type property, even
 * if the value was not defined by the enum at the time the code was generated.
 **/
int32_t GDAUserAndAccountType_Type_RawValue(GDAUserAndAccountType *message);
/**
 * Sets the raw value of an @c GDAUserAndAccountType's @c type property, allowing
 * it to be set to a value that was not defined by the enum at the time the code
 * was generated.
 **/
void SetGDAUserAndAccountType_Type_RawValue(GDAUserAndAccountType *message, int32_t value);

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)