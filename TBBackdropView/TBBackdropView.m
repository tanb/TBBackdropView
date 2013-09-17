//
//  TBBackdropView.m
//  tanB
//
//  Created by tanB on 9/17/13.
//  Copyright (c) 2013 tanB. All rights reserved.
//

#import "TBBackdropView.h"

@implementation TBBackdropView

- (id)initWithFrame:(CGRect)frame settingsType:(TBBackdropViewSettingsType)settingsType
{
    self = [super initWithFrame:frame];
    if (!self) return nil;
    self.backgroundColor = [UIColor clearColor];
    
    Class klass = NSClassFromString(@"_UIBackdropView");
    _backdropView = [klass alloc];
    
    CGRect bounds = self.bounds;
    id settings = [self _generateBackdropViewSettingsForSettingsType:settingsType];
    
    SEL sel = NSSelectorFromString(@"initWithFrame:settings:");
    NSMethodSignature *msig = [_backdropView methodSignatureForSelector:sel];
    NSInvocation *inv = [NSInvocation invocationWithMethodSignature:msig];
    [inv setSelector:sel];
    [inv setTarget:_backdropView];
    [inv setArgument:&bounds atIndex:2];
    [inv setArgument:&settings atIndex:3];
    [inv invoke];
    
    [self addSubview:_backdropView];

    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [self initWithFrame:frame settingsType:TBBackdropViewSettingsBlur];
    if (!self) return nil;

    return self;
}


- (id)_generateBackdropViewSettingsForSettingsType:(TBBackdropViewSettingsType)settings
{
    id backdropViewSettings = nil;
    switch (settings) {
        case TBBackdropViewSettings:{
            Class klass = NSClassFromString(@"_UIBackdropViewSettings");
            backdropViewSettings = [klass new];
        }
            break;
        case TBBackdropViewSettingsAdaptiveLight:{
            Class klass = NSClassFromString(@"_UIBackdropViewSettingsAdaptiveLight");
            backdropViewSettings = [klass new];
        }
            break;
        case TBBackdropViewSettingsBlur:{
            Class klass = NSClassFromString(@"_UIBackdropViewSettingsUltraDark");
            backdropViewSettings = [klass new];
        }
            break;
        case TBBackdropViewSettingsCombiner:{
            Class klass = NSClassFromString(@"_UIBackdropViewSettingsCombiner");
            backdropViewSettings = [klass new];
        }
            break;
        case TBBackdropViewSettingsColored:{
            Class klass = NSClassFromString(@"_UIBackdropViewSettingsColored");
            backdropViewSettings = [klass new];
        }
            break;
        case TBBackdropViewSettingsColorSample:{
            Class klass = NSClassFromString(@"_UIBackdropViewSettingsColorSample");
            backdropViewSettings = [klass new];
        }
            break;
        case TBBackdropViewSettingsDark:{
            Class klass = NSClassFromString(@"_UIBackdropViewSettingsDark");
            backdropViewSettings = [klass new];
        }
            break;
        case TBBackdropViewSettingsDarkLow:{
            Class klass = NSClassFromString(@"_UIBackdropViewSettingsDarkLow");
            backdropViewSettings = [klass new];
        }
            break;
        case TBBackdropViewSettingsDarkWithZoom:{
            Class klass = NSClassFromString(@"_UIBackdropViewSettingsDarkWithZoom");
            backdropViewSettings = [klass new];
        }
            break;
        case TBBackdropViewSettingsLight:{
            Class klass = NSClassFromString(@"_UIBackdropViewSettingsLight");
            backdropViewSettings = [klass new];
        }
            break;
        case TBBackdropViewSettingsLightLow:{
            Class klass = NSClassFromString(@"_UIBackdropViewSettingsLightLow");
            backdropViewSettings = [klass new];
        }
            break;
        case TBBackdropViewSettingsNonAdaptive:{
            Class klass = NSClassFromString(@"_UIBackdropViewSettingsNonAdaptive");
            backdropViewSettings = [klass new];
        }
            break;
        case TBBackdropViewSettingsNone:{
            Class klass = NSClassFromString(@"_UIBackdropViewSettingsNone");
            backdropViewSettings = [klass new];
        }
            break;
        case TBBackdropViewSettingsSemiLight:{
            Class klass = NSClassFromString(@"_UIBackdropViewSettingsSemiLight");
            backdropViewSettings = [klass new];
        }
            break;
        case TBBackdropViewSettingsUltraDark:{
            Class klass = NSClassFromString(@"_UIBackdropViewSettingsUltraDark");
            backdropViewSettings = [klass new];
        }
            break;
        case TBBackdropViewSettingsUltraLight:{
            Class klass = NSClassFromString(@"_UIBackdropViewSettingsUltraLight");
            backdropViewSettings = [klass new];
        }
            break;
            
        default:
            break;
    }
    
    return backdropViewSettings;
}

@end
