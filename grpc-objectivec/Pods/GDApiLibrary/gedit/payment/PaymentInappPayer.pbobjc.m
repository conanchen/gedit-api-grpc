// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/payment/payment_inapp_payer.proto

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

 #import "gedit/payment/PaymentInappPayer.pbobjc.h"
 #import "gedit/Common.pbobjc.h"
 #import "gedit/payment/PaymentCommon.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

#pragma mark - GDAPaymentInappPayerRoot

@implementation GDAPaymentInappPayerRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - GDAPaymentInappPayerRoot_FileDescriptor

static GPBFileDescriptor *GDAPaymentInappPayerRoot_FileDescriptor(void) {
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

#pragma mark - GDAGetMyPayeeCodeRequest

@implementation GDAGetMyPayeeCodeRequest

@dynamic payeeStoreUuid;

typedef struct GDAGetMyPayeeCodeRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *payeeStoreUuid;
} GDAGetMyPayeeCodeRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payeeStoreUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAGetMyPayeeCodeRequest_FieldNumber_PayeeStoreUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAGetMyPayeeCodeRequest__storage_, payeeStoreUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAGetMyPayeeCodeRequest class]
                                     rootClass:[GDAPaymentInappPayerRoot class]
                                          file:GDAPaymentInappPayerRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAGetMyPayeeCodeRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\016\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAGetMyPayeeCodeResponse

@implementation GDAGetMyPayeeCodeResponse

@dynamic hasStatus, status;
@dynamic hasPayeeCode, payeeCode;

typedef struct GDAGetMyPayeeCodeResponse__storage_ {
  uint32_t _has_storage_[1];
  GDAPayeeCode *payeeCode;
  GDAStatus *status;
} GDAGetMyPayeeCodeResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payeeCode",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAPayeeCode),
        .number = GDAGetMyPayeeCodeResponse_FieldNumber_PayeeCode,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAGetMyPayeeCodeResponse__storage_, payeeCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAStatus),
        .number = GDAGetMyPayeeCodeResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAGetMyPayeeCodeResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAGetMyPayeeCodeResponse class]
                                     rootClass:[GDAPaymentInappPayerRoot class]
                                          file:GDAPaymentInappPayerRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAGetMyPayeeCodeResponse__storage_)
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

#pragma mark - GDAPayeeCode

@implementation GDAPayeeCode

@dynamic payeeCode;
@dynamic expiresIn;
@dynamic payeeUuid;
@dynamic payeeLogo;
@dynamic payeeName;
@dynamic payeeStoreUuid;
@dynamic payeeStoreLogo;
@dynamic payeeStoreNamee;
@dynamic payeeWorkerUuid;
@dynamic payeeWorkerLogo;
@dynamic payeeWorkerName;

typedef struct GDAPayeeCode__storage_ {
  uint32_t _has_storage_[1];
  NSString *payeeCode;
  NSString *payeeUuid;
  NSString *payeeLogo;
  NSString *payeeName;
  NSString *payeeStoreUuid;
  NSString *payeeStoreLogo;
  NSString *payeeStoreNamee;
  NSString *payeeWorkerUuid;
  NSString *payeeWorkerLogo;
  NSString *payeeWorkerName;
  int64_t expiresIn;
} GDAPayeeCode__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payeeCode",
        .dataTypeSpecific.className = NULL,
        .number = GDAPayeeCode_FieldNumber_PayeeCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAPayeeCode__storage_, payeeCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "expiresIn",
        .dataTypeSpecific.className = NULL,
        .number = GDAPayeeCode_FieldNumber_ExpiresIn,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAPayeeCode__storage_, expiresIn),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "payeeUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAPayeeCode_FieldNumber_PayeeUuid,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAPayeeCode__storage_, payeeUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeLogo",
        .dataTypeSpecific.className = NULL,
        .number = GDAPayeeCode_FieldNumber_PayeeLogo,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDAPayeeCode__storage_, payeeLogo),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeName",
        .dataTypeSpecific.className = NULL,
        .number = GDAPayeeCode_FieldNumber_PayeeName,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDAPayeeCode__storage_, payeeName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeStoreUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAPayeeCode_FieldNumber_PayeeStoreUuid,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GDAPayeeCode__storage_, payeeStoreUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeStoreLogo",
        .dataTypeSpecific.className = NULL,
        .number = GDAPayeeCode_FieldNumber_PayeeStoreLogo,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(GDAPayeeCode__storage_, payeeStoreLogo),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeStoreNamee",
        .dataTypeSpecific.className = NULL,
        .number = GDAPayeeCode_FieldNumber_PayeeStoreNamee,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(GDAPayeeCode__storage_, payeeStoreNamee),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeWorkerUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAPayeeCode_FieldNumber_PayeeWorkerUuid,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(GDAPayeeCode__storage_, payeeWorkerUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeWorkerLogo",
        .dataTypeSpecific.className = NULL,
        .number = GDAPayeeCode_FieldNumber_PayeeWorkerLogo,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(GDAPayeeCode__storage_, payeeWorkerLogo),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeWorkerName",
        .dataTypeSpecific.className = NULL,
        .number = GDAPayeeCode_FieldNumber_PayeeWorkerName,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(GDAPayeeCode__storage_, payeeWorkerName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAPayeeCode class]
                                     rootClass:[GDAPaymentInappPayerRoot class]
                                          file:GDAPaymentInappPayerRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAPayeeCode__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\013\001\t\000\003\t\000\005\t\000\007\t\000\t\t\000\r\016\000\017\016\000\021\017\000\031\017\000\033\017\000\035\017\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAGetPayeeCodeRequest

@implementation GDAGetPayeeCodeRequest

@dynamic payeeCode;

typedef struct GDAGetPayeeCodeRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *payeeCode;
} GDAGetPayeeCodeRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payeeCode",
        .dataTypeSpecific.className = NULL,
        .number = GDAGetPayeeCodeRequest_FieldNumber_PayeeCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAGetPayeeCodeRequest__storage_, payeeCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAGetPayeeCodeRequest class]
                                     rootClass:[GDAPaymentInappPayerRoot class]
                                          file:GDAPaymentInappPayerRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAGetPayeeCodeRequest__storage_)
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

#pragma mark - GDAGetPayeeCodeResponse

@implementation GDAGetPayeeCodeResponse

@dynamic hasStatus, status;
@dynamic hasPayeeCode, payeeCode;

typedef struct GDAGetPayeeCodeResponse__storage_ {
  uint32_t _has_storage_[1];
  GDAPayeeCode *payeeCode;
  GDAStatus *status;
} GDAGetPayeeCodeResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payeeCode",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAPayeeCode),
        .number = GDAGetPayeeCodeResponse_FieldNumber_PayeeCode,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAGetPayeeCodeResponse__storage_, payeeCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAStatus),
        .number = GDAGetPayeeCodeResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAGetPayeeCodeResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAGetPayeeCodeResponse class]
                                     rootClass:[GDAPaymentInappPayerRoot class]
                                          file:GDAPaymentInappPayerRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAGetPayeeCodeResponse__storage_)
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

#pragma mark - GDAPreparePayerInappPaymentRequest

@implementation GDAPreparePayerInappPaymentRequest

@dynamic payeeCode;
@dynamic shouldPay;

typedef struct GDAPreparePayerInappPaymentRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t shouldPay;
  NSString *payeeCode;
} GDAPreparePayerInappPaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payeeCode",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePayerInappPaymentRequest_FieldNumber_PayeeCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAPreparePayerInappPaymentRequest__storage_, payeeCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePayerInappPaymentRequest_FieldNumber_ShouldPay,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAPreparePayerInappPaymentRequest__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAPreparePayerInappPaymentRequest class]
                                     rootClass:[GDAPaymentInappPayerRoot class]
                                          file:GDAPaymentInappPayerRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAPreparePayerInappPaymentRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\002\r\t\000\017\t\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAPreparePayerInappPaymentResponse

@implementation GDAPreparePayerInappPaymentResponse

@dynamic hasStatus, status;
@dynamic payeeCode;
@dynamic payeeName;
@dynamic payeeStoreName;
@dynamic payeeWorkerName;
@dynamic shouldPay;
@dynamic actualPay;
@dynamic pointsPay;
@dynamic pointsRepay;
@dynamic pointsPayComment;
@dynamic pointsRepayComment;

typedef struct GDAPreparePayerInappPaymentResponse__storage_ {
  uint32_t _has_storage_[1];
  int32_t shouldPay;
  int32_t actualPay;
  int32_t pointsPay;
  int32_t pointsRepay;
  NSString *payeeCode;
  NSString *payeeName;
  NSString *payeeStoreName;
  NSString *payeeWorkerName;
  NSString *pointsPayComment;
  NSString *pointsRepayComment;
  GDAStatus *status;
} GDAPreparePayerInappPaymentResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payeeCode",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePayerInappPaymentResponse_FieldNumber_PayeeCode,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAPreparePayerInappPaymentResponse__storage_, payeeCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeName",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePayerInappPaymentResponse_FieldNumber_PayeeName,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAPreparePayerInappPaymentResponse__storage_, payeeName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeStoreName",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePayerInappPaymentResponse_FieldNumber_PayeeStoreName,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDAPreparePayerInappPaymentResponse__storage_, payeeStoreName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeWorkerName",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePayerInappPaymentResponse_FieldNumber_PayeeWorkerName,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDAPreparePayerInappPaymentResponse__storage_, payeeWorkerName),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePayerInappPaymentResponse_FieldNumber_ShouldPay,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GDAPreparePayerInappPaymentResponse__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "actualPay",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePayerInappPaymentResponse_FieldNumber_ActualPay,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(GDAPreparePayerInappPaymentResponse__storage_, actualPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pointsPay",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePayerInappPaymentResponse_FieldNumber_PointsPay,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(GDAPreparePayerInappPaymentResponse__storage_, pointsPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pointsRepay",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePayerInappPaymentResponse_FieldNumber_PointsRepay,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(GDAPreparePayerInappPaymentResponse__storage_, pointsRepay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pointsPayComment",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePayerInappPaymentResponse_FieldNumber_PointsPayComment,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(GDAPreparePayerInappPaymentResponse__storage_, pointsPayComment),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "pointsRepayComment",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePayerInappPaymentResponse_FieldNumber_PointsRepayComment,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(GDAPreparePayerInappPaymentResponse__storage_, pointsRepayComment),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAStatus),
        .number = GDAPreparePayerInappPaymentResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAPreparePayerInappPaymentResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAPreparePayerInappPaymentResponse class]
                                     rootClass:[GDAPaymentInappPayerRoot class]
                                          file:GDAPaymentInappPayerRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAPreparePayerInappPaymentResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\n\013\t\000\014\t\000\r\016\000\016\017\000\017\t\000\020\t\000\021\t\000\022\013\000\024\020\000\025\022\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDACreatePayerInappPaymentRequest

@implementation GDACreatePayerInappPaymentRequest

@dynamic pointsOneOfCase;
@dynamic payeeCode;
@dynamic shouldPay;
@dynamic actualPay;
@dynamic pointsPay;
@dynamic pointsRepay;
@dynamic paymentChannel;
@dynamic payerIp;

typedef struct GDACreatePayerInappPaymentRequest__storage_ {
  uint32_t _has_storage_[2];
  int32_t shouldPay;
  int32_t actualPay;
  int32_t pointsPay;
  int32_t pointsRepay;
  GDAPaymentChannel paymentChannel;
  NSString *payeeCode;
  NSString *payerIp;
} GDACreatePayerInappPaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payeeCode",
        .dataTypeSpecific.className = NULL,
        .number = GDACreatePayerInappPaymentRequest_FieldNumber_PayeeCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDACreatePayerInappPaymentRequest__storage_, payeeCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = GDACreatePayerInappPaymentRequest_FieldNumber_ShouldPay,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDACreatePayerInappPaymentRequest__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "actualPay",
        .dataTypeSpecific.className = NULL,
        .number = GDACreatePayerInappPaymentRequest_FieldNumber_ActualPay,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDACreatePayerInappPaymentRequest__storage_, actualPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pointsPay",
        .dataTypeSpecific.className = NULL,
        .number = GDACreatePayerInappPaymentRequest_FieldNumber_PointsPay,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GDACreatePayerInappPaymentRequest__storage_, pointsPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pointsRepay",
        .dataTypeSpecific.className = NULL,
        .number = GDACreatePayerInappPaymentRequest_FieldNumber_PointsRepay,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GDACreatePayerInappPaymentRequest__storage_, pointsRepay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "paymentChannel",
        .dataTypeSpecific.enumDescFunc = GDAPaymentChannel_EnumDescriptor,
        .number = GDACreatePayerInappPaymentRequest_FieldNumber_PaymentChannel,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDACreatePayerInappPaymentRequest__storage_, paymentChannel),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "payerIp",
        .dataTypeSpecific.className = NULL,
        .number = GDACreatePayerInappPaymentRequest_FieldNumber_PayerIp,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDACreatePayerInappPaymentRequest__storage_, payerIp),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDACreatePayerInappPaymentRequest class]
                                     rootClass:[GDAPaymentInappPayerRoot class]
                                          file:GDAPaymentInappPayerRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDACreatePayerInappPaymentRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "points",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\007\r\t\000\017\t\000\020\t\000\021\t\000\022\013\000\032\016\000\036\007\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GDACreatePayerInappPaymentRequest_PaymentChannel_RawValue(GDACreatePayerInappPaymentRequest *message) {
  GPBDescriptor *descriptor = [GDACreatePayerInappPaymentRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDACreatePayerInappPaymentRequest_FieldNumber_PaymentChannel];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDACreatePayerInappPaymentRequest_PaymentChannel_RawValue(GDACreatePayerInappPaymentRequest *message, int32_t value) {
  GPBDescriptor *descriptor = [GDACreatePayerInappPaymentRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDACreatePayerInappPaymentRequest_FieldNumber_PaymentChannel];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

void GDACreatePayerInappPaymentRequest_ClearPointsOneOfCase(GDACreatePayerInappPaymentRequest *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
