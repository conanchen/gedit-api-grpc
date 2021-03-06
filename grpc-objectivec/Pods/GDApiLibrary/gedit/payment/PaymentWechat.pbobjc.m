// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/payment/payment_wechat.proto

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

 #import "gedit/payment/PaymentWechat.pbobjc.h"
 #import "gedit/Common.pbobjc.h"
 #import "gedit/payment/PaymentCommon.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GDAPaymentWechatRoot

@implementation GDAPaymentWechatRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - GDAPaymentWechatRoot_FileDescriptor

static GPBFileDescriptor *GDAPaymentWechatRoot_FileDescriptor(void) {
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

#pragma mark - GDAPrepareWechatPaymentRequest

@implementation GDAPrepareWechatPaymentRequest

@dynamic payerCode;
@dynamic payerMobile;
@dynamic shouldPay;

typedef struct GDAPrepareWechatPaymentRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t shouldPay;
  NSString *payerCode;
  NSString *payerMobile;
} GDAPrepareWechatPaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payerCode",
        .dataTypeSpecific.className = NULL,
        .number = GDAPrepareWechatPaymentRequest_FieldNumber_PayerCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAPrepareWechatPaymentRequest__storage_, payerCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payerMobile",
        .dataTypeSpecific.className = NULL,
        .number = GDAPrepareWechatPaymentRequest_FieldNumber_PayerMobile,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAPrepareWechatPaymentRequest__storage_, payerMobile),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = GDAPrepareWechatPaymentRequest_FieldNumber_ShouldPay,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAPrepareWechatPaymentRequest__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAPrepareWechatPaymentRequest class]
                                     rootClass:[GDAPaymentWechatRoot class]
                                          file:GDAPaymentWechatRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAPrepareWechatPaymentRequest__storage_)
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

#pragma mark - GDAPrepareWechatPaymentResponse

@implementation GDAPrepareWechatPaymentResponse

@dynamic hasStatus, status;
@dynamic payerCode;
@dynamic payerMobile;
@dynamic shouldPay;
@dynamic actualPay;
@dynamic pointsPay;

typedef struct GDAPrepareWechatPaymentResponse__storage_ {
  uint32_t _has_storage_[1];
  int32_t shouldPay;
  int32_t actualPay;
  int32_t pointsPay;
  NSString *payerCode;
  NSString *payerMobile;
  GDAStatus *status;
} GDAPrepareWechatPaymentResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payerCode",
        .dataTypeSpecific.className = NULL,
        .number = GDAPrepareWechatPaymentResponse_FieldNumber_PayerCode,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAPrepareWechatPaymentResponse__storage_, payerCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payerMobile",
        .dataTypeSpecific.className = NULL,
        .number = GDAPrepareWechatPaymentResponse_FieldNumber_PayerMobile,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAPrepareWechatPaymentResponse__storage_, payerMobile),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = GDAPrepareWechatPaymentResponse_FieldNumber_ShouldPay,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDAPrepareWechatPaymentResponse__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "actualPay",
        .dataTypeSpecific.className = NULL,
        .number = GDAPrepareWechatPaymentResponse_FieldNumber_ActualPay,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDAPrepareWechatPaymentResponse__storage_, actualPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pointsPay",
        .dataTypeSpecific.className = NULL,
        .number = GDAPrepareWechatPaymentResponse_FieldNumber_PointsPay,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GDAPrepareWechatPaymentResponse__storage_, pointsPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAStatus),
        .number = GDAPrepareWechatPaymentResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAPrepareWechatPaymentResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAPrepareWechatPaymentResponse class]
                                     rootClass:[GDAPaymentWechatRoot class]
                                          file:GDAPaymentWechatRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAPrepareWechatPaymentResponse__storage_)
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

#pragma mark - GDACreateWechatPaymentRequest

@implementation GDACreateWechatPaymentRequest

@dynamic payerCode;
@dynamic payerMobile;
@dynamic shouldPay;
@dynamic actualPay;
@dynamic pointsPay;
@dynamic payeeIp;

typedef struct GDACreateWechatPaymentRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t shouldPay;
  int32_t actualPay;
  int32_t pointsPay;
  NSString *payerCode;
  NSString *payerMobile;
  NSString *payeeIp;
} GDACreateWechatPaymentRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payerCode",
        .dataTypeSpecific.className = NULL,
        .number = GDACreateWechatPaymentRequest_FieldNumber_PayerCode,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDACreateWechatPaymentRequest__storage_, payerCode),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payerMobile",
        .dataTypeSpecific.className = NULL,
        .number = GDACreateWechatPaymentRequest_FieldNumber_PayerMobile,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDACreateWechatPaymentRequest__storage_, payerMobile),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = GDACreateWechatPaymentRequest_FieldNumber_ShouldPay,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDACreateWechatPaymentRequest__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "actualPay",
        .dataTypeSpecific.className = NULL,
        .number = GDACreateWechatPaymentRequest_FieldNumber_ActualPay,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDACreateWechatPaymentRequest__storage_, actualPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "pointsPay",
        .dataTypeSpecific.className = NULL,
        .number = GDACreateWechatPaymentRequest_FieldNumber_PointsPay,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDACreateWechatPaymentRequest__storage_, pointsPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "payeeIp",
        .dataTypeSpecific.className = NULL,
        .number = GDACreateWechatPaymentRequest_FieldNumber_PayeeIp,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GDACreateWechatPaymentRequest__storage_, payeeIp),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDACreateWechatPaymentRequest class]
                                     rootClass:[GDAPaymentWechatRoot class]
                                          file:GDAPaymentWechatRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDACreateWechatPaymentRequest__storage_)
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
