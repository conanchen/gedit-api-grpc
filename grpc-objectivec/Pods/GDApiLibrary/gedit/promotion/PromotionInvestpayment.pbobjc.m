// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/promotion/promotion_investpayment.proto

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

 #import "gedit/promotion/PromotionInvestpayment.pbobjc.h"
 #import "gedit/Common.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GDAPromotionInvestpaymentRoot

@implementation GDAPromotionInvestpaymentRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - GDAPromotionInvestpaymentRoot_FileDescriptor

static GPBFileDescriptor *GDAPromotionInvestpaymentRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"gedit.promotion"
                                                 objcPrefix:@"GDA"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - GDAPreparInvestPaymentRequest

@implementation GDAPreparInvestPaymentRequest

@dynamic payeeUuid;
@dynamic payeeStoreUuid;
@dynamic channel;

typedef struct GDAPreparInvestPaymentRequest__storage_ {
  uint32_t _has_storage_[1];
  GDAPaymentChannel channel;
  NSString *payeeUuid;
  NSString *payeeStoreUuid;
} GDAPreparInvestPaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payeeUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparInvestPaymentRequest_FieldNumber_PayeeUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAPreparInvestPaymentRequest__storage_, payeeUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeStoreUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparInvestPaymentRequest_FieldNumber_PayeeStoreUuid,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAPreparInvestPaymentRequest__storage_, payeeStoreUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "channel",
        .dataTypeSpecific.enumDescFunc = GDAPaymentChannel_EnumDescriptor,
        .number = GDAPreparInvestPaymentRequest_FieldNumber_Channel,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAPreparInvestPaymentRequest__storage_, channel),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAPreparInvestPaymentRequest class]
                                     rootClass:[GDAPromotionInvestpaymentRoot class]
                                          file:GDAPromotionInvestpaymentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAPreparInvestPaymentRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\004\t\000\007\016\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GDAPreparInvestPaymentRequest_Channel_RawValue(GDAPreparInvestPaymentRequest *message) {
  GPBDescriptor *descriptor = [GDAPreparInvestPaymentRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDAPreparInvestPaymentRequest_FieldNumber_Channel];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDAPreparInvestPaymentRequest_Channel_RawValue(GDAPreparInvestPaymentRequest *message, int32_t value) {
  GPBDescriptor *descriptor = [GDAPreparInvestPaymentRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDAPreparInvestPaymentRequest_FieldNumber_Channel];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - GDAPrepareInvestPaymentResponse

@implementation GDAPrepareInvestPaymentResponse

@dynamic hasStatus, status;
@dynamic channelOrderUuid;

typedef struct GDAPrepareInvestPaymentResponse__storage_ {
  uint32_t _has_storage_[1];
  NSString *channelOrderUuid;
  GDAStatus *status;
} GDAPrepareInvestPaymentResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "channelOrderUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAPrepareInvestPaymentResponse_FieldNumber_ChannelOrderUuid,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAPrepareInvestPaymentResponse__storage_, channelOrderUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAStatus),
        .number = GDAPrepareInvestPaymentResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAPrepareInvestPaymentResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAPrepareInvestPaymentResponse class]
                                     rootClass:[GDAPromotionInvestpaymentRoot class]
                                          file:GDAPromotionInvestpaymentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAPrepareInvestPaymentResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\033\020\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAAddInvestPaymentRequest

@implementation GDAAddInvestPaymentRequest

@dynamic payeeUuid;
@dynamic payeeStoreUuid;
@dynamic shouldPay;
@dynamic discount;
@dynamic actualPay;
@dynamic channel;
@dynamic channelOrderUuid;

typedef struct GDAAddInvestPaymentRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t shouldPay;
  int32_t discount;
  int32_t actualPay;
  GDAPaymentChannel channel;
  NSString *payeeUuid;
  NSString *payeeStoreUuid;
  NSString *channelOrderUuid;
} GDAAddInvestPaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payeeUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAAddInvestPaymentRequest_FieldNumber_PayeeUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAAddInvestPaymentRequest__storage_, payeeUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeStoreUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAAddInvestPaymentRequest_FieldNumber_PayeeStoreUuid,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAAddInvestPaymentRequest__storage_, payeeStoreUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = GDAAddInvestPaymentRequest_FieldNumber_ShouldPay,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAAddInvestPaymentRequest__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "discount",
        .dataTypeSpecific.className = NULL,
        .number = GDAAddInvestPaymentRequest_FieldNumber_Discount,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDAAddInvestPaymentRequest__storage_, discount),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "actualPay",
        .dataTypeSpecific.className = NULL,
        .number = GDAAddInvestPaymentRequest_FieldNumber_ActualPay,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDAAddInvestPaymentRequest__storage_, actualPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "channel",
        .dataTypeSpecific.enumDescFunc = GDAPaymentChannel_EnumDescriptor,
        .number = GDAAddInvestPaymentRequest_FieldNumber_Channel,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GDAAddInvestPaymentRequest__storage_, channel),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "channelOrderUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAAddInvestPaymentRequest_FieldNumber_ChannelOrderUuid,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(GDAAddInvestPaymentRequest__storage_, channelOrderUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAAddInvestPaymentRequest class]
                                     rootClass:[GDAPromotionInvestpaymentRoot class]
                                          file:GDAPromotionInvestpaymentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAAddInvestPaymentRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\005\004\t\000\007\016\000\n\t\000\020\t\000\033\020\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GDAAddInvestPaymentRequest_Channel_RawValue(GDAAddInvestPaymentRequest *message) {
  GPBDescriptor *descriptor = [GDAAddInvestPaymentRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDAAddInvestPaymentRequest_FieldNumber_Channel];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDAAddInvestPaymentRequest_Channel_RawValue(GDAAddInvestPaymentRequest *message, int32_t value) {
  GPBDescriptor *descriptor = [GDAAddInvestPaymentRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDAAddInvestPaymentRequest_FieldNumber_Channel];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - GDAInvestPaymentResponse

@implementation GDAInvestPaymentResponse

@dynamic hasStatus, status;
@dynamic hasRecordPayment, recordPayment;

typedef struct GDAInvestPaymentResponse__storage_ {
  uint32_t _has_storage_[1];
  GDAInvestPayment *recordPayment;
  GDAStatus *status;
} GDAInvestPaymentResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "recordPayment",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAInvestPayment),
        .number = GDAInvestPaymentResponse_FieldNumber_RecordPayment,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAInvestPaymentResponse__storage_, recordPayment),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAStatus),
        .number = GDAInvestPaymentResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAInvestPaymentResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAInvestPaymentResponse class]
                                     rootClass:[GDAPromotionInvestpaymentRoot class]
                                          file:GDAPromotionInvestpaymentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAInvestPaymentResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\r\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAInvestPayment

@implementation GDAInvestPayment

@dynamic uuid;
@dynamic payeeUuid;
@dynamic payeeStoreUuid;
@dynamic shouldPay;
@dynamic discount;
@dynamic actualPay;
@dynamic channel;
@dynamic channelOrderUuid;
@dynamic created;

typedef struct GDAInvestPayment__storage_ {
  uint32_t _has_storage_[1];
  int32_t shouldPay;
  int32_t discount;
  int32_t actualPay;
  GDAPaymentChannel channel;
  NSString *uuid;
  NSString *payeeUuid;
  NSString *payeeStoreUuid;
  NSString *channelOrderUuid;
  int64_t created;
} GDAInvestPayment__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAInvestPayment_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAInvestPayment__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAInvestPayment_FieldNumber_PayeeUuid,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAInvestPayment__storage_, payeeUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeStoreUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAInvestPayment_FieldNumber_PayeeStoreUuid,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAInvestPayment__storage_, payeeStoreUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = GDAInvestPayment_FieldNumber_ShouldPay,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDAInvestPayment__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "discount",
        .dataTypeSpecific.className = NULL,
        .number = GDAInvestPayment_FieldNumber_Discount,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDAInvestPayment__storage_, discount),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "actualPay",
        .dataTypeSpecific.className = NULL,
        .number = GDAInvestPayment_FieldNumber_ActualPay,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GDAInvestPayment__storage_, actualPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "channel",
        .dataTypeSpecific.enumDescFunc = GDAPaymentChannel_EnumDescriptor,
        .number = GDAInvestPayment_FieldNumber_Channel,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(GDAInvestPayment__storage_, channel),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "channelOrderUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAInvestPayment_FieldNumber_ChannelOrderUuid,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(GDAInvestPayment__storage_, channelOrderUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "created",
        .dataTypeSpecific.className = NULL,
        .number = GDAInvestPayment_FieldNumber_Created,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(GDAInvestPayment__storage_, created),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAInvestPayment class]
                                     rootClass:[GDAPromotionInvestpaymentRoot class]
                                          file:GDAPromotionInvestpaymentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAInvestPayment__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\005\004\t\000\007\016\000\n\t\000\020\t\000\033\020\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GDAInvestPayment_Channel_RawValue(GDAInvestPayment *message) {
  GPBDescriptor *descriptor = [GDAInvestPayment descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDAInvestPayment_FieldNumber_Channel];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDAInvestPayment_Channel_RawValue(GDAInvestPayment *message, int32_t value) {
  GPBDescriptor *descriptor = [GDAInvestPayment descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDAInvestPayment_FieldNumber_Channel];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - GDAListInvestPaymentRequest

@implementation GDAListInvestPaymentRequest

@dynamic page;

typedef struct GDAListInvestPaymentRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t page;
} GDAListInvestPaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "page",
        .dataTypeSpecific.className = NULL,
        .number = GDAListInvestPaymentRequest_FieldNumber_Page,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAListInvestPaymentRequest__storage_, page),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAListInvestPaymentRequest class]
                                     rootClass:[GDAPromotionInvestpaymentRoot class]
                                          file:GDAPromotionInvestpaymentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAListInvestPaymentRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAGetInvestPaymentRequest

@implementation GDAGetInvestPaymentRequest

@dynamic uuid;

typedef struct GDAGetInvestPaymentRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *uuid;
} GDAGetInvestPaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAGetInvestPaymentRequest_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAGetInvestPaymentRequest__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAGetInvestPaymentRequest class]
                                     rootClass:[GDAPromotionInvestpaymentRoot class]
                                          file:GDAPromotionInvestpaymentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAGetInvestPaymentRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDASearchInvestPaymentRequest

@implementation GDASearchInvestPaymentRequest

@dynamic mobile;

typedef struct GDASearchInvestPaymentRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *mobile;
} GDASearchInvestPaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "mobile",
        .dataTypeSpecific.className = NULL,
        .number = GDASearchInvestPaymentRequest_FieldNumber_Mobile,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDASearchInvestPaymentRequest__storage_, mobile),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDASearchInvestPaymentRequest class]
                                     rootClass:[GDAPromotionInvestpaymentRoot class]
                                          file:GDAPromotionInvestpaymentRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDASearchInvestPaymentRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)