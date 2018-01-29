// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/payment/payment_unionpay.proto

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

 #import "gedit/payment/PaymentUnionpay.pbobjc.h"
 #import "gedit/Common.pbobjc.h"
 #import "gedit/payment/PaymentCommon.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - PMUNPAYPaymentUnionpayRoot

@implementation PMUNPAYPaymentUnionpayRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - PMUNPAYPaymentUnionpayRoot_FileDescriptor

static GPBFileDescriptor *PMUNPAYPaymentUnionpayRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"gedit.payment"
                                                 objcPrefix:@"PMUNPAY"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - PMUNPAYPrepareUnionpayPaymentRequest

@implementation PMUNPAYPrepareUnionpayPaymentRequest

@dynamic payerCode;
@dynamic payerMobile;
@dynamic shouldPay;

typedef struct PMUNPAYPrepareUnionpayPaymentRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t shouldPay;
  NSString *payerCode;
  NSString *payerMobile;
} PMUNPAYPrepareUnionpayPaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payerCode",
        .dataTypeSpecific.className = NULL,
        .number = PMUNPAYPrepareUnionpayPaymentRequest_FieldNumber_PayerCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PMUNPAYPrepareUnionpayPaymentRequest__storage_, payerCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payerMobile",
        .dataTypeSpecific.className = NULL,
        .number = PMUNPAYPrepareUnionpayPaymentRequest_FieldNumber_PayerMobile,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PMUNPAYPrepareUnionpayPaymentRequest__storage_, payerMobile),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = PMUNPAYPrepareUnionpayPaymentRequest_FieldNumber_ShouldPay,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(PMUNPAYPrepareUnionpayPaymentRequest__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PMUNPAYPrepareUnionpayPaymentRequest class]
                                     rootClass:[PMUNPAYPaymentUnionpayRoot class]
                                          file:PMUNPAYPaymentUnionpayRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PMUNPAYPrepareUnionpayPaymentRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\003\013\t\000\014\013\000\017\t\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PMUNPAYPrepareUnionpayPaymentResponse

@implementation PMUNPAYPrepareUnionpayPaymentResponse

@dynamic hasStatus, status;
@dynamic payerCode;
@dynamic payerMobile;
@dynamic shouldPay;
@dynamic actualPay;
@dynamic pointsPay;

typedef struct PMUNPAYPrepareUnionpayPaymentResponse__storage_ {
  uint32_t _has_storage_[1];
  int32_t shouldPay;
  int32_t actualPay;
  int32_t pointsPay;
  NSString *payerCode;
  NSString *payerMobile;
  COMMONStatus *status;
} PMUNPAYPrepareUnionpayPaymentResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payerCode",
        .dataTypeSpecific.className = NULL,
        .number = PMUNPAYPrepareUnionpayPaymentResponse_FieldNumber_PayerCode,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PMUNPAYPrepareUnionpayPaymentResponse__storage_, payerCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payerMobile",
        .dataTypeSpecific.className = NULL,
        .number = PMUNPAYPrepareUnionpayPaymentResponse_FieldNumber_PayerMobile,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(PMUNPAYPrepareUnionpayPaymentResponse__storage_, payerMobile),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = PMUNPAYPrepareUnionpayPaymentResponse_FieldNumber_ShouldPay,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(PMUNPAYPrepareUnionpayPaymentResponse__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "actualPay",
        .dataTypeSpecific.className = NULL,
        .number = PMUNPAYPrepareUnionpayPaymentResponse_FieldNumber_ActualPay,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(PMUNPAYPrepareUnionpayPaymentResponse__storage_, actualPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pointsPay",
        .dataTypeSpecific.className = NULL,
        .number = PMUNPAYPrepareUnionpayPaymentResponse_FieldNumber_PointsPay,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(PMUNPAYPrepareUnionpayPaymentResponse__storage_, pointsPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(COMMONStatus),
        .number = PMUNPAYPrepareUnionpayPaymentResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PMUNPAYPrepareUnionpayPaymentResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PMUNPAYPrepareUnionpayPaymentResponse class]
                                     rootClass:[PMUNPAYPaymentUnionpayRoot class]
                                          file:PMUNPAYPaymentUnionpayRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PMUNPAYPrepareUnionpayPaymentResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\005\013\t\000\014\013\000\017\t\000\020\t\000\021\t\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - PMUNPAYCreateUnionpayPaymentRequest

@implementation PMUNPAYCreateUnionpayPaymentRequest

@dynamic payerCode;
@dynamic payerMobile;
@dynamic shouldPay;
@dynamic actualPay;
@dynamic pointsPay;
@dynamic payeeIp;

typedef struct PMUNPAYCreateUnionpayPaymentRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t shouldPay;
  int32_t actualPay;
  int32_t pointsPay;
  NSString *payerCode;
  NSString *payerMobile;
  NSString *payeeIp;
} PMUNPAYCreateUnionpayPaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payerCode",
        .dataTypeSpecific.className = NULL,
        .number = PMUNPAYCreateUnionpayPaymentRequest_FieldNumber_PayerCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(PMUNPAYCreateUnionpayPaymentRequest__storage_, payerCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payerMobile",
        .dataTypeSpecific.className = NULL,
        .number = PMUNPAYCreateUnionpayPaymentRequest_FieldNumber_PayerMobile,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(PMUNPAYCreateUnionpayPaymentRequest__storage_, payerMobile),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = PMUNPAYCreateUnionpayPaymentRequest_FieldNumber_ShouldPay,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(PMUNPAYCreateUnionpayPaymentRequest__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "actualPay",
        .dataTypeSpecific.className = NULL,
        .number = PMUNPAYCreateUnionpayPaymentRequest_FieldNumber_ActualPay,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(PMUNPAYCreateUnionpayPaymentRequest__storage_, actualPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pointsPay",
        .dataTypeSpecific.className = NULL,
        .number = PMUNPAYCreateUnionpayPaymentRequest_FieldNumber_PointsPay,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(PMUNPAYCreateUnionpayPaymentRequest__storage_, pointsPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "payeeIp",
        .dataTypeSpecific.className = NULL,
        .number = PMUNPAYCreateUnionpayPaymentRequest_FieldNumber_PayeeIp,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(PMUNPAYCreateUnionpayPaymentRequest__storage_, payeeIp),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[PMUNPAYCreateUnionpayPaymentRequest class]
                                     rootClass:[PMUNPAYPaymentUnionpayRoot class]
                                          file:PMUNPAYPaymentUnionpayRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(PMUNPAYCreateUnionpayPaymentRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\006\013\t\000\014\013\000\017\t\000\020\t\000\021\t\000\022\007\000";
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
