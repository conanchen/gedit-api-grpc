// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/user/user_auth.proto

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

@class GDAQuestion;
@class GDAStatus;

NS_ASSUME_NONNULL_BEGIN

#pragma mark - GDAUserAuthRoot

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
@interface GDAUserAuthRoot : GPBRootObject
@end

#pragma mark - GDASigninQQRequest

typedef GPB_ENUM(GDASigninQQRequest_FieldNumber) {
  GDASigninQQRequest_FieldNumber_AccessToken = 1,
};

@interface GDASigninQQRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *accessToken;

@end

#pragma mark - GDASigninWechatRequest

typedef GPB_ENUM(GDASigninWechatRequest_FieldNumber) {
  GDASigninWechatRequest_FieldNumber_AccessToken = 1,
};

@interface GDASigninWechatRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *accessToken;

@end

#pragma mark - GDASigninWeiboRequest

typedef GPB_ENUM(GDASigninWeiboRequest_FieldNumber) {
  GDASigninWeiboRequest_FieldNumber_AccessToken = 1,
};

@interface GDASigninWeiboRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *accessToken;

@end

#pragma mark - GDASigninWithPasswordRequest

typedef GPB_ENUM(GDASigninWithPasswordRequest_FieldNumber) {
  GDASigninWithPasswordRequest_FieldNumber_Mobile = 1,
  GDASigninWithPasswordRequest_FieldNumber_Password = 2,
};

@interface GDASigninWithPasswordRequest : GPBMessage

/** 手机号 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *mobile;

/** 密码 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *password;

@end

#pragma mark - GDASmsStep1QuestionRequest

/**
 * string mobile = 1; //手机号
 **/
@interface GDASmsStep1QuestionRequest : GPBMessage

@end

#pragma mark - GDASmsStep1QuestionResponse

typedef GPB_ENUM(GDASmsStep1QuestionResponse_FieldNumber) {
  GDASmsStep1QuestionResponse_FieldNumber_Token = 1,
  GDASmsStep1QuestionResponse_FieldNumber_QuestionTip = 2,
  GDASmsStep1QuestionResponse_FieldNumber_QuestionArray = 3,
};

@interface GDASmsStep1QuestionResponse : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *token;

@property(nonatomic, readwrite, copy, null_resettable) NSString *questionTip;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<GDAQuestion*> *questionArray;
/** The number of items in @c questionArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger questionArray_Count;

@end

#pragma mark - GDAQuestion

typedef GPB_ENUM(GDAQuestion_FieldNumber) {
  GDAQuestion_FieldNumber_Uuid = 1,
  GDAQuestion_FieldNumber_Image = 2,
};

@interface GDAQuestion : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *uuid;

@property(nonatomic, readwrite, copy, null_resettable) NSString *image;

@end

#pragma mark - GDASmsStep2AnswerRequest

typedef GPB_ENUM(GDASmsStep2AnswerRequest_FieldNumber) {
  GDASmsStep2AnswerRequest_FieldNumber_Mobile = 1,
  GDASmsStep2AnswerRequest_FieldNumber_Token = 2,
  GDASmsStep2AnswerRequest_FieldNumber_QuestionUuidArray = 3,
};

@interface GDASmsStep2AnswerRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *mobile;

@property(nonatomic, readwrite, copy, null_resettable) NSString *token;

@property(nonatomic, readwrite, strong, null_resettable) NSMutableArray<NSString*> *questionUuidArray;
/** The number of items in @c questionUuidArray without causing the array to be created. */
@property(nonatomic, readonly) NSUInteger questionUuidArray_Count;

@end

#pragma mark - GDASmsStep2AnswerResponse

typedef GPB_ENUM(GDASmsStep2AnswerResponse_FieldNumber) {
  GDASmsStep2AnswerResponse_FieldNumber_Status = 999,
};

@interface GDASmsStep2AnswerResponse : GPBMessage

/** smscode will be sent from the telecom provider */
@property(nonatomic, readwrite, strong, null_resettable) GDAStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@end

#pragma mark - GDASmsStep3SigninRequest

typedef GPB_ENUM(GDASmsStep3SigninRequest_FieldNumber) {
  GDASmsStep3SigninRequest_FieldNumber_Mobile = 1,
  GDASmsStep3SigninRequest_FieldNumber_Smscode = 2,
};

@interface GDASmsStep3SigninRequest : GPBMessage

/** 手机号 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *mobile;

/** 短信验证码 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *smscode;

@end

#pragma mark - GDASmsStep3RegisterRequest

typedef GPB_ENUM(GDASmsStep3RegisterRequest_FieldNumber) {
  GDASmsStep3RegisterRequest_FieldNumber_Mobile = 1,
  GDASmsStep3RegisterRequest_FieldNumber_Smscode = 2,
  GDASmsStep3RegisterRequest_FieldNumber_Password = 3,
};

@interface GDASmsStep3RegisterRequest : GPBMessage

/** 手机号 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *mobile;

/** 短信验证码 */
@property(nonatomic, readwrite, copy, null_resettable) NSString *smscode;

@property(nonatomic, readwrite, copy, null_resettable) NSString *password;

@end

#pragma mark - GDASigninResponse

typedef GPB_ENUM(GDASigninResponse_FieldNumber) {
  GDASigninResponse_FieldNumber_AccessToken = 2,
  GDASigninResponse_FieldNumber_ExpiresIn = 3,
  GDASigninResponse_FieldNumber_Status = 999,
};

@interface GDASigninResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) GDAStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, copy, null_resettable) NSString *accessToken;

@property(nonatomic, readwrite, copy, null_resettable) NSString *expiresIn;

@end

#pragma mark - GDARegisterResponse

typedef GPB_ENUM(GDARegisterResponse_FieldNumber) {
  GDARegisterResponse_FieldNumber_AccessToken = 2,
  GDARegisterResponse_FieldNumber_ExpiresIn = 3,
  GDARegisterResponse_FieldNumber_Status = 999,
};

@interface GDARegisterResponse : GPBMessage

@property(nonatomic, readwrite, strong, null_resettable) GDAStatus *status;
/** Test to see if @c status has been set. */
@property(nonatomic, readwrite) BOOL hasStatus;

@property(nonatomic, readwrite, copy, null_resettable) NSString *accessToken;

@property(nonatomic, readwrite, copy, null_resettable) NSString *expiresIn;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
