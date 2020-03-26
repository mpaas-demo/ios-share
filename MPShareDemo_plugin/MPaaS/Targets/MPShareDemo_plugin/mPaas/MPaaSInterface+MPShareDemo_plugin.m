//
//  MPaaSInterface+MPShareDemo_plugin.m
//  MPShareDemo_plugin
//
//  Created by shifei.wkp on 2019/08/07.
//  Copyright © 2019 Alibaba. All rights reserved.
//

#import "MPaaSInterface+MPShareDemo_plugin.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

@implementation MPaaSInterface (MPShareDemo_plugin)

- (BOOL)enableSettingService
{
    return NO;
}

- (NSString *)userId
{
    return nil;
}

@end

#pragma clang diagnostic pop
