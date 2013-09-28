//
//  TBBackdropView.m
//  tanB
//
//  Created by tanB on 9/17/13.
//  Copyright (c) 2013 tanB. All rights reserved.
//

#import "TBBackdropView.h"
#import "TBBackdropViewSettings.h"
#import "TBBackdropViewSettingsLight.h"
#import "TBBackdropViewSettingsAdaptiveLight.h"
#import "TBBackdropViewSettingsBlur.h"
#import "TBBackdropViewSettingsColored.h"
#import "TBBackdropViewSettingsColorSample.h"
#import "TBBackdropViewSettingsCombiner.h"
#import "TBBackdropViewSettingsDark.h"
#import "TBBackdropViewSettingsDarkLow.h"
#import "TBBackdropViewSettingsDarkWithZoom.h"
#import "TBBackdropViewSettingsLightLow.h"
#import "TBBackdropViewSettingsNonAdaptive.h"
#import "TBBackdropViewSettingsNone.h"
#import "TBBackdropViewSettingsSemiLight.h"
#import "TBBackdropViewSettingsUltraDark.h"
#import "TBBackdropViewSettingsUltraLight.h"


@implementation TBBackdropView

- (id)initWithFrame:(CGRect)frame settings:(TBBackdropViewSettings *)settings
{
    self = [super initWithFrame:frame];
    if (!self) return nil;
    self.backgroundColor = [UIColor clearColor];
    
    Class klass = NSClassFromString(@"_UIBackdropView");
    _backdropView = [klass alloc];
    
    CGRect bounds = self.bounds;
    id backdropViewSettings = settings->_backdropViewSettings;
    
    SEL sel = NSSelectorFromString(@"initWithFrame:settings:");
    NSMethodSignature *msig = [_backdropView methodSignatureForSelector:sel];
    NSInvocation *inv = [NSInvocation invocationWithMethodSignature:msig];
    [inv setSelector:sel];
    [inv setTarget:_backdropView];
    [inv setArgument:&bounds atIndex:2];
    [inv setArgument:&backdropViewSettings atIndex:3];
    [inv invoke];
    
    [self addSubview:_backdropView];

    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    TBBackdropViewSettingsBlur *settings = [[TBBackdropViewSettingsBlur alloc] initWithDefaultValues];
    self = [self initWithFrame:frame settings:settings];
    if (!self) return nil;

    return self;
}

@end
