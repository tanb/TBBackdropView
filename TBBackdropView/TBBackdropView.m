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

- (id)initWithFrame:(CGRect)frame settingsType:(TBBackdropViewSettingsType)settingsType
{
    self = [super initWithFrame:frame];
    if (!self) return nil;
    self.backgroundColor = [UIColor clearColor];

    Class klass = NSClassFromString(@"_UIBackdropView");
    _backdropView = [klass alloc];
    
    CGRect bounds = self.bounds;
    TBBackdropViewSettings *settings = [self _generateBackdropViewSettingsForSettingsType:settingsType];
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
    self = [self initWithFrame:frame settingsType:TBBackdropViewSettingsTypeBlur];
    if (!self) return nil;

    return self;
}


- (id)_generateBackdropViewSettingsForSettingsType:(TBBackdropViewSettingsType)settings
{
    id backdropViewSettings = nil;
    switch (settings) {
        case TBBackdropViewSettingsTypeDefault:{
            backdropViewSettings =
            [[TBBackdropViewSettings alloc] initWithDefaultValues];
        }
            break;
        case TBBackdropViewSettingsTypeAdaptiveLight:{
            backdropViewSettings =
            [[TBBackdropViewSettingsAdaptiveLight alloc] initWithDefaultValues];
        }
            break;
        case TBBackdropViewSettingsTypeBlur:{
            backdropViewSettings =
            [[TBBackdropViewSettingsBlur alloc] initWithDefaultValues];
        }
            break;
        case TBBackdropViewSettingsTypeCombiner:{
            backdropViewSettings =
            [[TBBackdropViewSettingsCombiner alloc] initWithDefaultValues];
        }
            break;
        case TBBackdropViewSettingsTypeColored:{
            backdropViewSettings =
            [[TBBackdropViewSettingsColored alloc] initWithDefaultValues];
        }
            break;
        case TBBackdropViewSettingsTypeColorSample:{
            backdropViewSettings =
            [[TBBackdropViewSettingsColorSample alloc] initWithDefaultValues];
        }
            break;
        case TBBackdropViewSettingsTypeDark:{
            backdropViewSettings =
            [[TBBackdropViewSettingsDark alloc] initWithDefaultValues];
        }
            break;
        case TBBackdropViewSettingsTypeDarkLow:{
            backdropViewSettings =
            [[TBBackdropViewSettingsDarkLow alloc] initWithDefaultValues];
        }
            break;
        case TBBackdropViewSettingsTypeDarkWithZoom:{
            backdropViewSettings =
            [[TBBackdropViewSettingsDarkWithZoom alloc] initWithDefaultValues];
        }
            break;
        case TBBackdropViewSettingsTypeLight:{
            backdropViewSettings =
            [[TBBackdropViewSettingsLight alloc] initWithDefaultValues];
        }
            break;
        case TBBackdropViewSettingsTypeLightLow:{
            backdropViewSettings =
            [[TBBackdropViewSettingsLightLow alloc] initWithDefaultValues];
        }
            break;
        case TBBackdropViewSettingsTypeNonAdaptive:{
            backdropViewSettings =
            [[TBBackdropViewSettingsNonAdaptive alloc] initWithDefaultValues];
        }
            break;
        case TBBackdropViewSettingsTypeNone:{
            backdropViewSettings =
            [[TBBackdropViewSettingsNone alloc] initWithDefaultValues];
        }
            break;
        case TBBackdropViewSettingsTypeSemiLight:{
            backdropViewSettings =
            [[TBBackdropViewSettingsSemiLight alloc] initWithDefaultValues];
        }
            break;
        case TBBackdropViewSettingsTypeUltraDark:{
            backdropViewSettings =
            [[TBBackdropViewSettingsUltraDark alloc] initWithDefaultValues];
        }
            break;
        case TBBackdropViewSettingsTypeUltraLight:{
            backdropViewSettings =
            [[TBBackdropViewSettingsUltraLight alloc] initWithDefaultValues];
        }
            break;
            
        default:
            break;
    }
    
    return backdropViewSettings;
}

@end
