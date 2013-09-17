//
//  TBBackdropView.h
//  tanB
//
//  Created by tanB on 9/17/13.
//  Copyright (c) 2013 tanB. All rights reserved.
//

typedef NS_ENUM(NSInteger, TBBackdropViewSettingsType) {
    TBBackdropViewSettingsBlur = 0,
    TBBackdropViewSettingsAdaptiveLight = 1,
    TBBackdropViewSettingsColored = 2,
    TBBackdropViewSettingsColorSample = 3,
    TBBackdropViewSettingsDark = 4,
    TBBackdropViewSettingsDarkLow = 5,
    TBBackdropViewSettingsDarkWithZoom = 6,
    TBBackdropViewSettingsLight = 7,
    TBBackdropViewSettingsLightLow = 8,
    TBBackdropViewSettingsNonAdaptive = 9,
    TBBackdropViewSettingsNone = 10,
    TBBackdropViewSettingsSemiLight = 11,
    TBBackdropViewSettingsUltraDark = 12,
    TBBackdropViewSettingsUltraLight = 13
};


@interface TBBackdropView : UIView {
  @public
    id _backdropView;
}

- (id)initWithFrame:(CGRect)frame settingsType:(TBBackdropViewSettingsType)settingsType;

@end
