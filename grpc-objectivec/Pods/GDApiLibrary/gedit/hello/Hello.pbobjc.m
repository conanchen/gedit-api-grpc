// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/hello/hello.proto

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

 #import "gedit/hello/Hello.pbobjc.h"
 #import "gedit/Common.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GDAHelloRoot

@implementation GDAHelloRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - GDAHelloRoot_FileDescriptor

static GPBFileDescriptor *GDAHelloRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"gedit.hello"
                                                 objcPrefix:@"GDA"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - GDAHelloRequest

@implementation GDAHelloRequest

@dynamic name;

typedef struct GDAHelloRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *name;
} GDAHelloRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "name",
        .dataTypeSpecific.className = NULL,
        .number = GDAHelloRequest_FieldNumber_Name,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAHelloRequest__storage_, name),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAHelloRequest class]
                                     rootClass:[GDAHelloRoot class]
                                          file:GDAHelloRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAHelloRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAListHelloRequest

@implementation GDAListHelloRequest

@dynamic lastUpdated;
@dynamic size;

typedef struct GDAListHelloRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t size;
  int64_t lastUpdated;
} GDAListHelloRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "lastUpdated",
        .dataTypeSpecific.className = NULL,
        .number = GDAListHelloRequest_FieldNumber_LastUpdated,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAListHelloRequest__storage_, lastUpdated),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "size",
        .dataTypeSpecific.className = NULL,
        .number = GDAListHelloRequest_FieldNumber_Size,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAListHelloRequest__storage_, size),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAListHelloRequest class]
                                     rootClass:[GDAHelloRoot class]
                                          file:GDAHelloRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAListHelloRequest__storage_)
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

#pragma mark - GDAHelloReply

@implementation GDAHelloReply

@dynamic hasStatus, status;
@dynamic uuid;
@dynamic message;
@dynamic created;
@dynamic lastUpdated;

typedef struct GDAHelloReply__storage_ {
  uint32_t _has_storage_[1];
  NSString *uuid;
  NSString *message;
  GDAStatus *status;
  int64_t created;
  int64_t lastUpdated;
} GDAHelloReply__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAHelloReply_FieldNumber_Uuid,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAHelloReply__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "message",
        .dataTypeSpecific.className = NULL,
        .number = GDAHelloReply_FieldNumber_Message,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAHelloReply__storage_, message),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "created",
        .dataTypeSpecific.className = NULL,
        .number = GDAHelloReply_FieldNumber_Created,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDAHelloReply__storage_, created),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "lastUpdated",
        .dataTypeSpecific.className = NULL,
        .number = GDAHelloReply_FieldNumber_LastUpdated,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDAHelloReply__storage_, lastUpdated),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAStatus),
        .number = GDAHelloReply_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAHelloReply__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAHelloReply class]
                                     rootClass:[GDAHelloRoot class]
                                          file:GDAHelloRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAHelloReply__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\004\013\000";
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
