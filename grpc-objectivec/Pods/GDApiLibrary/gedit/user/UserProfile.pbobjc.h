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

@class COMMONListString;
@class COMMONStatus;
@class USRPROFUserProfile;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - USRPROFUserProfileRoot

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
@interface USRPROFUserProfileRoot : GPBRootObject
@end

#pragma mark - USRPROFBanUserResponse

typedef GPB_ENUM(USRPROFBanUserResponse_FieldNumber) {
  USRPROFBanUserResponse_FieldNumber_Uuid = 1,
  USRPROFBanUserResponse_FieldNumber_Status = 999,
};

@interface USRPROFBanUserResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) COMMONStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@end

#pragma mark - USRPROFGetMyProfileRequest

@interface USRPROFGetMyProfileRequest : GPBMessage

@end

#pragma mark - USRPROFListRequest

typedef GPB_ENUM(USRPROFListRequest_FieldNumber) {
  USRPROFListRequest_FieldNumber_Page = 1,
};

@interface USRPROFListRequest : GPBMessage

@property(nonatomic, readwrite) int32_t page;

@end

#pragma mark - USRPROFGetRequest

typedef GPB_ENUM(USRPROFGetRequest_FieldNumber) {
  USRPROFGetRequest_FieldNumber_Uuid = 1,
};

@interface USRPROFGetRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@end

#pragma mark - USRPROFBanUserRequest

typedef GPB_ENUM(USRPROFBanUserRequest_FieldNumber) {
  USRPROFBanUserRequest_FieldNumber_Uuid = 1,
  USRPROFBanUserRequest_FieldNumber_Active = 2,
};

@interface USRPROFBanUserRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@property(nonatomic, readwrite) BOOL active;

@end

#pragma mark - USRPROFBanResponse

typedef GPB_ENUM(USRPROFBanResponse_FieldNumber) {
  USRPROFBanResponse_FieldNumber_Uuid = 1,
  USRPROFBanResponse_FieldNumber_Active = 2,
  USRPROFBanResponse_FieldNumber_Status = 999,
};

@interface USRPROFBanResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) COMMONStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@property(nonatomic, readwrite) BOOL active;

@end

#pragma mark - USRPROFFindByMobileRequest

typedef GPB_ENUM(USRPROFFindByMobileRequest_FieldNumber) {
  USRPROFFindByMobileRequest_FieldNumber_Mobile = 1,
};

@interface USRPROFFindByMobileRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *mobile;

@end

#pragma mark - USRPROFUserProfileResponse

typedef GPB_ENUM(USRPROFUserProfileResponse_FieldNumber) {
  USRPROFUserProfileResponse_FieldNumber_UserProfile = 1,
  USRPROFUserProfileResponse_FieldNumber_Status = 999,
};

@interface USRPROFUserProfileResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) COMMONStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, strong, null_resettable) USRPROFUserProfile *userProfile;
/** Test to see if @c userProfile has been set. */
@property(nonatomic, readwrite) BOOL hasUserProfile;

@end

#pragma mark - USRPROFUserProfile

typedef GPB_ENUM(USRPROFUserProfile_FieldNumber) {
  USRPROFUserProfile_FieldNumber_Uuid = 1,
  USRPROFUserProfile_FieldNumber_Mobile = 2,
  USRPROFUserProfile_FieldNumber_Username = 3,
  USRPROFUserProfile_FieldNumber_Desc = 4,
  USRPROFUserProfile_FieldNumber_Logo = 5,
  USRPROFUserProfile_FieldNumber_DistrictUuid = 9,
  USRPROFUserProfile_FieldNumber_Photos = 11,
  USRPROFUserProfile_FieldNumber_Active = 59,
};

@interface USRPROFUserProfile : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *mobile;

@property(nonatomic, readwrite, copy, null_resettable) NSString *username;

@property(nonatomic, readwrite, copy, null_resettable) NSString *desc;

@property(nonatomic, readwrite, copy, null_resettable) NSString *logo;

@property(nonatomic, readwrite, copy, null_resettable) NSString *districtUuid;

@property(nonatomic, readwrite, strong, null_resettable) COMMONListString *photos;
/** Test to see if @c photos has been set. */
@property(nonatomic, readwrite) BOOL hasPhotos;

@property(nonatomic, readwrite) BOOL active;

@end

#pragma mark - USRPROFUpdateMyProfileRequest

typedef GPB_ENUM(USRPROFUpdateMyProfileRequest_FieldNumber) {
  USRPROFUpdateMyProfileRequest_FieldNumber_Mobile = 2,
  USRPROFUpdateMyProfileRequest_FieldNumber_Username = 3,
  USRPROFUpdateMyProfileRequest_FieldNumber_Desc = 4,
  USRPROFUpdateMyProfileRequest_FieldNumber_Logo = 5,
  USRPROFUpdateMyProfileRequest_FieldNumber_DistrictUuid = 9,
  USRPROFUpdateMyProfileRequest_FieldNumber_Photos = 11,
  USRPROFUpdateMyProfileRequest_FieldNumber_Active = 59,
};

typedef GPB_ENUM(USRPROFUpdateMyProfileRequest_Property_OneOfCase) {
  USRPROFUpdateMyProfileRequest_Property_OneOfCase_GPBUnsetOneOfCase = 0,
  USRPROFUpdateMyProfileRequest_Property_OneOfCase_Mobile = 2,
  USRPROFUpdateMyProfileRequest_Property_OneOfCase_Username = 3,
  USRPROFUpdateMyProfileRequest_Property_OneOfCase_Desc = 4,
  USRPROFUpdateMyProfileRequest_Property_OneOfCase_Logo = 5,
  USRPROFUpdateMyProfileRequest_Property_OneOfCase_DistrictUuid = 9,
  USRPROFUpdateMyProfileRequest_Property_OneOfCase_Photos = 11,
  USRPROFUpdateMyProfileRequest_Property_OneOfCase_Active = 59,
};

@interface USRPROFUpdateMyProfileRequest : GPBMessage

/** 只支持单项修改 */
@property(nonatomic, readonly) USRPROFUpdateMyProfileRequest_Property_OneOfCase propertyOneOfCase;

@property(nonatomic, readwrite, copy, null_resettable) NSString *mobile;

@property(nonatomic, readwrite, copy, null_resettable) NSString *username;

@property(nonatomic, readwrite, copy, null_resettable) NSString *desc;

@property(nonatomic, readwrite, copy, null_resettable) NSString *logo;

@property(nonatomic, readwrite, copy, null_resettable) NSString *districtUuid;

@property(nonatomic, readwrite, strong, null_resettable) COMMONListString *photos;

@property(nonatomic, readwrite) BOOL active;

@end

/**
 * Clears whatever value was set for the oneof 'property'.
 **/
void USRPROFUpdateMyProfileRequest_ClearPropertyOneOfCase(USRPROFUpdateMyProfileRequest *message);

#pragma mark - USRPROFUpdateMyProfileResponse

typedef GPB_ENUM(USRPROFUpdateMyProfileResponse_FieldNumber) {
  USRPROFUpdateMyProfileResponse_FieldNumber_Status = 999,
};

@interface USRPROFUpdateMyProfileResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) COMMONStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
