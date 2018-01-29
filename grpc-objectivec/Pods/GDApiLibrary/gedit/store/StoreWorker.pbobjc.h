// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/store/store_worker.proto

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
@class GDAStatus;
@class GDAWorkship;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - GDAStoreWorkerRoot

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
@interface GDAStoreWorkerRoot : GPBRootObject
@end

#pragma mark - GDAAddWorkershipRequest

typedef GPB_ENUM(GDAAddWorkershipRequest_FieldNumber) {
  GDAAddWorkershipRequest_FieldNumber_StoreUuid = 1,
  GDAAddWorkershipRequest_FieldNumber_WorkerUuid = 3,
};

@interface GDAAddWorkershipRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *workerUuid;

@end

#pragma mark - GDAListWorkshipByStoreRequest

typedef GPB_ENUM(GDAListWorkshipByStoreRequest_FieldNumber) {
  GDAListWorkshipByStoreRequest_FieldNumber_StoreUuid = 1,
  GDAListWorkshipByStoreRequest_FieldNumber_From = 100,
  GDAListWorkshipByStoreRequest_FieldNumber_Size = 101,
};

@interface GDAListWorkshipByStoreRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeUuid;

@property(nonatomic, readwrite) int32_t from;

@property(nonatomic, readwrite) int32_t size;

@end

#pragma mark - GDAListMyWorkinStoreRequest

typedef GPB_ENUM(GDAListMyWorkinStoreRequest_FieldNumber) {
  GDAListMyWorkinStoreRequest_FieldNumber_LastUpdated = 1,
};

@interface GDAListMyWorkinStoreRequest : GPBMessage

@property(nonatomic, readwrite) int64_t lastUpdated;

@end

#pragma mark - GDAGetMyCurrentWorkinStoreRequest

@interface GDAGetMyCurrentWorkinStoreRequest : GPBMessage

@end

#pragma mark - GDAListWorkshipByWorkerRequest

typedef GPB_ENUM(GDAListWorkshipByWorkerRequest_FieldNumber) {
  GDAListWorkshipByWorkerRequest_FieldNumber_WorkerUuid = 3,
  GDAListWorkshipByWorkerRequest_FieldNumber_From = 100,
  GDAListWorkshipByWorkerRequest_FieldNumber_Size = 101,
};

@interface GDAListWorkshipByWorkerRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *workerUuid;

@property(nonatomic, readwrite) int32_t from;

@property(nonatomic, readwrite) int32_t size;

@end

#pragma mark - GDAWorkshipResponse

typedef GPB_ENUM(GDAWorkshipResponse_FieldNumber) {
  GDAWorkshipResponse_FieldNumber_Ownership = 1,
  GDAWorkshipResponse_FieldNumber_From = 100,
  GDAWorkshipResponse_FieldNumber_Status = 999,
};

@interface GDAWorkshipResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) GDAStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, strong, null_resettable) GDAWorkship *ownership;
/** Test to see if @c ownership has been set. */
@property(nonatomic, readwrite) BOOL hasOwnership;

@property(nonatomic, readwrite) int32_t from;

@end

#pragma mark - GDABanWorkshipRequest

typedef GPB_ENUM(GDABanWorkshipRequest_FieldNumber) {
  GDABanWorkshipRequest_FieldNumber_WorkerUuid = 1,
  GDABanWorkshipRequest_FieldNumber_StoreUuid = 5,
  GDABanWorkshipRequest_FieldNumber_Active = 7,
};

@interface GDABanWorkshipRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *workerUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeUuid;

@property(nonatomic, readwrite) BOOL active;

@end

#pragma mark - GDAWorkship

typedef GPB_ENUM(GDAWorkship_FieldNumber) {
  GDAWorkship_FieldNumber_Uuid = 1,
  GDAWorkship_FieldNumber_UserUuid = 3,
  GDAWorkship_FieldNumber_StoreUuid = 5,
  GDAWorkship_FieldNumber_UserName = 7,
  GDAWorkship_FieldNumber_UserLogo = 9,
  GDAWorkship_FieldNumber_StoreName = 12,
  GDAWorkship_FieldNumber_StoreLogo = 15,
  GDAWorkship_FieldNumber_Location = 18,
  GDAWorkship_FieldNumber_Active = 27,
  GDAWorkship_FieldNumber_Created = 29,
  GDAWorkship_FieldNumber_LastUpdated = 30,
};

@interface GDAWorkship : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *userUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *storeUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *userName;

@property(nonatomic, readwrite, copy, null_resettable) NSString *userLogo;

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
