#import "gedit/user/UserAuth.pbrpc.h"
#import "gedit/user/UserAuth.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation USRATHUserAuthApi

// Designated initializer
- (instancetype)initWithHost:(NSString *)host {
  return (self = [super initWithHost:host packageName:@"gedit.user" serviceName:@"UserAuthApi"]);
}

// Override superclass initializer to disallow different package and service names.
- (instancetype)initWithHost:(NSString *)host
                 packageName:(NSString *)packageName
                 serviceName:(NSString *)serviceName {
  return [self initWithHost:host];
}

+ (instancetype)serviceWithHost:(NSString *)host {
  return [[self alloc] initWithHost:host];
}


#pragma mark SigninQQ(SigninQQRequest) returns (SigninResponse)

/**
 * qq
 */
- (void)signinQQWithRequest:(USRATHSigninQQRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSigninQQWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * qq
 */
- (GRPCProtoCall *)RPCToSigninQQWithRequest:(USRATHSigninQQRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SigninQQ"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRATHSigninResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SigninWechat(SigninWechatRequest) returns (SigninResponse)

/**
 * wechat
 */
- (void)signinWechatWithRequest:(USRATHSigninWechatRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSigninWechatWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * wechat
 */
- (GRPCProtoCall *)RPCToSigninWechatWithRequest:(USRATHSigninWechatRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SigninWechat"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRATHSigninResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SigninWeibo(SigninWeiboRequest) returns (SigninResponse)

/**
 * weibo
 */
- (void)signinWeiboWithRequest:(USRATHSigninWeiboRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSigninWeiboWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * weibo
 */
- (GRPCProtoCall *)RPCToSigninWeiboWithRequest:(USRATHSigninWeiboRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SigninWeibo"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRATHSigninResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SigninWithPassword(SigninWithPasswordRequest) returns (SigninResponse)

/**
 * local
 */
- (void)signinWithPasswordWithRequest:(USRATHSigninWithPasswordRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSigninWithPasswordWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * local
 */
- (GRPCProtoCall *)RPCToSigninWithPasswordWithRequest:(USRATHSigninWithPasswordRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SigninWithPassword"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRATHSigninResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SigninSmsStep1Question(SmsStep1QuestionRequest) returns (SmsStep1QuestionResponse)

/**
 * local
 */
- (void)signinSmsStep1QuestionWithRequest:(USRATHSmsStep1QuestionRequest *)request handler:(void(^)(USRATHSmsStep1QuestionResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSigninSmsStep1QuestionWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * local
 */
- (GRPCProtoCall *)RPCToSigninSmsStep1QuestionWithRequest:(USRATHSmsStep1QuestionRequest *)request handler:(void(^)(USRATHSmsStep1QuestionResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SigninSmsStep1Question"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRATHSmsStep1QuestionResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SigninSmsStep2Answer(SmsStep2AnswerRequest) returns (SmsStep2AnswerResponse)

/**
 * local
 */
- (void)signinSmsStep2AnswerWithRequest:(USRATHSmsStep2AnswerRequest *)request handler:(void(^)(USRATHSmsStep2AnswerResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSigninSmsStep2AnswerWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * local
 */
- (GRPCProtoCall *)RPCToSigninSmsStep2AnswerWithRequest:(USRATHSmsStep2AnswerRequest *)request handler:(void(^)(USRATHSmsStep2AnswerResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SigninSmsStep2Answer"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRATHSmsStep2AnswerResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SigninSmsStep3Signin(SmsStep3SigninRequest) returns (SigninResponse)

/**
 * local
 */
- (void)signinSmsStep3SigninWithRequest:(USRATHSmsStep3SigninRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSigninSmsStep3SigninWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * local
 */
- (GRPCProtoCall *)RPCToSigninSmsStep3SigninWithRequest:(USRATHSmsStep3SigninRequest *)request handler:(void(^)(USRATHSigninResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SigninSmsStep3Signin"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRATHSigninResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RegisterSmsStep1Question(SmsStep1QuestionRequest) returns (SmsStep1QuestionResponse)

/**
 * local
 */
- (void)registerSmsStep1QuestionWithRequest:(USRATHSmsStep1QuestionRequest *)request handler:(void(^)(USRATHSmsStep1QuestionResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRegisterSmsStep1QuestionWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * local
 */
- (GRPCProtoCall *)RPCToRegisterSmsStep1QuestionWithRequest:(USRATHSmsStep1QuestionRequest *)request handler:(void(^)(USRATHSmsStep1QuestionResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RegisterSmsStep1Question"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRATHSmsStep1QuestionResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RegisterSmsStep2Answer(SmsStep2AnswerRequest) returns (SmsStep2AnswerResponse)

/**
 * local
 */
- (void)registerSmsStep2AnswerWithRequest:(USRATHSmsStep2AnswerRequest *)request handler:(void(^)(USRATHSmsStep2AnswerResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRegisterSmsStep2AnswerWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * local
 */
- (GRPCProtoCall *)RPCToRegisterSmsStep2AnswerWithRequest:(USRATHSmsStep2AnswerRequest *)request handler:(void(^)(USRATHSmsStep2AnswerResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RegisterSmsStep2Answer"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRATHSmsStep2AnswerResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RegisterSmsStep3Register(SmsStep3RegisterRequest) returns (RegisterResponse)

/**
 * local
 */
- (void)registerSmsStep3RegisterWithRequest:(USRATHSmsStep3RegisterRequest *)request handler:(void(^)(USRATHRegisterResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRegisterSmsStep3RegisterWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * local
 */
- (GRPCProtoCall *)RPCToRegisterSmsStep3RegisterWithRequest:(USRATHSmsStep3RegisterRequest *)request handler:(void(^)(USRATHRegisterResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RegisterSmsStep3Register"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[USRATHRegisterResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
