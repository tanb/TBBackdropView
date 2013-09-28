//
//  TBBackdropView.h
//  tanB
//
//  Created by tanB on 9/17/13.
//  Copyright (c) 2013 tanB. All rights reserved.
//


typedef NS_ENUM(NSInteger, TBBackdropViewSettingsType) {
    TBBackdropViewSettingsTypeDefault = 0,
    TBBackdropViewSettingsTypeAdaptiveLight,
    TBBackdropViewSettingsTypeBlur,
    TBBackdropViewSettingsTypeColored,
    TBBackdropViewSettingsTypeColorSample,
    TBBackdropViewSettingsTypeCombiner,
    TBBackdropViewSettingsTypeDark,
    TBBackdropViewSettingsTypeDarkLow,
    TBBackdropViewSettingsTypeDarkWithZoom,
    TBBackdropViewSettingsTypeLight,
    TBBackdropViewSettingsTypeLightLow,
    TBBackdropViewSettingsTypeNonAdaptive,
    TBBackdropViewSettingsTypeNone,
    TBBackdropViewSettingsTypeSemiLight,
    TBBackdropViewSettingsTypeUltraDark,
    TBBackdropViewSettingsTypeUltraLight
};


@interface TBBackdropView : UIView {
  @public
    id _backdropView;
}

- (id)initWithFrame:(CGRect)frame settingsType:(TBBackdropViewSettingsType)settingsType;

@end
