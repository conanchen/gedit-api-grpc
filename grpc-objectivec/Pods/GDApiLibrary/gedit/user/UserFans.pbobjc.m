// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/user/user_fans.proto

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

 #import "gedit/user/UserFans.pbobjc.h"
 #import "gedit/Common.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - USRFANSUserFansRoot

@implementation USRFANSUserFansRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - USRFANSUserFansRoot_FileDescriptor

static GPBFileDescriptor *USRFANSUserFansRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"gedit.user"
                                                 objcPrefix:@"USRFANS"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - USRFANSAddFanshipRequest

@implementation USRFANSAddFanshipRequest

@dynamic fanUuid;

typedef struct USRFANSAddFanshipRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *fanUuid;
} USRFANSAddFanshipRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "fanUuid",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSAddFanshipRequest_FieldNumber_FanUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRFANSAddFanshipRequest__storage_, fanUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRFANSAddFanshipRequest class]
                                     rootClass:[USRFANSUserFansRoot class]
                                          file:USRFANSUserFansRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRFANSAddFanshipRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\007\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRFANSFindParentFanshipRequest

@implementation USRFANSFindParentFanshipRequest

@dynamic fanUuid;

typedef struct USRFANSFindParentFanshipRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *fanUuid;
} USRFANSFindParentFanshipRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "fanUuid",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSFindParentFanshipRequest_FieldNumber_FanUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRFANSFindParentFanshipRequest__storage_, fanUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRFANSFindParentFanshipRequest class]
                                     rootClass:[USRFANSUserFansRoot class]
                                          file:USRFANSUserFansRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRFANSFindParentFanshipRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\007\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRFANSListChildFanshipRequest

@implementation USRFANSListChildFanshipRequest

@dynamic parentUuid;
@dynamic from;
@dynamic size;

typedef struct USRFANSListChildFanshipRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t from;
  int32_t size;
  NSString *parentUuid;
} USRFANSListChildFanshipRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "parentUuid",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSListChildFanshipRequest_FieldNumber_ParentUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRFANSListChildFanshipRequest__storage_, parentUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "from",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSListChildFanshipRequest_FieldNumber_From,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(USRFANSListChildFanshipRequest__storage_, from),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "size",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSListChildFanshipRequest_FieldNumber_Size,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(USRFANSListChildFanshipRequest__storage_, size),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRFANSListChildFanshipRequest class]
                                     rootClass:[USRFANSUserFansRoot class]
                                          file:USRFANSUserFansRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRFANSListChildFanshipRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\n\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRFANSListMyFanRequest

@implementation USRFANSListMyFanRequest

@dynamic lastUpdated;

typedef struct USRFANSListMyFanRequest__storage_ {
  uint32_t _has_storage_[1];
  int64_t lastUpdated;
} USRFANSListMyFanRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "lastUpdated",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSListMyFanRequest_FieldNumber_LastUpdated,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRFANSListMyFanRequest__storage_, lastUpdated),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRFANSListMyFanRequest class]
                                     rootClass:[USRFANSUserFansRoot class]
                                          file:USRFANSUserFansRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRFANSListMyFanRequest__storage_)
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

#pragma mark - USRFANSFanshipResponse

@implementation USRFANSFanshipResponse

@dynamic hasStatus, status;
@dynamic hasFanship, fanship;

typedef struct USRFANSFanshipResponse__storage_ {
  uint32_t _has_storage_[1];
  USRFANSFanship *fanship;
  COMMONStatus *status;
} USRFANSFanshipResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "fanship",
        .dataTypeSpecific.className = GPBStringifySymbol(USRFANSFanship),
        .number = USRFANSFanshipResponse_FieldNumber_Fanship,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(USRFANSFanshipResponse__storage_, fanship),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(COMMONStatus),
        .number = USRFANSFanshipResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRFANSFanshipResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRFANSFanshipResponse class]
                                     rootClass:[USRFANSUserFansRoot class]
                                          file:USRFANSUserFansRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRFANSFanshipResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - USRFANSFanship

@implementation USRFANSFanship

@dynamic parentUuid;
@dynamic parentName;
@dynamic fanUuid;
@dynamic fanName;
@dynamic created;

typedef struct USRFANSFanship__storage_ {
  uint32_t _has_storage_[1];
  NSString *parentUuid;
  NSString *fanUuid;
  NSString *fanName;
  NSString *parentName;
  int64_t created;
} USRFANSFanship__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "parentUuid",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSFanship_FieldNumber_ParentUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(USRFANSFanship__storage_, parentUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "fanUuid",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSFanship_FieldNumber_FanUuid,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(USRFANSFanship__storage_, fanUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "fanName",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSFanship_FieldNumber_FanName,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(USRFANSFanship__storage_, fanName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "created",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSFanship_FieldNumber_Created,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(USRFANSFanship__storage_, created),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "parentName",
        .dataTypeSpecific.className = NULL,
        .number = USRFANSFanship_FieldNumber_ParentName,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(USRFANSFanship__storage_, parentName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[USRFANSFanship class]
                                     rootClass:[USRFANSUserFansRoot class]
                                          file:USRFANSUserFansRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(USRFANSFanship__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\004\001\n\000\002\007\000\003\007\000\013\n\000";
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
