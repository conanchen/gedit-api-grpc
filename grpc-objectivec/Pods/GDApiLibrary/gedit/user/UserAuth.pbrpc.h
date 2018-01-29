#if !GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
#import "gedit/user/UserAuth.pbobjc.h"
#endif

#import <ProtoRPC/ProtoService.h>
#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>

#if GPB_GRPC_FORWARD_DECLARE_MESSAGE_PROTO
  @class USRATHRegisterResponse;
  @class USRATHSigninQQRequest;
  @class USRATHSigninResponse;
  @class USRATHSigninWechatRequest;
  @class USRATHSigninWeiboRequest;
  @class USRATHSigninWithPasswordRequest;
  @class USRATHSmsStep1QuestionRequest;
  @class USRATHSmsStep1QuestionResponse;
  @class USRATHSmsStep2AnswerRequest;
  @class USRATHSmsStep2AnswerResponse;
  @class USRATHSmsStep3RegisterRequest;
  @class USRATHSmsStep3SigninRequest;
#else
  #import "gedit/Common.pbobjc.h"
#endif


NS_ASSUME_NONNULL_BEGIN

@protocol USRATHUserAuthApi <NSObject>

#pragma mark SigninQQ(SigninQQRequest) returns (SigninResponse)

/**
 * qq
 */
- (void)signinQQWithRequest:(USRATHSigninQQRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * qq
 */
- (GRPCProtoCall *)RPCToSigninQQWithRequest:(USRATHSigninQQRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SigninWechat(SigninWechatRequest) returns (SigninResponse)

/**
 * wechat
 */
- (void)signinWechatWithRequest:(USRATHSigninWechatRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * wechat
 */
- (GRPCProtoCall *)RPCToSigninWechatWithRequest:(USRATHSigninWechatRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SigninWeibo(SigninWeiboRequest) returns (SigninResponse)

/**
 * weibo
 */
- (void)signinWeiboWithRequest:(USRATHSigninWeiboRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * weibo
 */
- (GRPCProtoCall *)RPCToSigninWeiboWithRequest:(USRATHSigninWeiboRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SigninWithPassword(SigninWithPasswordRequest) returns (SigninResponse)

/**
 * local
 */
- (void)signinWithPasswordWithRequest:(USRATHSigninWithPasswordRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * local
 */
- (GRPCProtoCall *)RPCToSigninWithPasswordWithRequest:(USRATHSigninWithPasswordRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SigninSmsStep1Question(SmsStep1QuestionRequest) returns (SmsStep1QuestionResponse)

/**
 * local
 */
- (void)signinSmsStep1QuestionWithRequest:(USRATHSmsStep1QuestionRequest *)request handler:(void(^)(USRATHSmsStep1QuestionResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * local
 */
- (GRPCProtoCall *)RPCToSigninSmsStep1QuestionWithRequest:(USRATHSmsStep1QuestionRequest *)request handler:(void(^)(USRATHSmsStep1QuestionResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SigninSmsStep2Answer(SmsStep2AnswerRequest) returns (SmsStep2AnswerResponse)

/**
 * local
 */
- (void)signinSmsStep2AnswerWithRequest:(USRATHSmsStep2AnswerRequest *)request handler:(void(^)(USRATHSmsStep2AnswerResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * local
 */
- (GRPCProtoCall *)RPCToSigninSmsStep2AnswerWithRequest:(USRATHSmsStep2AnswerRequest *)request handler:(void(^)(USRATHSmsStep2AnswerResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark SigninSmsStep3Signin(SmsStep3SigninRequest) returns (SigninResponse)

/**
 * local
 */
- (void)signinSmsStep3SigninWithRequest:(USRATHSmsStep3SigninRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * local
 */
- (GRPCProtoCall *)RPCToSigninSmsStep3SigninWithRequest:(USRATHSmsStep3SigninRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RegisterSmsStep1Question(SmsStep1QuestionRequest) returns (SmsStep1QuestionResponse)

/**
 * local
 */
- (void)registerSmsStep1QuestionWithRequest:(USRATHSmsStep1QuestionRequest *)request handler:(void(^)(USRATHSmsStep1QuestionResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * local
 */
- (GRPCProtoCall *)RPCToRegisterSmsStep1QuestionWithRequest:(USRATHSmsStep1QuestionRequest *)request handler:(void(^)(USRATHSmsStep1QuestionResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RegisterSmsStep2Answer(SmsStep2AnswerRequest) returns (SmsStep2AnswerResponse)

/**
 * local
 */
- (void)registerSmsStep2AnswerWithRequest:(USRATHSmsStep2AnswerRequest *)request handler:(void(^)(USRATHSmsStep2AnswerResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * local
 */
- (GRPCProtoCall *)RPCToRegisterSmsStep2AnswerWithRequest:(USRATHSmsStep2AnswerRequest *)request handler:(void(^)(USRATHSmsStep2AnswerResponse *_Nullable response, NSError *_Nullable error))handler;


#pragma mark RegisterSmsStep3Register(SmsStep3RegisterRequest) returns (RegisterResponse)

/**
 * local
 */
- (void)registerSmsStep3RegisterWithRequest:(USRATHSmsStep3RegisterRequest *)request handler:(void(^)(USRATHRegisterResponse *_Nullable response, NSError *_Nullable error))handler;

/**
 * local
 */
- (GRPCProtoCall *)RPCToRegisterSmsStep3RegisterWithRequest:(USRATHSmsStep3RegisterRequest *)request handler:(void(^)(USRATHRegisterResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface USRATHUserAuthApi : GRPCProtoService<USRATHUserAuthApi>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
