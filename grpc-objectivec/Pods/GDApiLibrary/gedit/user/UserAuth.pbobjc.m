// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/user/user_auth.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers_RuntimeSupport.h>
#else
 #import "GPBProtocolBuffers_RuntimeSupport.h"
#endif

 #import "gedit/user/UserAuth.pbobjc.h"
 #import "gedit/Common.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GDAUserAuthRoot

@implementation GDAUserAuthRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - GDAUserAuthRoot_FileDescriptor

static GPBFileDescriptor *GDAUserAuthRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"gedit.user"
                                                 objcPrefix:@"GDA"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - GDASigninQQRequest

@implementation GDASigninQQRequest

@dynamic accessToken;

typedef struct GDASigninQQRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *accessToken;
} GDASigninQQRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accessToken",
        .dataTypeSpecific.className = NULL,
        .number = GDASigninQQRequest_FieldNumber_AccessToken,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDASigninQQRequest__storage_, accessToken),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDASigninQQRequest class]
                                     rootClass:[GDAUserAuthRoot class]
                                          file:GDAUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDASigninQQRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\013\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDASigninWechatRequest

@implementation GDASigninWechatRequest

@dynamic accessToken;

typedef struct GDASigninWechatRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *accessToken;
} GDASigninWechatRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accessToken",
        .dataTypeSpecific.className = NULL,
        .number = GDASigninWechatRequest_FieldNumber_AccessToken,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDASigninWechatRequest__storage_, accessToken),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDASigninWechatRequest class]
                                     rootClass:[GDAUserAuthRoot class]
                                          file:GDAUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDASigninWechatRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\013\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDASigninWeiboRequest

@implementation GDASigninWeiboRequest

@dynamic accessToken;

typedef struct GDASigninWeiboRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *accessToken;
} GDASigninWeiboRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accessToken",
        .dataTypeSpecific.className = NULL,
        .number = GDASigninWeiboRequest_FieldNumber_AccessToken,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDASigninWeiboRequest__storage_, accessToken),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDASigninWeiboRequest class]
                                     rootClass:[GDAUserAuthRoot class]
                                          file:GDAUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDASigninWeiboRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\013\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDASigninWithPasswordRequest

@implementation GDASigninWithPasswordRequest

@dynamic mobile;
@dynamic password;

typedef struct GDASigninWithPasswordRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *mobile;
  NSString *password;
} GDASigninWithPasswordRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "mobile",
        .dataTypeSpecific.className = NULL,
        .number = GDASigninWithPasswordRequest_FieldNumber_Mobile,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDASigninWithPasswordRequest__storage_, mobile),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "password",
        .dataTypeSpecific.className = NULL,
        .number = GDASigninWithPasswordRequest_FieldNumber_Password,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDASigninWithPasswordRequest__storage_, password),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDASigninWithPasswordRequest class]
                                     rootClass:[GDAUserAuthRoot class]
                                          file:GDAUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDASigninWithPasswordRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDASmsStep1QuestionRequest

@implementation GDASmsStep1QuestionRequest


typedef struct GDASmsStep1QuestionRequest__storage_ {
  uint32_t _has_storage_[1];
} GDASmsStep1QuestionRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDASmsStep1QuestionRequest class]
                                     rootClass:[GDAUserAuthRoot class]
                                          file:GDAUserAuthRoot_FileDescriptor()
                                        fields:NULL
                                    fieldCount:0
                                   storageSize:sizeof(GDASmsStep1QuestionRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDASmsStep1QuestionResponse

@implementation GDASmsStep1QuestionResponse

@dynamic token;
@dynamic questionTip;
@dynamic questionArray, questionArray_Count;

typedef struct GDASmsStep1QuestionResponse__storage_ {
  uint32_t _has_storage_[1];
  NSString *token;
  NSString *questionTip;
  NSMutableArray *questionArray;
} GDASmsStep1QuestionResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "token",
        .dataTypeSpecific.className = NULL,
        .number = GDASmsStep1QuestionResponse_FieldNumber_Token,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDASmsStep1QuestionResponse__storage_, token),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "questionTip",
        .dataTypeSpecific.className = NULL,
        .number = GDASmsStep1QuestionResponse_FieldNumber_QuestionTip,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDASmsStep1QuestionResponse__storage_, questionTip),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "questionArray",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAQuestion),
        .number = GDASmsStep1QuestionResponse_FieldNumber_QuestionArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GDASmsStep1QuestionResponse__storage_, questionArray),
        .flags = GPBFieldRepeated,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDASmsStep1QuestionResponse class]
                                     rootClass:[GDAUserAuthRoot class]
                                          file:GDAUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDASmsStep1QuestionResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\002\013\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAQuestion

@implementation GDAQuestion

@dynamic uuid;
@dynamic image;

typedef struct GDAQuestion__storage_ {
  uint32_t _has_storage_[1];
  NSString *uuid;
  NSString *image;
} GDAQuestion__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAQuestion_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAQuestion__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "image",
        .dataTypeSpecific.className = NULL,
        .number = GDAQuestion_FieldNumber_Image,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAQuestion__storage_, image),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAQuestion class]
                                     rootClass:[GDAUserAuthRoot class]
                                          file:GDAUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAQuestion__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDASmsStep2AnswerRequest

@implementation GDASmsStep2AnswerRequest

@dynamic mobile;
@dynamic token;
@dynamic questionUuidArray, questionUuidArray_Count;

typedef struct GDASmsStep2AnswerRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *mobile;
  NSString *token;
  NSMutableArray *questionUuidArray;
} GDASmsStep2AnswerRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "mobile",
        .dataTypeSpecific.className = NULL,
        .number = GDASmsStep2AnswerRequest_FieldNumber_Mobile,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDASmsStep2AnswerRequest__storage_, mobile),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "token",
        .dataTypeSpecific.className = NULL,
        .number = GDASmsStep2AnswerRequest_FieldNumber_Token,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDASmsStep2AnswerRequest__storage_, token),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "questionUuidArray",
        .dataTypeSpecific.className = NULL,
        .number = GDASmsStep2AnswerRequest_FieldNumber_QuestionUuidArray,
        .hasIndex = GPBNoHasBit,
        .offset = (uint32_t)offsetof(GDASmsStep2AnswerRequest__storage_, questionUuidArray),
        .flags = (GPBFieldFlags)(GPBFieldRepeated | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDASmsStep2AnswerRequest class]
                                     rootClass:[GDAUserAuthRoot class]
                                          file:GDAUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDASmsStep2AnswerRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\003\000questionUuid\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDASmsStep2AnswerResponse

@implementation GDASmsStep2AnswerResponse

@dynamic hasStatus, status;

typedef struct GDASmsStep2AnswerResponse__storage_ {
  uint32_t _has_storage_[1];
  GDAStatus *status;
} GDASmsStep2AnswerResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAStatus),
        .number = GDASmsStep2AnswerResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDASmsStep2AnswerResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDASmsStep2AnswerResponse class]
                                     rootClass:[GDAUserAuthRoot class]
                                          file:GDAUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDASmsStep2AnswerResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDASmsStep3SigninRequest

@implementation GDASmsStep3SigninRequest

@dynamic mobile;
@dynamic smscode;

typedef struct GDASmsStep3SigninRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *mobile;
  NSString *smscode;
} GDASmsStep3SigninRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "mobile",
        .dataTypeSpecific.className = NULL,
        .number = GDASmsStep3SigninRequest_FieldNumber_Mobile,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDASmsStep3SigninRequest__storage_, mobile),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "smscode",
        .dataTypeSpecific.className = NULL,
        .number = GDASmsStep3SigninRequest_FieldNumber_Smscode,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDASmsStep3SigninRequest__storage_, smscode),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDASmsStep3SigninRequest class]
                                     rootClass:[GDAUserAuthRoot class]
                                          file:GDAUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDASmsStep3SigninRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDASmsStep3RegisterRequest

@implementation GDASmsStep3RegisterRequest

@dynamic mobile;
@dynamic smscode;
@dynamic password;

typedef struct GDASmsStep3RegisterRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *mobile;
  NSString *smscode;
  NSString *password;
} GDASmsStep3RegisterRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "mobile",
        .dataTypeSpecific.className = NULL,
        .number = GDASmsStep3RegisterRequest_FieldNumber_Mobile,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDASmsStep3RegisterRequest__storage_, mobile),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "smscode",
        .dataTypeSpecific.className = NULL,
        .number = GDASmsStep3RegisterRequest_FieldNumber_Smscode,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDASmsStep3RegisterRequest__storage_, smscode),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "password",
        .dataTypeSpecific.className = NULL,
        .number = GDASmsStep3RegisterRequest_FieldNumber_Password,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDASmsStep3RegisterRequest__storage_, password),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDASmsStep3RegisterRequest class]
                                     rootClass:[GDAUserAuthRoot class]
                                          file:GDAUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDASmsStep3RegisterRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDASigninResponse

@implementation GDASigninResponse

@dynamic hasStatus, status;
@dynamic accessToken;
@dynamic expiresIn;

typedef struct GDASigninResponse__storage_ {
  uint32_t _has_storage_[1];
  NSString *accessToken;
  NSString *expiresIn;
  GDAStatus *status;
} GDASigninResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accessToken",
        .dataTypeSpecific.className = NULL,
        .number = GDASigninResponse_FieldNumber_AccessToken,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDASigninResponse__storage_, accessToken),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "expiresIn",
        .dataTypeSpecific.className = NULL,
        .number = GDASigninResponse_FieldNumber_ExpiresIn,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDASigninResponse__storage_, expiresIn),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAStatus),
        .number = GDASigninResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDASigninResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDASigninResponse class]
                                     rootClass:[GDAUserAuthRoot class]
                                          file:GDAUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDASigninResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\002\013\000\003\t\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDARegisterResponse

@implementation GDARegisterResponse

@dynamic hasStatus, status;
@dynamic accessToken;
@dynamic expiresIn;

typedef struct GDARegisterResponse__storage_ {
  uint32_t _has_storage_[1];
  NSString *accessToken;
  NSString *expiresIn;
  GDAStatus *status;
} GDARegisterResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accessToken",
        .dataTypeSpecific.className = NULL,
        .number = GDARegisterResponse_FieldNumber_AccessToken,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDARegisterResponse__storage_, accessToken),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "expiresIn",
        .dataTypeSpecific.className = NULL,
        .number = GDARegisterResponse_FieldNumber_ExpiresIn,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDARegisterResponse__storage_, expiresIn),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAStatus),
        .number = GDARegisterResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDARegisterResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDARegisterResponse class]
                                     rootClass:[GDAUserAuthRoot class]
                                          file:GDAUserAuthRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDARegisterResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\002\013\000\003\t\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)