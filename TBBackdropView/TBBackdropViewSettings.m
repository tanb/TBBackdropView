//
//  TBBackdropViewSettings.m
//  TBBackdropViewExample
//
//  Created by tanB on 9/28/13.
//  Copyright (c) 2013 tanB. All rights reserved.
//

#import "TBBackdropViewSettings.h"

@implementation TBBackdropViewSettings

- (id)init
{
    self = [super init];
    if (!self) return nil;

    [self _configureBackdropViewSettings];
    
    return self;
}

- (id)initWithDefaultValues
{
    self = [super init];
    if (!self) return nil;
    
    [self _configureBackdropViewSettingsWithDefaultValues];
    
    return self;
}

- (Class)_wrappingClass
{
    return NSClassFromString(@"_UIBackdropViewSettings");
}

- (void)_configureBackdropViewSettings
{
    Class klass = [self _wrappingClass];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    SEL sel = NSSelectorFromString(@"init");
    _backdropViewSettings = [[klass alloc] performSelector:sel];
#pragma clang diagnostic pop
}

- (void)_configureBackdropViewSettingsWithDefaultValues
{
    Class klass = [self _wrappingClass];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    SEL sel = NSSelectorFromString(@"initWithDefaultValues");
    _backdropViewSettings = [[klass alloc] performSelector:sel];
#pragma clang diagnostic pop
}

@end
