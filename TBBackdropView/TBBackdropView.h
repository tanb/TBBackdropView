//
//  TBBackdropView.h
//  tanB
//
//  Created by tanB on 9/17/13.
//  Copyright (c) 2013 tanB. All rights reserved.
//

typedef NS_ENUM(NSInteger, TBBackdropViewSettingsType) {
    TBBackdropViewSettings = 0,
    TBBackdropViewSettingsAdaptiveLight = 1,
    TBBackdropViewSettingsBlur = 2,
    TBBackdropViewSettingsColored = 3,
    TBBackdropViewSettingsColorSample = 4,
    TBBackdropViewSettingsCombiner = 5,
    TBBackdropViewSettingsDark = 6,
    TBBackdropViewSettingsDarkLow = 7,
    TBBackdropViewSettingsDarkWithZoom = 8,
    TBBackdropViewSettingsLight = 9,
    TBBackdropViewSettingsLightLow = 10,
    TBBackdropViewSettingsNonAdaptive = 11,
    TBBackdropViewSettingsNone = 12,
    TBBackdropViewSettingsSemiLight = 13,
    TBBackdropViewSettingsUltraDark = 14,
    TBBackdropViewSettingsUltraLight = 15
};


@interface TBBackdropView : UIView {
  @public
    id _backdropView;
}

- (id)initWithFrame:(CGRect)frame settingsType:(TBBackdropViewSettingsType)settingsType;

@end
