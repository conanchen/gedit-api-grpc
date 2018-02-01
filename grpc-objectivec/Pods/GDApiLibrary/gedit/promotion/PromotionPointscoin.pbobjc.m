// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: gedit/promotion/promotion_pointscoin.proto

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

 #import "gedit/promotion/PromotionPointscoin.pbobjc.h"
 #import "gedit/Common.pbobjc.h"
// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

#pragma mark - GDAPromotionPointscoinRoot

@implementation GDAPromotionPointscoinRoot

// No extensions in the file and none of the imports (direct or indirect)
// defined extensions, so no need to generate +extensionRegistry.

@end

#pragma mark - GDAPromotionPointscoinRoot_FileDescriptor

static GPBFileDescriptor *GDAPromotionPointscoinRoot_FileDescriptor(void) {
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

#pragma mark - GDAPreparePointsCoinRequest

@implementation GDAPreparePointsCoinRequest

@dynamic payeeUuid;
@dynamic payeeStoreUuid;
@dynamic coinNumber;
@dynamic price;
@dynamic shouldPay;
@dynamic channel;

typedef struct GDAPreparePointsCoinRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t coinNumber;
  int32_t price;
  int32_t shouldPay;
  GDAPaymentChannel channel;
  NSString *payeeUuid;
  NSString *payeeStoreUuid;
} GDAPreparePointsCoinRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payeeUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePointsCoinRequest_FieldNumber_PayeeUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAPreparePointsCoinRequest__storage_, payeeUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeStoreUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePointsCoinRequest_FieldNumber_PayeeStoreUuid,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAPreparePointsCoinRequest__storage_, payeeStoreUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "coinNumber",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePointsCoinRequest_FieldNumber_CoinNumber,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAPreparePointsCoinRequest__storage_, coinNumber),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "price",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePointsCoinRequest_FieldNumber_Price,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDAPreparePointsCoinRequest__storage_, price),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePointsCoinRequest_FieldNumber_ShouldPay,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDAPreparePointsCoinRequest__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "channel",
        .dataTypeSpecific.enumDescFunc = GDAPaymentChannel_EnumDescriptor,
        .number = GDAPreparePointsCoinRequest_FieldNumber_Channel,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GDAPreparePointsCoinRequest__storage_, channel),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAPreparePointsCoinRequest class]
                                     rootClass:[GDAPromotionPointscoinRoot class]
                                          file:GDAPromotionPointscoinRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAPreparePointsCoinRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\004\004\t\000\007\016\000\n\n\000\020\t\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GDAPreparePointsCoinRequest_Channel_RawValue(GDAPreparePointsCoinRequest *message) {
  GPBDescriptor *descriptor = [GDAPreparePointsCoinRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDAPreparePointsCoinRequest_FieldNumber_Channel];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDAPreparePointsCoinRequest_Channel_RawValue(GDAPreparePointsCoinRequest *message, int32_t value) {
  GPBDescriptor *descriptor = [GDAPreparePointsCoinRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDAPreparePointsCoinRequest_FieldNumber_Channel];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - GDAPreparePointsCoinResponse

@implementation GDAPreparePointsCoinResponse

@dynamic hasStatus, status;
@dynamic totalCoinsBought;
@dynamic totalCoins;
@dynamic totalCoinsAvailable;
@dynamic channelOrderUuid;

typedef struct GDAPreparePointsCoinResponse__storage_ {
  uint32_t _has_storage_[1];
  int32_t totalCoinsBought;
  int32_t totalCoins;
  int32_t totalCoinsAvailable;
  NSString *channelOrderUuid;
  GDAStatus *status;
} GDAPreparePointsCoinResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "totalCoinsBought",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePointsCoinResponse_FieldNumber_TotalCoinsBought,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAPreparePointsCoinResponse__storage_, totalCoinsBought),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "totalCoins",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePointsCoinResponse_FieldNumber_TotalCoins,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAPreparePointsCoinResponse__storage_, totalCoins),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "totalCoinsAvailable",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePointsCoinResponse_FieldNumber_TotalCoinsAvailable,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDAPreparePointsCoinResponse__storage_, totalCoinsAvailable),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "channelOrderUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAPreparePointsCoinResponse_FieldNumber_ChannelOrderUuid,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDAPreparePointsCoinResponse__storage_, channelOrderUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAStatus),
        .number = GDAPreparePointsCoinResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAPreparePointsCoinResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAPreparePointsCoinResponse class]
                                     rootClass:[GDAPromotionPointscoinRoot class]
                                          file:GDAPromotionPointscoinRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAPreparePointsCoinResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\004\001\020\000\002\n\000\003\023\000\033\020\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDABuyPointsCoinRequest

@implementation GDABuyPointsCoinRequest

@dynamic payeeUuid;
@dynamic payeeStoreUuid;
@dynamic coinNumber;
@dynamic price;
@dynamic shouldPay;
@dynamic actualPay;
@dynamic channel;
@dynamic channelOrderUuid;

typedef struct GDABuyPointsCoinRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t coinNumber;
  int32_t price;
  int32_t shouldPay;
  int32_t actualPay;
  GDAPaymentChannel channel;
  NSString *payeeUuid;
  NSString *payeeStoreUuid;
  NSString *channelOrderUuid;
} GDABuyPointsCoinRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "payeeUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDABuyPointsCoinRequest_FieldNumber_PayeeUuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDABuyPointsCoinRequest__storage_, payeeUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeStoreUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDABuyPointsCoinRequest_FieldNumber_PayeeStoreUuid,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDABuyPointsCoinRequest__storage_, payeeStoreUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "coinNumber",
        .dataTypeSpecific.className = NULL,
        .number = GDABuyPointsCoinRequest_FieldNumber_CoinNumber,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDABuyPointsCoinRequest__storage_, coinNumber),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "price",
        .dataTypeSpecific.className = NULL,
        .number = GDABuyPointsCoinRequest_FieldNumber_Price,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDABuyPointsCoinRequest__storage_, price),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = GDABuyPointsCoinRequest_FieldNumber_ShouldPay,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDABuyPointsCoinRequest__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "actualPay",
        .dataTypeSpecific.className = NULL,
        .number = GDABuyPointsCoinRequest_FieldNumber_ActualPay,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GDABuyPointsCoinRequest__storage_, actualPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "channel",
        .dataTypeSpecific.enumDescFunc = GDAPaymentChannel_EnumDescriptor,
        .number = GDABuyPointsCoinRequest_FieldNumber_Channel,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(GDABuyPointsCoinRequest__storage_, channel),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "channelOrderUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDABuyPointsCoinRequest_FieldNumber_ChannelOrderUuid,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(GDABuyPointsCoinRequest__storage_, channelOrderUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDABuyPointsCoinRequest class]
                                     rootClass:[GDAPromotionPointscoinRoot class]
                                          file:GDAPromotionPointscoinRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDABuyPointsCoinRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\006\004\t\000\007\016\000\010\n\000\n\t\000\020\t\000\033\020\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GDABuyPointsCoinRequest_Channel_RawValue(GDABuyPointsCoinRequest *message) {
  GPBDescriptor *descriptor = [GDABuyPointsCoinRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDABuyPointsCoinRequest_FieldNumber_Channel];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDABuyPointsCoinRequest_Channel_RawValue(GDABuyPointsCoinRequest *message, int32_t value) {
  GPBDescriptor *descriptor = [GDABuyPointsCoinRequest descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDABuyPointsCoinRequest_FieldNumber_Channel];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - GDAPointsCoin

@implementation GDAPointsCoin

@dynamic uuid;
@dynamic payeeUuid;
@dynamic payeeStoreUuid;
@dynamic coinNumber;
@dynamic price;
@dynamic shouldPay;
@dynamic discount;
@dynamic actualPay;
@dynamic channel;
@dynamic channelOrderUuid;
@dynamic created;

typedef struct GDAPointsCoin__storage_ {
  uint32_t _has_storage_[1];
  int32_t coinNumber;
  int32_t price;
  int32_t shouldPay;
  int32_t discount;
  int32_t actualPay;
  GDAPaymentChannel channel;
  NSString *uuid;
  NSString *payeeUuid;
  NSString *payeeStoreUuid;
  NSString *channelOrderUuid;
  int64_t created;
} GDAPointsCoin__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAPointsCoin_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAPointsCoin__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAPointsCoin_FieldNumber_PayeeUuid,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAPointsCoin__storage_, payeeUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "payeeStoreUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAPointsCoin_FieldNumber_PayeeStoreUuid,
        .hasIndex = 2,
        .offset = (uint32_t)offsetof(GDAPointsCoin__storage_, payeeStoreUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "coinNumber",
        .dataTypeSpecific.className = NULL,
        .number = GDAPointsCoin_FieldNumber_CoinNumber,
        .hasIndex = 3,
        .offset = (uint32_t)offsetof(GDAPointsCoin__storage_, coinNumber),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "price",
        .dataTypeSpecific.className = NULL,
        .number = GDAPointsCoin_FieldNumber_Price,
        .hasIndex = 4,
        .offset = (uint32_t)offsetof(GDAPointsCoin__storage_, price),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "shouldPay",
        .dataTypeSpecific.className = NULL,
        .number = GDAPointsCoin_FieldNumber_ShouldPay,
        .hasIndex = 5,
        .offset = (uint32_t)offsetof(GDAPointsCoin__storage_, shouldPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "discount",
        .dataTypeSpecific.className = NULL,
        .number = GDAPointsCoin_FieldNumber_Discount,
        .hasIndex = 6,
        .offset = (uint32_t)offsetof(GDAPointsCoin__storage_, discount),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "actualPay",
        .dataTypeSpecific.className = NULL,
        .number = GDAPointsCoin_FieldNumber_ActualPay,
        .hasIndex = 7,
        .offset = (uint32_t)offsetof(GDAPointsCoin__storage_, actualPay),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeInt32,
      },
      {
        .name = "channel",
        .dataTypeSpecific.enumDescFunc = GDAPaymentChannel_EnumDescriptor,
        .number = GDAPointsCoin_FieldNumber_Channel,
        .hasIndex = 8,
        .offset = (uint32_t)offsetof(GDAPointsCoin__storage_, channel),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldHasEnumDescriptor),
        .dataType = GPBDataTypeEnum,
      },
      {
        .name = "channelOrderUuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAPointsCoin_FieldNumber_ChannelOrderUuid,
        .hasIndex = 9,
        .offset = (uint32_t)offsetof(GDAPointsCoin__storage_, channelOrderUuid),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeString,
      },
      {
        .name = "created",
        .dataTypeSpecific.className = NULL,
        .number = GDAPointsCoin_FieldNumber_Created,
        .hasIndex = 10,
        .offset = (uint32_t)offsetof(GDAPointsCoin__storage_, created),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt64,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAPointsCoin class]
                                     rootClass:[GDAPromotionPointscoinRoot class]
                                          file:GDAPromotionPointscoinRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAPointsCoin__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\006\004\t\000\007\016\000\010\n\000\n\t\000\020\t\000\033\020\000";
    [localDescriptor setupExtraTextInfo:extraTextFormatInfo];
#endif  // !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

int32_t GDAPointsCoin_Channel_RawValue(GDAPointsCoin *message) {
  GPBDescriptor *descriptor = [GDAPointsCoin descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDAPointsCoin_FieldNumber_Channel];
  return GPBGetMessageInt32Field(message, field);
}

void SetGDAPointsCoin_Channel_RawValue(GDAPointsCoin *message, int32_t value) {
  GPBDescriptor *descriptor = [GDAPointsCoin descriptor];
  GPBFieldDescriptor *field = [descriptor fieldWithNumber:GDAPointsCoin_FieldNumber_Channel];
  GPBSetInt32IvarWithFieldInternal(message, field, value, descriptor.file.syntax);
}

#pragma mark - GDAListPointsCoinRequest

@implementation GDAListPointsCoinRequest

@dynamic page;

typedef struct GDAListPointsCoinRequest__storage_ {
  uint32_t _has_storage_[1];
  int32_t page;
} GDAListPointsCoinRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "page",
        .dataTypeSpecific.className = NULL,
        .number = GDAListPointsCoinRequest_FieldNumber_Page,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAListPointsCoinRequest__storage_, page),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeInt32,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAListPointsCoinRequest class]
                                     rootClass:[GDAPromotionPointscoinRoot class]
                                          file:GDAPromotionPointscoinRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAListPointsCoinRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAGetPointsCoinRequest

@implementation GDAGetPointsCoinRequest

@dynamic uuid;

typedef struct GDAGetPointsCoinRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *uuid;
} GDAGetPointsCoinRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "uuid",
        .dataTypeSpecific.className = NULL,
        .number = GDAGetPointsCoinRequest_FieldNumber_Uuid,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAGetPointsCoinRequest__storage_, uuid),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAGetPointsCoinRequest class]
                                     rootClass:[GDAPromotionPointscoinRoot class]
                                          file:GDAPromotionPointscoinRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAGetPointsCoinRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDASearchPointsCoinRequest

@implementation GDASearchPointsCoinRequest

@dynamic mobile;

typedef struct GDASearchPointsCoinRequest__storage_ {
  uint32_t _has_storage_[1];
  NSString *mobile;
} GDASearchPointsCoinRequest__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "mobile",
        .dataTypeSpecific.className = NULL,
        .number = GDASearchPointsCoinRequest_FieldNumber_Mobile,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDASearchPointsCoinRequest__storage_, mobile),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeString,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDASearchPointsCoinRequest class]
                                     rootClass:[GDAPromotionPointscoinRoot class]
                                          file:GDAPromotionPointscoinRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDASearchPointsCoinRequest__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
    NSAssert(descriptor == nil, @"Startup recursed!");
    descriptor = localDescriptor;
  }
  return descriptor;
}

@end

#pragma mark - GDAPointsCoinResponse

@implementation GDAPointsCoinResponse

@dynamic hasStatus, status;
@dynamic hasPointsCoin, pointsCoin;

typedef struct GDAPointsCoinResponse__storage_ {
  uint32_t _has_storage_[1];
  GDAPointsCoin *pointsCoin;
  GDAStatus *status;
} GDAPointsCoinResponse__storage_;

// This method is threadsafe because it is initially called
// in +initialize for each subclass.
+ (GPBDescriptor *)descriptor {
  static GPBDescriptor *descriptor = nil;
  if (!descriptor) {
    static GPBMessageFieldDescription fields[] = {
      {
        .name = "pointsCoin",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAPointsCoin),
        .number = GDAPointsCoinResponse_FieldNumber_PointsCoin,
        .hasIndex = 1,
        .offset = (uint32_t)offsetof(GDAPointsCoinResponse__storage_, pointsCoin),
        .flags = (GPBFieldFlags)(GPBFieldOptional | GPBFieldTextFormatNameCustom),
        .dataType = GPBDataTypeMessage,
      },
      {
        .name = "status",
        .dataTypeSpecific.className = GPBStringifySymbol(GDAStatus),
        .number = GDAPointsCoinResponse_FieldNumber_Status,
        .hasIndex = 0,
        .offset = (uint32_t)offsetof(GDAPointsCoinResponse__storage_, status),
        .flags = GPBFieldOptional,
        .dataType = GPBDataTypeMessage,
      },
    };
    GPBDescriptor *localDescriptor =
        [GPBDescriptor allocDescriptorForClass:[GDAPointsCoinResponse class]
                                     rootClass:[GDAPromotionPointscoinRoot class]
                                          file:GDAPromotionPointscoinRoot_FileDescriptor()
                                        fields:fields
                                    fieldCount:(uint32_t)(sizeof(fields) / sizeof(GPBMessageFieldDescription))
                                   storageSize:sizeof(GDAPointsCoinResponse__storage_)
                                         flags:GPBDescriptorInitializationFlag_None];
#if !GPBOBJC_SKIP_MESSAGE_TEXTFORMAT_EXTRAS
    static const char *extraTextFormatInfo =
        "\001\001\n\000";
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