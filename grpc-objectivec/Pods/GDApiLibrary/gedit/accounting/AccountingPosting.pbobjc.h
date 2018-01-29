// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/accounting/accounting_posting.proto

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

@class GDAPosting;
@class GDAStatus;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - GDAAccountingPostingRoot

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
@interface GDAAccountingPostingRoot : GPBRootObject
@end

#pragma mark - GDAListPostingRequest

typedef GPB_ENUM(GDAListPostingRequest_FieldNumber) {
  GDAListPostingRequest_FieldNumber_UserUuid = 11,
  GDAListPostingRequest_FieldNumber_AccountUuid = 12,
  GDAListPostingRequest_FieldNumber_JournalUuid = 13,
  GDAListPostingRequest_FieldNumber_From = 100,
  GDAListPostingRequest_FieldNumber_Size = 101,
};

@interface GDAListPostingRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *userUuid;

/** accountUuid+journalUuid unique */
@property(nonatomic, readwrite, copy, null_resettable) NSString *accountUuid;

/** optional */
@property(nonatomic, readwrite, copy, null_resettable) NSString *journalUuid;

@property(nonatomic, readwrite) int32_t from;

@property(nonatomic, readwrite) int32_t size;

@end

#pragma mark - GDAListMyPostingRequest

typedef GPB_ENUM(GDAListMyPostingRequest_FieldNumber) {
  GDAListMyPostingRequest_FieldNumber_AccountUuid = 12,
  GDAListMyPostingRequest_FieldNumber_LastUpdated = 13,
  GDAListMyPostingRequest_FieldNumber_From = 100,
  GDAListMyPostingRequest_FieldNumber_Size = 101,
};

@interface GDAListMyPostingRequest : GPBMessage

/** optional */
@property(nonatomic, readwrite, copy, null_resettable) NSString *accountUuid;

@property(nonatomic, readwrite) int64_t lastUpdated;

@property(nonatomic, readwrite) int32_t from;

@property(nonatomic, readwrite) int32_t size;

@end

#pragma mark - GDAGetPostingRequest

typedef GPB_ENUM(GDAGetPostingRequest_FieldNumber) {
  GDAGetPostingRequest_FieldNumber_Uuid = 1,
};

@interface GDAGetPostingRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@end

#pragma mark - GDAPostingResponse

typedef GPB_ENUM(GDAPostingResponse_FieldNumber) {
  GDAPostingResponse_FieldNumber_Posting = 1,
  GDAPostingResponse_FieldNumber_Status = 999,
};

@interface GDAPostingResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) GDAStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, strong, null_resettable) GDAPosting *posting;
/** Test to see if @c posting has been set. */
@property(nonatomic, readwrite) BOOL hasPosting;

@end

#pragma mark - GDAPosting

typedef GPB_ENUM(GDAPosting_FieldNumber) {
  GDAPosting_FieldNumber_Uuid = 1,
  GDAPosting_FieldNumber_UserUuid = 11,
  GDAPosting_FieldNumber_AccountUuid = 12,
  GDAPosting_FieldNumber_JournalUuid = 13,
  GDAPosting_FieldNumber_Amount = 14,
  GDAPosting_FieldNumber_Created = 15,
  GDAPosting_FieldNumber_Comment = 16,
};

@interface GDAPosting : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *userUuid;

/** accountUuid+journalUuid unique */
@property(nonatomic, readwrite, copy, null_resettable) NSString *accountUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *journalUuid;

@property(nonatomic, readwrite) int32_t amount;

@property(nonatomic, readwrite) int64_t created;

@property(nonatomic, readwrite, copy, null_resettable) NSString *comment;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
