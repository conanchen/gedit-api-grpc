// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/accounting/accounting_account.proto

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

 #import "gedit/accounting/AccountingAccount.pbobjc.h"
 #import "gedit/Common.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
#pragma clang diagnostic ignored "-Wdirect-ivar-access"

#pragma mark - GDAAccountingAccountRoot

@implementation GDAAccountingAccountRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - GDAAccountingAccountRoot_FileDescriptor

static GPBFileDescriptor *GDAAccountingAccountRoot_FileDescriptor(void) {
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

#pragma mark - GDAUpsertAccountsRequest

@implementation GDAUpsertAccountsRequest

@dynamic userUuid;

typedef struct GDAUpsertAccountsRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *userUuid;
} GDAUpsertAccountsRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "userUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAUpsertAccountsRequest_FieldNumber_UserUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAUpsertAccountsRequest__storage_, userUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAUpsertAccountsRequest class]
                                     rootClass:[GDAAccountingAccountRoot class]
                                          file:GDAAccountingAccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAUpsertAccountsRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\013\010\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAListMyAccountRequest

@implementation GDAListMyAccountRequest

@dynamic lastUpdated;

typedef struct GDAListMyAccountRequest__storage_ {
  uint32_t _has_storage_[1];
  int64_t lastUpdated;
} GDAListMyAccountRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "lastUpdated",
        .dataTypeSpecific.className = NULL,
        .number = GDAListMyAccountRequest_FieldNumber_LastUpdated,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAListMyAccountRequest__storage_, lastUpdated),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAListMyAccountRequest class]
                                     rootClass:[GDAAccountingAccountRoot class]
                                          file:GDAAccountingAccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAListMyAccountRequest__storage_)
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

#pragma mark - GDAAccountResponse

@implementation GDAAccountResponse

@dynamic hasStatus, status;
@dynamic hasAccount, account;

typedef struct GDAAccountResponse__storage_ {
  uint32_t _has_storage_[1];
  GDAAccount *account;
  GDAStatus *status;
} GDAAccountResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "account",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAAccount),
        .number = GDAAccountResponse_FieldNumber_Account,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAAccountResponse__storage_, account),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAStatus),
        .number = GDAAccountResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAAccountResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAAccountResponse class]
                                     rootClass:[GDAAccountingAccountRoot class]
                                          file:GDAAccountingAccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAAccountResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAAccount

@implementation GDAAccount

@dynamic uuid;
@dynamic userUuid;
@dynamic type;
@dynamic previousBalance;
@dynamic previousDate;
@dynamic currentChanges;
@dynamic currentDate;
@dynamic currentBalance;
@dynamic created;
@dynamic lastUpdated;

typedef struct GDAAccount__storage_ {
  uint32_t _has_storage_[1];
  GDAAccountType type;
  int32_t previousBalance;
  int32_t currentChanges;
  int32_t currentBalance;
  NSString *uuid;
  NSString *userUuid;
  int64_t previousDate;
  int64_t currentDate;
  int64_t created;
  int64_t lastUpdated;
} GDAAccount__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAAccount_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAAccount__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "userUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAAccount_FieldNumber_UserUuid,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAAccount__storage_, userUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "type",
        .dataTypeSpecific.enumDescFunc = GDAAccountType_EnumDescriptor,
        .number = GDAAccount_FieldNumber_Type,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAAccount__storage_, type),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "previousBalance",
        .dataTypeSpecific.className = NULL,
        .number = GDAAccount_FieldNumber_PreviousBalance,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDAAccount__storage_, previousBalance),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "previousDate",
        .dataTypeSpecific.className = NULL,
        .number = GDAAccount_FieldNumber_PreviousDate,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDAAccount__storage_, previousDate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "currentChanges",
        .dataTypeSpecific.className = NULL,
        .number = GDAAccount_FieldNumber_CurrentChanges,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GDAAccount__storage_, currentChanges),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "currentDate",
        .dataTypeSpecific.className = NULL,
        .number = GDAAccount_FieldNumber_CurrentDate,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(GDAAccount__storage_, currentDate),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "currentBalance",
        .dataTypeSpecific.className = NULL,
        .number = GDAAccount_FieldNumber_CurrentBalance,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(GDAAccount__storage_, currentBalance),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "created",
        .dataTypeSpecific.className = NULL,
        .number = GDAAccount_FieldNumber_Created,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(GDAAccount__storage_, created),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
      {
        .name = "lastUpdated",
        .dataTypeSpecific.className = NULL,
        .number = GDAAccount_FieldNumber_LastUpdated,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(GDAAccount__storage_, lastUpdated),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAAccount class]
                                     rootClass:[GDAAccountingAccountRoot class]
                                          file:GDAAccountingAccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAAccount__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\007\014\010\000\017\017\000\020\014\000\021\016\000\022\013\000\023\016\000=\013\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GDAAccount_Type_RawValue(GDAAccount *message) {
  GPBDescriptor *descriptor = [GDAAccount descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDAAccount_FieldNumber_Type];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDAAccount_Type_RawValue(GDAAccount *message, int32_t value) {
  GPBDescriptor *descriptor = [GDAAccount descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDAAccount_FieldNumber_Type];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - GDAGetAccountRequest

@implementation GDAGetAccountRequest

@dynamic uuid;

typedef struct GDAGetAccountRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *uuid;
} GDAGetAccountRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAGetAccountRequest_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAGetAccountRequest__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAGetAccountRequest class]
                                     rootClass:[GDAAccountingAccountRoot class]
                                          file:GDAAccountingAccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAGetAccountRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAFindAccountRequest

@implementation GDAFindAccountRequest

@dynamic valueOneOfCase;
@dynamic userAndAccountType;

typedef struct GDAFindAccountRequest__storage_ {
  uint32_t _has_storage_[2];
  GDAUserAndAccountType *userAndAccountType;
} GDAFindAccountRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "userAndAccountType",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAUserAndAccountType),
        .number = GDAFindAccountRequest_FieldNumber_UserAndAccountType,
        .hasIndex = -1,
        .offset = (uint32_t)offsetof(GDAFindAccountRequest__storage_, userAndAccountType),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAFindAccountRequest class]
                                     rootClass:[GDAAccountingAccountRoot class]
                                          file:GDAAccountingAccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAFindAccountRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    static const char *oneofs[] = {
      "value",
    };
    [localDescriptor setupOneofs:oneofs
                           count:(uint32_t)(sizeof(oneofs) / sizeof(char*))
                   firstHasIndex:-1];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\022\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

void GDAFindAccountRequest_ClearValueOneOfCase(GDAFindAccountRequest *message) {
  GPBDescriptor *descriptor = [message descriptor];
  GPBOneofDescriptor *oneof = [descriptor.oneofs objectAtIndex:0];
  GPBMaybeClearOneof(message, oneof, -1, 0);
}
#pragma mark - GDAUserAndAccountType

@implementation GDAUserAndAccountType

@dynamic userUuid;
@dynamic type;

typedef struct GDAUserAndAccountType__storage_ {
  uint32_t _has_storage_[1];
  GDAAccountType type;
  NSString *userUuid;
} GDAUserAndAccountType__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "userUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAUserAndAccountType_FieldNumber_UserUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAUserAndAccountType__storage_, userUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "type",
        .dataTypeSpecific.enumDescFunc = GDAAccountType_EnumDescriptor,
        .number = GDAUserAndAccountType_FieldNumber_Type,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAUserAndAccountType__storage_, type),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAUserAndAccountType class]
                                     rootClass:[GDAAccountingAccountRoot class]
                                          file:GDAAccountingAccountRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAUserAndAccountType__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\013\010\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GDAUserAndAccountType_Type_RawValue(GDAUserAndAccountType *message) {
  GPBDescriptor *descriptor = [GDAUserAndAccountType descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDAUserAndAccountType_FieldNumber_Type];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDAUserAndAccountType_Type_RawValue(GDAUserAndAccountType *message, int32_t value) {
  GPBDescriptor *descriptor = [GDAUserAndAccountType descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDAUserAndAccountType_FieldNumber_Type];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}


#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
