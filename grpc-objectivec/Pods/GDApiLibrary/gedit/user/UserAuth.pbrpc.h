#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/user/UserAuth.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class GDARegisterResponse;
  @class GDASigninQQRequest;
  @class GDASigninResponse;
  @class GDASigninWechatRequest;
  @class GDASigninWeiboRequest;
  @class GDASigninWithPasswordRequest;
  @class GDASmsStep1QuestionRequest;
  @class GDASmsStep1QuestionResponse;
  @class GDASmsStep2AnswerRequest;
  @class GDASmsStep2AnswerResponse;
  @class GDASmsStep3RegisterRequest;
  @class GDASmsStep3SigninRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol GDAUserAuthApi <NSObject>

#pragma mark SigninQQ(SigninQQRequest) returns (SigninResponse)

/**
 * qq
 */
- (void)signinQQWithRequest:(GDASigninQQRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * qq
 */
- (GRPCProtoCall *)RPCToSigninQQWithRequest:(GDASigninQQRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SigninWechat(SigninWechatRequest) returns (SigninResponse)

/**
 * wechat
 */
- (void)signinWechatWithRequest:(GDASigninWechatRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * wechat
 */
- (GRPCProtoCall *)RPCToSigninWechatWithRequest:(GDASigninWechatRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SigninWeibo(SigninWeiboRequest) returns (SigninResponse)

/**
 * weibo
 */
- (void)signinWeiboWithRequest:(GDASigninWeiboRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * weibo
 */
- (GRPCProtoCall *)RPCToSigninWeiboWithRequest:(GDASigninWeiboRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SigninWithPassword(SigninWithPasswordRequest) returns (SigninResponse)

/**
 * local
 */
- (void)signinWithPasswordWithRequest:(GDASigninWithPasswordRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * local
 */
- (GRPCProtoCall *)RPCToSigninWithPasswordWithRequest:(GDASigninWithPasswordRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SigninSmsStep1Question(SmsStep1QuestionRequest) returns (SmsStep1QuestionResponse)

/**
 * local
 */
- (void)signinSmsStep1QuestionWithRequest:(GDASmsStep1QuestionRequest *)request handler:(void(^)(GDASmsStep1QuestionResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * local
 */
- (GRPCProtoCall *)RPCToSigninSmsStep1QuestionWithRequest:(GDASmsStep1QuestionRequest *)request handler:(void(^)(GDASmsStep1QuestionResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SigninSmsStep2Answer(SmsStep2AnswerRequest) returns (SmsStep2AnswerResponse)

/**
 * local
 */
- (void)signinSmsStep2AnswerWithRequest:(GDASmsStep2AnswerRequest *)request handler:(void(^)(GDASmsStep2AnswerResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * local
 */
- (GRPCProtoCall *)RPCToSigninSmsStep2AnswerWithRequest:(GDASmsStep2AnswerRequest *)request handler:(void(^)(GDASmsStep2AnswerResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SigninSmsStep3Signin(SmsStep3SigninRequest) returns (SigninResponse)

/**
 * local
 */
- (void)signinSmsStep3SigninWithRequest:(GDASmsStep3SigninRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * local
 */
- (GRPCProtoCall *)RPCToSigninSmsStep3SigninWithRequest:(GDASmsStep3SigninRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RegisterSmsStep1Question(SmsStep1QuestionRequest) returns (SmsStep1QuestionResponse)

/**
 * local
 */
- (void)registerSmsStep1QuestionWithRequest:(GDASmsStep1QuestionRequest *)request handler:(void(^)(GDASmsStep1QuestionResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * local
 */
- (GRPCProtoCall *)RPCToRegisterSmsStep1QuestionWithRequest:(GDASmsStep1QuestionRequest *)request handler:(void(^)(GDASmsStep1QuestionResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RegisterSmsStep2Answer(SmsStep2AnswerRequest) returns (SmsStep2AnswerResponse)

/**
 * local
 */
- (void)registerSmsStep2AnswerWithRequest:(GDASmsStep2AnswerRequest *)request handler:(void(^)(GDASmsStep2AnswerResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * local
 */
- (GRPCProtoCall *)RPCToRegisterSmsStep2AnswerWithRequest:(GDASmsStep2AnswerRequest *)request handler:(void(^)(GDASmsStep2AnswerResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RegisterSmsStep3Register(SmsStep3RegisterRequest) returns (RegisterResponse)

/**
 * local
 */
- (void)registerSmsStep3RegisterWithRequest:(GDASmsStep3RegisterRequest *)request handler:(void(^)(GDARegisterResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * local
 */
- (GRPCProtoCall *)RPCToRegisterSmsStep3RegisterWithRequest:(GDASmsStep3RegisterRequest *)request handler:(void(^)(GDARegisterResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface GDAUserAuthApi : GRPCProtoService<GDAUserAuthApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
