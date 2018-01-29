// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/store/store_introducer.proto

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

 #import "gedit/store/StoreIntroducer.pbobjc.h"
 #import "gedit/Common.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GDAStoreIntroducerRoot

@implementation GDAStoreIntroducerRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - GDAStoreIntroducerRoot_FileDescriptor

static GPBFileDescriptor *GDAStoreIntroducerRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"gedit.store"
                                                 objcPrefix:@"GDA"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - GDAAddIntroducershipRequest

@implementation GDAAddIntroducershipRequest

@dynamic storeUuid;
@dynamic introducerUuid;

typedef struct GDAAddIntroducershipRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *storeUuid;
  NSString *introducerUuid;
} GDAAddIntroducershipRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "storeUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAAddIntroducershipRequest_FieldNumber_StoreUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAAddIntroducershipRequest__storage_, storeUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "introducerUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAAddIntroducershipRequest_FieldNumber_IntroducerUuid,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAAddIntroducershipRequest__storage_, introducerUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAAddIntroducershipRequest class]
                                     rootClass:[GDAStoreIntroducerRoot class]
                                          file:GDAStoreIntroducerRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAAddIntroducershipRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001\t\000\003\016\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAListIntroducershipByStoreRequest

@implementation GDAListIntroducershipByStoreRequest

@dynamic storeUuid;
@dynamic from;
@dynamic size;

typedef struct GDAListIntroducershipByStoreRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t from;
  int32_t size;
  NSString *storeUuid;
} GDAListIntroducershipByStoreRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "storeUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAListIntroducershipByStoreRequest_FieldNumber_StoreUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAListIntroducershipByStoreRequest__storage_, storeUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "from",
        .dataTypeSpecific.className = NULL,
        .number = GDAListIntroducershipByStoreRequest_FieldNumber_From,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAListIntroducershipByStoreRequest__storage_, from),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "size",
        .dataTypeSpecific.className = NULL,
        .number = GDAListIntroducershipByStoreRequest_FieldNumber_Size,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAListIntroducershipByStoreRequest__storage_, size),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAListIntroducershipByStoreRequest class]
                                     rootClass:[GDAStoreIntroducerRoot class]
                                          file:GDAStoreIntroducerRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAListIntroducershipByStoreRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\t\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAListMyIntroducedStoreRequest

@implementation GDAListMyIntroducedStoreRequest

@dynamic lastUpdated;

typedef struct GDAListMyIntroducedStoreRequest__storage_ {
  uint32_t _has_storage_[1];
  int64_t lastUpdated;
} GDAListMyIntroducedStoreRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "lastUpdated",
        .dataTypeSpecific.className = NULL,
        .number = GDAListMyIntroducedStoreRequest_FieldNumber_LastUpdated,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAListMyIntroducedStoreRequest__storage_, lastUpdated),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAListMyIntroducedStoreRequest class]
                                     rootClass:[GDAStoreIntroducerRoot class]
                                          file:GDAStoreIntroducerRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAListMyIntroducedStoreRequest__storage_)
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

#pragma mark - GDAListIntroducershipByIntroducerRequest

@implementation GDAListIntroducershipByIntroducerRequest

@dynamic introducerUuid;
@dynamic from;
@dynamic size;

typedef struct GDAListIntroducershipByIntroducerRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t from;
  int32_t size;
  NSString *introducerUuid;
} GDAListIntroducershipByIntroducerRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "introducerUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAListIntroducershipByIntroducerRequest_FieldNumber_IntroducerUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAListIntroducershipByIntroducerRequest__storage_, introducerUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "from",
        .dataTypeSpecific.className = NULL,
        .number = GDAListIntroducershipByIntroducerRequest_FieldNumber_From,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAListIntroducershipByIntroducerRequest__storage_, from),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "size",
        .dataTypeSpecific.className = NULL,
        .number = GDAListIntroducershipByIntroducerRequest_FieldNumber_Size,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAListIntroducershipByIntroducerRequest__storage_, size),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAListIntroducershipByIntroducerRequest class]
                                     rootClass:[GDAStoreIntroducerRoot class]
                                          file:GDAStoreIntroducerRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAListIntroducershipByIntroducerRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\003\016\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAIntroducershipResponse

@implementation GDAIntroducershipResponse

@dynamic hasStatus, status;
@dynamic hasIntroducership, introducership;
@dynamic from;

typedef struct GDAIntroducershipResponse__storage_ {
  uint32_t _has_storage_[1];
  int32_t from;
  GDAIntroducership *introducership;
  GDAStatus *status;
} GDAIntroducershipResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "introducership",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAIntroducership),
        .number = GDAIntroducershipResponse_FieldNumber_Introducership,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAIntroducershipResponse__storage_, introducership),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "from",
        .dataTypeSpecific.className = NULL,
        .number = GDAIntroducershipResponse_FieldNumber_From,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAIntroducershipResponse__storage_, from),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAStatus),
        .number = GDAIntroducershipResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAIntroducershipResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAIntroducershipResponse class]
                                     rootClass:[GDAStoreIntroducerRoot class]
                                          file:GDAStoreIntroducerRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAIntroducershipResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDABanIntroducershipRequest

@implementation GDABanIntroducershipRequest

@dynamic introducerUuid;
@dynamic storeUuid;
@dynamic active;

typedef struct GDABanIntroducershipRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *introducerUuid;
  NSString *storeUuid;
} GDABanIntroducershipRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "introducerUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDABanIntroducershipRequest_FieldNumber_IntroducerUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDABanIntroducershipRequest__storage_, introducerUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "storeUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDABanIntroducershipRequest_FieldNumber_StoreUuid,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDABanIntroducershipRequest__storage_, storeUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "active",
        .dataTypeSpecific.className = NULL,
        .number = GDABanIntroducershipRequest_FieldNumber_Active,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDABanIntroducershipRequest class]
                                     rootClass:[GDAStoreIntroducerRoot class]
                                          file:GDAStoreIntroducerRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDABanIntroducershipRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\001\016\000\005\t\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAIntroducership

@implementation GDAIntroducership

@dynamic userUuid;
@dynamic storeUuid;
@dynamic storeName;
@dynamic storeLogo;
@dynamic hasLocation, location;
@dynamic active;
@dynamic created;
@dynamic lastUpdated;

typedef struct GDAIntroducership__storage_ {
  uint32_t _has_storage_[1];
  NSString *userUuid;
  NSString *storeUuid;
  NSString *storeName;
  NSString *storeLogo;
  GDALocation *location;
  int64_t created;
  int64_t lastUpdated;
} GDAIntroducership__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "userUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAIntroducership_FieldNumber_UserUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAIntroducership__storage_, userUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "storeUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAIntroducership_FieldNumber_StoreUuid,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAIntroducership__storage_, storeUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "storeName",
        .dataTypeSpecific.className = NULL,
        .number = GDAIntroducership_FieldNumber_StoreName,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAIntroducership__storage_, storeName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "storeLogo",
        .dataTypeSpecific.className = NULL,
        .number = GDAIntroducership_FieldNumber_StoreLogo,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDAIntroducership__storage_, storeLogo),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "location",
        .dataTypeSpecific.className = GPBStringifySymbol(GDALocation),
        .number = GDAIntroducership_FieldNumber_Location,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDAIntroducership__storage_, location),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "active",
        .dataTypeSpecific.className = NULL,
        .number = GDAIntroducership_FieldNumber_Active,
        .hasIndex = 5,
        .offset = 6,  // Stored in _has_storage_ to save space.
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "created",
        .dataTypeSpecific.className = NULL,
        .number = GDAIntroducership_FieldNumber_Created,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(GDAIntroducership__storage_, created),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "lastUpdated",
        .dataTypeSpecific.className = NULL,
        .number = GDAIntroducership_FieldNumber_LastUpdated,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(GDAIntroducership__storage_, lastUpdated),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAIntroducership class]
                                     rootClass:[GDAStoreIntroducerRoot class]
                                          file:GDAStoreIntroducerRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAIntroducership__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\005\001\010\000\005\t\000\007\t\000\t\t\000\036\013\000";
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
