// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/store/store_owner.proto

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

@class GDALocation;
@class GDAOwnership;
@class GDAStatus;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - GDAStoreOwnerRoot

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
@interface GDAStoreOwnerRoot : GPBRootObject
@end

#pragma mark - GDATransferOwnershipRequest

typedef GPB_ENUM(GDATransferOwnershipRequest_FieldNumber) {
  GDATransferOwnershipRequest_FieldNumber_StoreUuid = 1,
  GDATransferOwnershipRequest_FieldNumber_UserUuid = 3,
};

@interface GDATransferOwnershipRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *userUuid;

@end

#pragma mark - GDAListOwnershipByOwnerRequest

typedef GPB_ENUM(GDAListOwnershipByOwnerRequest_FieldNumber) {
  GDAListOwnershipByOwnerRequest_FieldNumber_OwnerUuid = 3,
  GDAListOwnershipByOwnerRequest_FieldNumber_From = 100,
  GDAListOwnershipByOwnerRequest_FieldNumber_Size = 101,
};

@interface GDAListOwnershipByOwnerRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *ownerUuid;

@property(nonatomic, readwrite) int32_t from;

@property(nonatomic, readwrite) int32_t size;

@end

#pragma mark - GDAListMyStoreRequest

typedef GPB_ENUM(GDAListMyStoreRequest_FieldNumber) {
  GDAListMyStoreRequest_FieldNumber_LastUpdated = 1,
};

@interface GDAListMyStoreRequest : GPBMessage

@property(nonatomic, readwrite) int64_t lastUpdated;

@end

#pragma mark - GDAFindOwnerByStoreRequest

typedef GPB_ENUM(GDAFindOwnerByStoreRequest_FieldNumber) {
  GDAFindOwnerByStoreRequest_FieldNumber_StoreUuid = 1,
};

@interface GDAFindOwnerByStoreRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeUuid;

@end

#pragma mark - GDAOwnershipResponse

typedef GPB_ENUM(GDAOwnershipResponse_FieldNumber) {
  GDAOwnershipResponse_FieldNumber_Ownership = 1,
  GDAOwnershipResponse_FieldNumber_From = 100,
  GDAOwnershipResponse_FieldNumber_Status = 999,
};

@interface GDAOwnershipResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) GDAStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, strong, null_resettable) GDAOwnership *ownership;
/** Test to see if @c ownership has been set. */
@property(nonatomic, readwrite) BOOL hasOwnership;

@property(nonatomic, readwrite) int32_t from;

@end

#pragma mark - GDAOwnership

typedef GPB_ENUM(GDAOwnership_FieldNumber) {
  GDAOwnership_FieldNumber_UserUuid = 1,
  GDAOwnership_FieldNumber_StoreUuid = 5,
  GDAOwnership_FieldNumber_StoreName = 7,
  GDAOwnership_FieldNumber_StoreLogo = 9,
  GDAOwnership_FieldNumber_Location = 11,
  GDAOwnership_FieldNumber_Active = 27,
  GDAOwnership_FieldNumber_Created = 29,
  GDAOwnership_FieldNumber_LastUpdated = 30,
};

@interface GDAOwnership : GPBMessage

/** 我的 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *userUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeName;

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeLogo;

@property(nonatomic, readwrite, strong, null_resettable) GDALocation *location;
/** Test to see if @c location has been set. */
@property(nonatomic, readwrite) BOOL hasLocation;

@property(nonatomic, readwrite) BOOL active;

@property(nonatomic, readwrite) int64_t created;

@property(nonatomic, readwrite) int64_t lastUpdated;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
