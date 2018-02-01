// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/user/user_profile.proto

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

@class GDAListString;
@class GDAStatus;
@class GDAUserProfile;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - GDAUserProfileRoot

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
@interface GDAUserProfileRoot : GPBRootObject
@end

#pragma mark - GDABanUserResponse

typedef GPB_ENUM(GDABanUserResponse_FieldNumber) {
  GDABanUserResponse_FieldNumber_Uuid = 1,
  GDABanUserResponse_FieldNumber_Status = 999,
};

@interface GDABanUserResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) GDAStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@end

#pragma mark - GDAGetMyProfileRequest

@interface GDAGetMyProfileRequest : GPBMessage

@end

#pragma mark - GDAListRequest

typedef GPB_ENUM(GDAListRequest_FieldNumber) {
  GDAListRequest_FieldNumber_Page = 1,
};

@interface GDAListRequest : GPBMessage

@property(nonatomic, readwrite) int32_t page;

@end

#pragma mark - GDAGetRequest

typedef GPB_ENUM(GDAGetRequest_FieldNumber) {
  GDAGetRequest_FieldNumber_Uuid = 1,
};

@interface GDAGetRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@end

#pragma mark - GDABanUserRequest

typedef GPB_ENUM(GDABanUserRequest_FieldNumber) {
  GDABanUserRequest_FieldNumber_Uuid = 1,
  GDABanUserRequest_FieldNumber_Active = 2,
};

@interface GDABanUserRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@property(nonatomic, readwrite) BOOL active;

@end

#pragma mark - GDABanResponse

typedef GPB_ENUM(GDABanResponse_FieldNumber) {
  GDABanResponse_FieldNumber_Uuid = 1,
  GDABanResponse_FieldNumber_Active = 2,
  GDABanResponse_FieldNumber_Status = 999,
};

@interface GDABanResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) GDAStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@property(nonatomic, readwrite) BOOL active;

@end

#pragma mark - GDAFindByMobileRequest

typedef GPB_ENUM(GDAFindByMobileRequest_FieldNumber) {
  GDAFindByMobileRequest_FieldNumber_Mobile = 1,
};

@interface GDAFindByMobileRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *mobile;

@end

#pragma mark - GDAUserProfileResponse

typedef GPB_ENUM(GDAUserProfileResponse_FieldNumber) {
  GDAUserProfileResponse_FieldNumber_UserProfile = 1,
  GDAUserProfileResponse_FieldNumber_Status = 999,
};

@interface GDAUserProfileResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) GDAStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, strong, null_resettable) GDAUserProfile *userProfile;
/** Test to see if @c userProfile has been set. */
@property(nonatomic, readwrite) BOOL hasUserProfile;

@end

#pragma mark - GDAUserProfile

typedef GPB_ENUM(GDAUserProfile_FieldNumber) {
  GDAUserProfile_FieldNumber_Uuid = 1,
  GDAUserProfile_FieldNumber_Mobile = 2,
  GDAUserProfile_FieldNumber_Username = 3,
  GDAUserProfile_FieldNumber_Desc = 4,
  GDAUserProfile_FieldNumber_Logo = 5,
  GDAUserProfile_FieldNumber_DistrictUuid = 9,
  GDAUserProfile_FieldNumber_Photos = 11,
  GDAUserProfile_FieldNumber_Active = 59,
};

@interface GDAUserProfile : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *mobile;

@property(nonatomic, readwrite, copy, null_resettable) NSString *username;

@property(nonatomic, readwrite, copy, null_resettable) NSString *desc;

@property(nonatomic, readwrite, copy, null_resettable) NSString *logo;

@property(nonatomic, readwrite, copy, null_resettable) NSString *districtUuid;

@property(nonatomic, readwrite, strong, null_resettable) GDAListString *photos;
/** Test to see if @c photos has been set. */
@property(nonatomic, readwrite) BOOL hasPhotos;

@property(nonatomic, readwrite) BOOL active;

@end

#pragma mark - GDAUpdateMyProfileRequest

typedef GPB_ENUM(GDAUpdateMyProfileRequest_FieldNumber) {
  GDAUpdateMyProfileRequest_FieldNumber_Mobile = 2,
  GDAUpdateMyProfileRequest_FieldNumber_Username = 3,
  GDAUpdateMyProfileRequest_FieldNumber_Desc = 4,
  GDAUpdateMyProfileRequest_FieldNumber_Logo = 5,
  GDAUpdateMyProfileRequest_FieldNumber_DistrictUuid = 9,
  GDAUpdateMyProfileRequest_FieldNumber_Photos = 11,
  GDAUpdateMyProfileRequest_FieldNumber_Active = 59,
};

typedef GPB_ENUM(GDAUpdateMyProfileRequest_Property_OneOfCase) {
  GDAUpdateMyProfileRequest_Property_OneOfCase_GPBUnsetOneOfCase = 0,
  GDAUpdateMyProfileRequest_Property_OneOfCase_Mobile = 2,
  GDAUpdateMyProfileRequest_Property_OneOfCase_Username = 3,
  GDAUpdateMyProfileRequest_Property_OneOfCase_Desc = 4,
  GDAUpdateMyProfileRequest_Property_OneOfCase_Logo = 5,
  GDAUpdateMyProfileRequest_Property_OneOfCase_DistrictUuid = 9,
  GDAUpdateMyProfileRequest_Property_OneOfCase_Photos = 11,
  GDAUpdateMyProfileRequest_Property_OneOfCase_Active = 59,
};

@interface GDAUpdateMyProfileRequest : GPBMessage

/** 只支持单项修改 */
@property(nonatomic, readonly) GDAUpdateMyProfileRequest_Property_OneOfCase propertyOneOfCase;

@property(nonatomic, readwrite, copy, null_resettable) NSString *mobile;

@property(nonatomic, readwrite, copy, null_resettable) NSString *username;

@property(nonatomic, readwrite, copy, null_resettable) NSString *desc;

@property(nonatomic, readwrite, copy, null_resettable) NSString *logo;

@property(nonatomic, readwrite, copy, null_resettable) NSString *districtUuid;

@property(nonatomic, readwrite, strong, null_resettable) GDAListString *photos;

@property(nonatomic, readwrite) BOOL active;

@end

/**
 * Clears whatever value was set for the oneof 'property'.
 **/
void GDAUpdateMyProfileRequest_ClearPropertyOneOfCase(GDAUpdateMyProfileRequest *message);

#pragma mark - GDAUpdateMyProfileResponse

typedef GPB_ENUM(GDAUpdateMyProfileResponse_FieldNumber) {
  GDAUpdateMyProfileResponse_FieldNumber_Status = 999,
};

@interface GDAUpdateMyProfileResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) GDAStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)