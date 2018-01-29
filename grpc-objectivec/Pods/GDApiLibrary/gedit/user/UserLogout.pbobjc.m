// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/user/user_logout.proto

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

 #import "gedit/user/UserLogout.pbobjc.h"
 #import "gedit/Common.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GDAUserLogoutRoot

@implementation GDAUserLogoutRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - GDAUserLogoutRoot_FileDescriptor

static GPBFileDescriptor *GDAUserLogoutRoot_FileDescriptor(void) {
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

#pragma mark - GDALogoutRequest

@implementation GDALogoutRequest


typedef struct GDALogoutRequest__storage_ {
  uint32_t _has_storage_[1];
} GDALogoutRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDALogoutRequest class]
                                     rootClass:[GDAUserLogoutRoot class]
                                          file:GDAUserLogoutRoot_FileDescriptor()
                                        fields:NULL
                                    fieldCount:0
                                   storageSize:sizeof(GDALogoutRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDALogoutResponse

@implementation GDALogoutResponse

@dynamic hasStatus, status;

typedef struct GDALogoutResponse__storage_ {
  uint32_t _has_storage_[1];
  GDAStatus *status;
} GDALogoutResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAStatus),
        .number = GDALogoutResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDALogoutResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDALogoutResponse class]
                                     rootClass:[GDAUserLogoutRoot class]
                                          file:GDAUserLogoutRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDALogoutResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
