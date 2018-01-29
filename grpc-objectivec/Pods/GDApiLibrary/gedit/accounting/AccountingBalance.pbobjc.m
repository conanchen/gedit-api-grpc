// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/accounting/accounting_balance.proto

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

 #import "gedit/accounting/AccountingBalance.pbobjc.h"
 #import "gedit/Common.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GDAAccountingBalanceRoot

@implementation GDAAccountingBalanceRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - GDAAccountingBalanceRoot_FileDescriptor

static GPBFileDescriptor *GDAAccountingBalanceRoot_FileDescriptor(void) {
  // This is called by +initialize so there is no need to worry
  // about thread safety of the singleton.
  static GPBFileDescriptor *descriptor = NULL;
  if (!descriptor) {
    GPB_DEBUG_CHECK_RUNTIME_VERSIONS();
    descriptor = [[GPBFileDescriptor alloc] initWithPackage:@"gedit.accounting"
                                                 objcPrefix:@"GDA"
                                                     syntax:GPBFileSyntaxProto3];
  }
  return descriptor;
}

#pragma mark - GDAListBalanceRequest

@implementation GDAListBalanceRequest

@dynamic accountUuid;
@dynamic from;
@dynamic size;

typedef struct GDAListBalanceRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t from;
  int32_t size;
  NSString *accountUuid;
} GDAListBalanceRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAListBalanceRequest_FieldNumber_AccountUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAListBalanceRequest__storage_, accountUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "from",
        .dataTypeSpecific.className = NULL,
        .number = GDAListBalanceRequest_FieldNumber_From,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAListBalanceRequest__storage_, from),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "size",
        .dataTypeSpecific.className = NULL,
        .number = GDAListBalanceRequest_FieldNumber_Size,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAListBalanceRequest__storage_, size),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAListBalanceRequest class]
                                     rootClass:[GDAAccountingBalanceRoot class]
                                          file:GDAAccountingBalanceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAListBalanceRequest__storage_)
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

#pragma mark - GDABalanceResponse

@implementation GDABalanceResponse

@dynamic hasStatus, status;
@dynamic hasBalance, balance;

typedef struct GDABalanceResponse__storage_ {
  uint32_t _has_storage_[1];
  GDABalance *balance;
  GDAStatus *status;
} GDABalanceResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "balance",
        .dataTypeSpecific.className = GPBStringifySymbol(GDABalance),
        .number = GDABalanceResponse_FieldNumber_Balance,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDABalanceResponse__storage_, balance),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAStatus),
        .number = GDABalanceResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDABalanceResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDABalanceResponse class]
                                     rootClass:[GDAAccountingBalanceRoot class]
                                          file:GDAAccountingBalanceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDABalanceResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDABalance

@implementation GDABalance

@dynamic accountUuid;
@dynamic previousBalance;
@dynamic previousDate;
@dynamic currentChanges;
@dynamic currentDate;
@dynamic currentBalance;

typedef struct GDABalance__storage_ {
  uint32_t _has_storage_[1];
  int32_t previousBalance;
  int32_t currentChanges;
  int32_t currentBalance;
  NSString *accountUuid;
  int64_t previousDate;
  int64_t currentDate;
} GDABalance__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "accountUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDABalance_FieldNumber_AccountUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDABalance__storage_, accountUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "previousBalance",
        .dataTypeSpecific.className = NULL,
        .number = GDABalance_FieldNumber_PreviousBalance,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDABalance__storage_, previousBalance),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "previousDate",
        .dataTypeSpecific.className = NULL,
        .number = GDABalance_FieldNumber_PreviousDate,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDABalance__storage_, previousDate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "currentChanges",
        .dataTypeSpecific.className = NULL,
        .number = GDABalance_FieldNumber_CurrentChanges,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDABalance__storage_, currentChanges),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "currentDate",
        .dataTypeSpecific.className = NULL,
        .number = GDABalance_FieldNumber_CurrentDate,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDABalance__storage_, currentDate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "currentBalance",
        .dataTypeSpecific.className = NULL,
        .number = GDABalance_FieldNumber_CurrentBalance,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GDABalance__storage_, currentBalance),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDABalance class]
                                     rootClass:[GDAAccountingBalanceRoot class]
                                          file:GDAAccountingBalanceRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDABalance__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\006\001\013\000\017\017\000\020\014\000\021\016\000\022\013\000\023\016\000";
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
