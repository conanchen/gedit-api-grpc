#import "gedit/user/UserAuth.pbrpc.h"
#import "gedit/user/UserAuth.pbobjc.h"

#import <ProtoRPC/ProtoRPC.h>
#import <RxLibrary/GRXWriter+Immediate.h>
#import "gedit/Common.pbobjc.h"

@implementation GDAUserAuthApi

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
- (void)signinQQWithRequest:(GDASigninQQRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSigninQQWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * qq
 */
- (GRPCProtoCall *)RPCToSigninQQWithRequest:(GDASigninQQRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SigninQQ"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDASigninResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SigninWechat(SigninWechatRequest) returns (SigninResponse)

/**
 * wechat
 */
- (void)signinWechatWithRequest:(GDASigninWechatRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSigninWechatWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * wechat
 */
- (GRPCProtoCall *)RPCToSigninWechatWithRequest:(GDASigninWechatRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SigninWechat"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDASigninResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SigninWeibo(SigninWeiboRequest) returns (SigninResponse)

/**
 * weibo
 */
- (void)signinWeiboWithRequest:(GDASigninWeiboRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSigninWeiboWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * weibo
 */
- (GRPCProtoCall *)RPCToSigninWeiboWithRequest:(GDASigninWeiboRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SigninWeibo"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDASigninResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SigninWithPassword(SigninWithPasswordRequest) returns (SigninResponse)

/**
 * local
 */
- (void)signinWithPasswordWithRequest:(GDASigninWithPasswordRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSigninWithPasswordWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * local
 */
- (GRPCProtoCall *)RPCToSigninWithPasswordWithRequest:(GDASigninWithPasswordRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SigninWithPassword"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDASigninResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SigninSmsStep1Question(SmsStep1QuestionRequest) returns (SmsStep1QuestionResponse)

/**
 * local
 */
- (void)signinSmsStep1QuestionWithRequest:(GDASmsStep1QuestionRequest *)request handler:(void(^)(GDASmsStep1QuestionResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSigninSmsStep1QuestionWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * local
 */
- (GRPCProtoCall *)RPCToSigninSmsStep1QuestionWithRequest:(GDASmsStep1QuestionRequest *)request handler:(void(^)(GDASmsStep1QuestionResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SigninSmsStep1Question"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDASmsStep1QuestionResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SigninSmsStep2Answer(SmsStep2AnswerRequest) returns (SmsStep2AnswerResponse)

/**
 * local
 */
- (void)signinSmsStep2AnswerWithRequest:(GDASmsStep2AnswerRequest *)request handler:(void(^)(GDASmsStep2AnswerResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSigninSmsStep2AnswerWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * local
 */
- (GRPCProtoCall *)RPCToSigninSmsStep2AnswerWithRequest:(GDASmsStep2AnswerRequest *)request handler:(void(^)(GDASmsStep2AnswerResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SigninSmsStep2Answer"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDASmsStep2AnswerResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark SigninSmsStep3Signin(SmsStep3SigninRequest) returns (SigninResponse)

/**
 * local
 */
- (void)signinSmsStep3SigninWithRequest:(GDASmsStep3SigninRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToSigninSmsStep3SigninWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * local
 */
- (GRPCProtoCall *)RPCToSigninSmsStep3SigninWithRequest:(GDASmsStep3SigninRequest *)request handler:(void(^)(GDASigninResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"SigninSmsStep3Signin"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDASigninResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RegisterSmsStep1Question(SmsStep1QuestionRequest) returns (SmsStep1QuestionResponse)

/**
 * local
 */
- (void)registerSmsStep1QuestionWithRequest:(GDASmsStep1QuestionRequest *)request handler:(void(^)(GDASmsStep1QuestionResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRegisterSmsStep1QuestionWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * local
 */
- (GRPCProtoCall *)RPCToRegisterSmsStep1QuestionWithRequest:(GDASmsStep1QuestionRequest *)request handler:(void(^)(GDASmsStep1QuestionResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RegisterSmsStep1Question"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDASmsStep1QuestionResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RegisterSmsStep2Answer(SmsStep2AnswerRequest) returns (SmsStep2AnswerResponse)

/**
 * local
 */
- (void)registerSmsStep2AnswerWithRequest:(GDASmsStep2AnswerRequest *)request handler:(void(^)(GDASmsStep2AnswerResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRegisterSmsStep2AnswerWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * local
 */
- (GRPCProtoCall *)RPCToRegisterSmsStep2AnswerWithRequest:(GDASmsStep2AnswerRequest *)request handler:(void(^)(GDASmsStep2AnswerResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RegisterSmsStep2Answer"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDASmsStep2AnswerResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
#pragma mark RegisterSmsStep3Register(SmsStep3RegisterRequest) returns (RegisterResponse)

/**
 * local
 */
- (void)registerSmsStep3RegisterWithRequest:(GDASmsStep3RegisterRequest *)request handler:(void(^)(GDARegisterResponse *_Nullable response, NSError *_Nullable error))handler{
  [[self RPCToRegisterSmsStep3RegisterWithRequest:request handler:handler] start];
}
// Returns a not-yet-started RPC object.
/**
 * local
 */
- (GRPCProtoCall *)RPCToRegisterSmsStep3RegisterWithRequest:(GDASmsStep3RegisterRequest *)request handler:(void(^)(GDARegisterResponse *_Nullable response, NSError *_Nullable error))handler{
  return [self RPCToMethod:@"RegisterSmsStep3Register"
            requestsWriter:[GRXWriter writerWithValue:request]
             responseClass:[GDARegisterResponse class]
        responsesWriteable:[GRXWriteable writeableWithSingleHandler:handler]];
}
@end
