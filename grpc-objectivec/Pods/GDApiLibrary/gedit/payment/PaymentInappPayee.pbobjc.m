// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/payment/payment_inapp_payee.proto

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

 #import "gedit/payment/PaymentInappPayee.pbobjc.h"
 #import "gedit/Common.pbobjc.h"
 #import "gedit/payment/PaymentCommon.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - PayerPassiveInappPaymentInappPayeeRoot

@implementation PayerPassiveInappPaymentInappPayeeRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - PayerPassiveInappPaymentInappPayeeRoot_FileDescriptor

static GPBFileDescriptor *PayerPassiveInappPaymentInappPayeeRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"gedit.payment"
                                                 objcPrefix:@"PayerPassiveInapp"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - PayerPassiveInappGetMyPayerCodeRequest

@implementation PayerPassiveInappGetMyPayerCodeRequest


typedef struct PayerPassiveInappGetMyPayerCodeRequest__storage_ {
  uint32_t _has_storage_[1];
} PayerPassiveInappGetMyPayerCodeRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PayerPassiveInappGetMyPayerCodeRequest class]
                                     rootClass:[PayerPassiveInappPaymentInappPayeeRoot class]
                                          file:PayerPassiveInappPaymentInappPayeeRoot_FileDescriptor()
                                        fields:NULL
                                    fieldCount:0
                                   storageSize:sizeof(PayerPassiveInappGetMyPayerCodeRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PayerPassiveInappGetMyPayerCodeResponse

@implementation PayerPassiveInappGetMyPayerCodeResponse

@dynamic hasStatus, status;
@dynamic hasPayerCode, payerCode;

typedef struct PayerPassiveInappGetMyPayerCodeResponse__storage_ {
  uint32_t _has_storage_[1];
  PayerPassiveInappPayerCode *payerCode;
  COMMONStatus *status;
} PayerPassiveInappGetMyPayerCodeResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payerCode",
        .dataTypeSpecific.className = GPBStringifySymbol(PayerPassiveInappPayerCode),
        .number = PayerPassiveInappGetMyPayerCodeResponse_FieldNumber_PayerCode,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PayerPassiveInappGetMyPayerCodeResponse__storage_, payerCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(COMMONStatus),
        .number = PayerPassiveInappGetMyPayerCodeResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PayerPassiveInappGetMyPayerCodeResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PayerPassiveInappGetMyPayerCodeResponse class]
                                     rootClass:[PayerPassiveInappPaymentInappPayeeRoot class]
                                          file:PayerPassiveInappPaymentInappPayeeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PayerPassiveInappGetMyPayerCodeResponse__storage_)
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

#pragma mark - PayerPassiveInappPayerCode

@implementation PayerPassiveInappPayerCode

@dynamic payerCode;
@dynamic expiresIn;
@dynamic payerLogo;
@dynamic payerName;

typedef struct PayerPassiveInappPayerCode__storage_ {
  uint32_t _has_storage_[1];
  NSString *payerCode;
  NSString *payerLogo;
  NSString *payerName;
  int64_t expiresIn;
} PayerPassiveInappPayerCode__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payerCode",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappPayerCode_FieldNumber_PayerCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PayerPassiveInappPayerCode__storage_, payerCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "expiresIn",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappPayerCode_FieldNumber_ExpiresIn,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PayerPassiveInappPayerCode__storage_, expiresIn),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "payerLogo",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappPayerCode_FieldNumber_PayerLogo,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(PayerPassiveInappPayerCode__storage_, payerLogo),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payerName",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappPayerCode_FieldNumber_PayerName,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(PayerPassiveInappPayerCode__storage_, payerName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PayerPassiveInappPayerCode class]
                                     rootClass:[PayerPassiveInappPaymentInappPayeeRoot class]
                                          file:PayerPassiveInappPaymentInappPayeeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PayerPassiveInappPayerCode__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\004\001\t\000\003\t\000\007\t\000\t\t\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PayerPassiveInappGetPayerCodeRequest

@implementation PayerPassiveInappGetPayerCodeRequest

@dynamic payerCode;

typedef struct PayerPassiveInappGetPayerCodeRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *payerCode;
} PayerPassiveInappGetPayerCodeRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payerCode",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappGetPayerCodeRequest_FieldNumber_PayerCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PayerPassiveInappGetPayerCodeRequest__storage_, payerCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PayerPassiveInappGetPayerCodeRequest class]
                                     rootClass:[PayerPassiveInappPaymentInappPayeeRoot class]
                                          file:PayerPassiveInappPaymentInappPayeeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PayerPassiveInappGetPayerCodeRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\r\t\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PayerPassiveInappGetPayerCodeResponse

@implementation PayerPassiveInappGetPayerCodeResponse

@dynamic hasStatus, status;
@dynamic hasPayerCode, payerCode;

typedef struct PayerPassiveInappGetPayerCodeResponse__storage_ {
  uint32_t _has_storage_[1];
  PayerPassiveInappPayerCode *payerCode;
  COMMONStatus *status;
} PayerPassiveInappGetPayerCodeResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payerCode",
        .dataTypeSpecific.className = GPBStringifySymbol(PayerPassiveInappPayerCode),
        .number = PayerPassiveInappGetPayerCodeResponse_FieldNumber_PayerCode,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PayerPassiveInappGetPayerCodeResponse__storage_, payerCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(COMMONStatus),
        .number = PayerPassiveInappGetPayerCodeResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PayerPassiveInappGetPayerCodeResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PayerPassiveInappGetPayerCodeResponse class]
                                     rootClass:[PayerPassiveInappPaymentInappPayeeRoot class]
                                          file:PayerPassiveInappPaymentInappPayeeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PayerPassiveInappGetPayerCodeResponse__storage_)
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

#pragma mark - PayerPassiveInappPreparePayeeInappPaymentRequest

@implementation PayerPassiveInappPreparePayeeInappPaymentRequest

@dynamic payerCode;
@dynamic shouldPay;
@dynamic isPointsPay;

typedef struct PayerPassiveInappPreparePayeeInappPaymentRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t shouldPay;
  NSString *payerCode;
} PayerPassiveInappPreparePayeeInappPaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payerCode",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappPreparePayeeInappPaymentRequest_FieldNumber_PayerCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PayerPassiveInappPreparePayeeInappPaymentRequest__storage_, payerCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappPreparePayeeInappPaymentRequest_FieldNumber_ShouldPay,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PayerPassiveInappPreparePayeeInappPaymentRequest__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "isPointsPay",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappPreparePayeeInappPaymentRequest_FieldNumber_IsPointsPay,
        .hasIndex = 2,
        .offset = 3,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PayerPassiveInappPreparePayeeInappPaymentRequest class]
                                     rootClass:[PayerPassiveInappPaymentInappPayeeRoot class]
                                          file:PayerPassiveInappPaymentInappPayeeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PayerPassiveInappPreparePayeeInappPaymentRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\003\r\t\000\017\t\000\023\013\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PayerPassiveInappPreparePayeeInappPaymentResponse

@implementation PayerPassiveInappPreparePayeeInappPaymentResponse

@dynamic hasStatus, status;
@dynamic payerCode;
@dynamic payerName;
@dynamic shouldPay;
@dynamic actualPay;
@dynamic pointsPay;
@dynamic pointsRepay;
@dynamic isPointsPay;

typedef struct PayerPassiveInappPreparePayeeInappPaymentResponse__storage_ {
  uint32_t _has_storage_[1];
  int32_t shouldPay;
  int32_t actualPay;
  int32_t pointsPay;
  int32_t pointsRepay;
  NSString *payerCode;
  NSString *payerName;
  COMMONStatus *status;
} PayerPassiveInappPreparePayeeInappPaymentResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payerCode",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappPreparePayeeInappPaymentResponse_FieldNumber_PayerCode,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PayerPassiveInappPreparePayeeInappPaymentResponse__storage_, payerCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payerName",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappPreparePayeeInappPaymentResponse_FieldNumber_PayerName,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(PayerPassiveInappPreparePayeeInappPaymentResponse__storage_, payerName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappPreparePayeeInappPaymentResponse_FieldNumber_ShouldPay,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(PayerPassiveInappPreparePayeeInappPaymentResponse__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "actualPay",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappPreparePayeeInappPaymentResponse_FieldNumber_ActualPay,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(PayerPassiveInappPreparePayeeInappPaymentResponse__storage_, actualPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pointsPay",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappPreparePayeeInappPaymentResponse_FieldNumber_PointsPay,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(PayerPassiveInappPreparePayeeInappPaymentResponse__storage_, pointsPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pointsRepay",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappPreparePayeeInappPaymentResponse_FieldNumber_PointsRepay,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(PayerPassiveInappPreparePayeeInappPaymentResponse__storage_, pointsRepay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "isPointsPay",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappPreparePayeeInappPaymentResponse_FieldNumber_IsPointsPay,
        .hasIndex = 7,
        .offset = 8,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeBool,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(COMMONStatus),
        .number = PayerPassiveInappPreparePayeeInappPaymentResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PayerPassiveInappPreparePayeeInappPaymentResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PayerPassiveInappPreparePayeeInappPaymentResponse class]
                                     rootClass:[PayerPassiveInappPaymentInappPayeeRoot class]
                                          file:PayerPassiveInappPaymentInappPayeeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PayerPassiveInappPreparePayeeInappPaymentResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\007\014\t\000\r\t\000\017\t\000\020\t\000\021\t\000\022\013\000\023\013\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PayerPassiveInappCreatePayeeInappPaymentRequest

@implementation PayerPassiveInappCreatePayeeInappPaymentRequest

@dynamic payerCode;
@dynamic shouldPay;
@dynamic actualPay;
@dynamic pointsPay;
@dynamic payerIp;
@dynamic isPointsPay;

typedef struct PayerPassiveInappCreatePayeeInappPaymentRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t shouldPay;
  int32_t actualPay;
  int32_t pointsPay;
  NSString *payerCode;
  NSString *payerIp;
} PayerPassiveInappCreatePayeeInappPaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payerCode",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappCreatePayeeInappPaymentRequest_FieldNumber_PayerCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PayerPassiveInappCreatePayeeInappPaymentRequest__storage_, payerCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappCreatePayeeInappPaymentRequest_FieldNumber_ShouldPay,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PayerPassiveInappCreatePayeeInappPaymentRequest__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "actualPay",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappCreatePayeeInappPaymentRequest_FieldNumber_ActualPay,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(PayerPassiveInappCreatePayeeInappPaymentRequest__storage_, actualPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pointsPay",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappCreatePayeeInappPaymentRequest_FieldNumber_PointsPay,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(PayerPassiveInappCreatePayeeInappPaymentRequest__storage_, pointsPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "payerIp",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappCreatePayeeInappPaymentRequest_FieldNumber_PayerIp,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(PayerPassiveInappCreatePayeeInappPaymentRequest__storage_, payerIp),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "isPointsPay",
        .dataTypeSpecific.className = NULL,
        .number = PayerPassiveInappCreatePayeeInappPaymentRequest_FieldNumber_IsPointsPay,
        .hasIndex = 5,
        .offset = 6,  // Stored in _has_storage_ to save space.
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeBool,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PayerPassiveInappCreatePayeeInappPaymentRequest class]
                                     rootClass:[PayerPassiveInappPaymentInappPayeeRoot class]
                                          file:PayerPassiveInappPaymentInappPayeeRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PayerPassiveInappCreatePayeeInappPaymentRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\006\r\t\000\017\t\000\020\t\000\021\t\000\022\007\000\023\013\000";
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
