// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/product/catalog_member.proto

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

@class GDACatalogMember;
@class GDAStatus;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - GDACatalogMemberRoot

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
@interface GDACatalogMemberRoot : GPBRootObject
@end

#pragma mark - GDAGetCatalogMemberRequest

typedef GPB_ENUM(GDAGetCatalogMemberRequest_FieldNumber) {
  GDAGetCatalogMemberRequest_FieldNumber_Uuid = 1,
};

@interface GDAGetCatalogMemberRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@end

#pragma mark - GDAListCatalogMemberRequest

typedef GPB_ENUM(GDAListCatalogMemberRequest_FieldNumber) {
  GDAListCatalogMemberRequest_FieldNumber_CatalogUuid = 1,
};

@interface GDAListCatalogMemberRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *catalogUuid;

@end

#pragma mark - GDACatalogMemberResponse

typedef GPB_ENUM(GDACatalogMemberResponse_FieldNumber) {
  GDACatalogMemberResponse_FieldNumber_CatalogMember = 1,
  GDACatalogMemberResponse_FieldNumber_Status = 999,
};

@interface GDACatalogMemberResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) GDAStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, strong, null_resettable) GDACatalogMember *catalogMember;
/** Test to see if @c catalogMember has been set. */
@property(nonatomic, readwrite) BOOL hasCatalogMember;

@end

#pragma mark - GDACatalogMember

typedef GPB_ENUM(GDACatalogMember_FieldNumber) {
  GDACatalogMember_FieldNumber_CatalogUuid = 1,
  GDACatalogMember_FieldNumber_ProductUuid = 2,
};

@interface GDACatalogMember : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *catalogUuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *productUuid;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
