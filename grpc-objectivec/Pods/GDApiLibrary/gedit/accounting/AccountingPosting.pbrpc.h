#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/accounting/AccountingPosting.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class ACCNTGetPostingRequest;
  @class ACCNTListMyPostingRequest;
  @class ACCNTListPostingRequest;
  @class ACCNTPostingResponse;
#else
  #import "gedit/Common.pbobjc.h"
  #import "gedit/accounting/AccountingEvent.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol ACCNTAccountingPostingApi <NSObject>

#pragma mark GetPosting(GetPostingRequest) returns (PostingResponse)

- (void)getPostingWithRequest:(ACCNTGetPostingRequest *)request handler:(void(^)(ACCNTPostingResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToGetPostingWithRequest:(ACCNTGetPostingRequest *)request handler:(void(^)(ACCNTPostingResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark ListPosting(ListPostingRequest) returns (stream PostingResponse)

- (void)listPostingWithRequest:(ACCNTListPostingRequest *)request eventHandler:(void(^)(BOOL done, ACCNTPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListPostingWithRequest:(ACCNTListPostingRequest *)request eventHandler:(void(^)(BOOL done, ACCNTPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler;


#pragma mark ListMyPosting(ListMyPostingRequest) returns (stream PostingResponse)

- (void)listMyPostingWithRequest:(ACCNTListMyPostingRequest *)request eventHandler:(void(^)(BOOL done, ACCNTPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler;

- (GRPCProtoCall *)RPCToListMyPostingWithRequest:(ACCNTListMyPostingRequest *)request eventHandler:(void(^)(BOOL done, ACCNTPostingResponse *_Nullable response, NSError *_Nullable error))eventHandler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface ACCNTAccountingPostingApi : GRPCProtoService<ACCNTAccountingPostingApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
