//
//  APLogAdditions+MPShareDemo_pod.m
//  MPShareDemo_pod
//
//  Created by quinn on 2020/03/26. All rights reserved.
//

#import "APLogAdditions+MPShareDemo_pod.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

@implementation APLogAdditions (MPShareDemo_pod)

- (NSString*)logServerURL
{
    return @"https://cn-hangzhou-mas-log.cloud.alipay.com/loggw/logUpload.do";
}

- (NSArray*)defaultUploadLogTypes
{
    return @[@(APLogTypeBehavior), @(APLogTypeCrash), @(APLogTypeAuto), @(APLogTypeMonitor), @(APLogTypeKeyBizTrace), @(APLogTypePerformance)];
}

- (NSString *)platformID
{
    return @"570DA89281533_IOS-default";
}

@end

#pragma clang diagnostic pop

