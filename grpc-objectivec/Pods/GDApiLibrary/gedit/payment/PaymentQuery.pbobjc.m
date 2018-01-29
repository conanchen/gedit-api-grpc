// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/payment/payment_query.proto

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

 #import "gedit/payment/PaymentQuery.pbobjc.h"
 #import "gedit/payment/PaymentCommon.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GDAPaymentQueryRoot

@implementation GDAPaymentQueryRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - GDAPaymentQueryRoot_FileDescriptor

static GPBFileDescriptor *GDAPaymentQueryRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"gedit.payment"
                                                 objcPrefix:@"GDA"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - GDAGetPaymentRequest

@implementation GDAGetPaymentRequest

@dynamic uuid;

typedef struct GDAGetPaymentRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *uuid;
} GDAGetPaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAGetPaymentRequest_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAGetPaymentRequest__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAGetPaymentRequest class]
                                     rootClass:[GDAPaymentQueryRoot class]
                                          file:GDAPaymentQueryRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAGetPaymentRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAListPaymentRequest

@implementation GDAListPaymentRequest

@dynamic payerUuid;
@dynamic payeePaymentCode;
@dynamic payeeUuid;
@dynamic payeeStoreUuid;
@dynamic payeeWorkerUuid;
@dynamic isAnd;
@dynamic from;
@dynamic size;

typedef struct GDAListPaymentRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t from;
  int32_t size;
  NSString *payerUuid;
  NSString *payeePaymentCode;
  NSString *payeeUuid;
  NSString *payeeStoreUuid;
  NSString *payeeWorkerUuid;
} GDAListPaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payerUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAListPaymentRequest_FieldNumber_PayerUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAListPaymentRequest__storage_, payerUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeePaymentCode",
        .dataTypeSpecific.className = NULL,
        .number = GDAListPaymentRequest_FieldNumber_PayeePaymentCode,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAListPaymentRequest__storage_, payeePaymentCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAListPaymentRequest_FieldNumber_PayeeUuid,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAListPaymentRequest__storage_, payeeUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeStoreUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAListPaymentRequest_FieldNumber_PayeeStoreUuid,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDAListPaymentRequest__storage_, payeeStoreUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeWorkerUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAListPaymentRequest_FieldNumber_PayeeWorkerUuid,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDAListPaymentRequest__storage_, payeeWorkerUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "isAnd",
        .dataTypeSpecific.className = NULL,
        .number = GDAListPaymentRequest_FieldNumber_IsAnd,
        .hasIndex = 5,
        .offset = 6,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "from",
        .dataTypeSpecific.className = NULL,
        .number = GDAListPaymentRequest_FieldNumber_From,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(GDAListPaymentRequest__storage_, from),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "size",
        .dataTypeSpecific.className = NULL,
        .number = GDAListPaymentRequest_FieldNumber_Size,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(GDAListPaymentRequest__storage_, size),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAListPaymentRequest class]
                                     rootClass:[GDAPaymentQueryRoot class]
                                          file:GDAPaymentQueryRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAListPaymentRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\006\n\t\000\013\020\000\014\t\000\r\016\000\016\017\000\030\005\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAListMyPayerPaymentRequest

@implementation GDAListMyPayerPaymentRequest

@dynamic from;
@dynamic size;

typedef struct GDAListMyPayerPaymentRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t from;
  int32_t size;
} GDAListMyPayerPaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "from",
        .dataTypeSpecific.className = NULL,
        .number = GDAListMyPayerPaymentRequest_FieldNumber_From,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAListMyPayerPaymentRequest__storage_, from),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "size",
        .dataTypeSpecific.className = NULL,
        .number = GDAListMyPayerPaymentRequest_FieldNumber_Size,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAListMyPayerPaymentRequest__storage_, size),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAListMyPayerPaymentRequest class]
                                     rootClass:[GDAPaymentQueryRoot class]
                                          file:GDAPaymentQueryRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAListMyPayerPaymentRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAListMyPayeePaymentRequest

@implementation GDAListMyPayeePaymentRequest

@dynamic from;
@dynamic size;

typedef struct GDAListMyPayeePaymentRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t from;
  int32_t size;
} GDAListMyPayeePaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "from",
        .dataTypeSpecific.className = NULL,
        .number = GDAListMyPayeePaymentRequest_FieldNumber_From,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAListMyPayeePaymentRequest__storage_, from),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "size",
        .dataTypeSpecific.className = NULL,
        .number = GDAListMyPayeePaymentRequest_FieldNumber_Size,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAListMyPayeePaymentRequest__storage_, size),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAListMyPayeePaymentRequest class]
                                     rootClass:[GDAPaymentQueryRoot class]
                                          file:GDAPaymentQueryRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAListMyPayeePaymentRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
