#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/accounting/AccountingPosting.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDAGetPostingRequest;
  @class GDAListMyPostingRequest;
  @class GDAListPostingRequest;
  @class GDAPostingResponse;
#else
  #import "gedit/Common.pbobjc.h"
  #import "gedit/accounting/AccountingEvent.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAAccountingPostingApi <NSObject>

#pragma mark GetPosting(GetPostingRequest) returns (PostingResponse)

- (void)getPostingWithRequest:(GDAGetPostingRequest *)request handler:(void(^)(GDAPostingResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetPostingWithRequest:(GDAGetPostingRequest *)request handler:(void(^)(GDAPostingResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListPosting(ListPostingRequest) returns (stream PostingResponse)

- (void)listPostingWithRequest:(GDAListPostingRequest *)request eventHandler:(void(^)(BOOL done, GDAPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListPostingWithRequest:(GDAListPostingRequest *)request eventHandler:(void(^)(BOOL done, GDAPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMyPosting(ListMyPostingRequest) returns (stream PostingResponse)

- (void)listMyPostingWithRequest:(GDAListMyPostingRequest *)request eventHandler:(void(^)(BOOL done, GDAPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListMyPostingWithRequest:(GDAListMyPostingRequest *)request eventHandler:(void(^)(BOOL done, GDAPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAAccountingPostingApi : GRPCProtoService<GDAAccountingPostingApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
