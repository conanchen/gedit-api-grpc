#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/accounting/AccountingEvent.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#else
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol ACCNTAccountingEventApi <NSObject>

@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface ACCNTAccountingEventApi : GRPCProtoService<ACCNTAccountingEventApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
