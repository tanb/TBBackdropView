TBBackdropView
==============

With iOS 7, some view components has a blur effect by CAFilter.

In some case, that use an _UIBackdropView's instance.

TBBackdropView is the _UIBackgdropView's wrapper class.

![](http://gifzo.net/b99tdw6f1R.gif "TBBackdropView")

## Usage
```objective-c
TBBackdropView *dropView = [[TBBackdropView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)
                                                    settingsType:TBBackdropViewSettingsBlur];

[self.view addSubview:dropView];
```

## SettingsType
These settings type associated with the following classes:

_UIBackdropViewSettings,
_UIBackdropViewSettingsAdaptiveLight, _UIBackdropViewSettingsBlur, _UIBackdropViewSettingsColorSample,
_UIBackdropViewSettingsColored, _UIBackdropViewSettingsCombiner, _UIBackdropViewSettingsDark,
_UIBackdropViewSettingsDarkLow, _UIBackdropViewSettingsDarkWithZoom, _UIBackdropViewSettingsLight,
_UIBackdropViewSettingsLightLow, _UIBackdropViewSettingsNonAdaptive, _UIBackdropViewSettingsNone,
_UIBackdropViewSettingsSemiLight, _UIBackdropViewSettingsUltraDark, _UIBackdropViewSettingsUltraLight
```
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
```


## License
TBBackdropView is available under the MIT license. See the LICENSE file for more info.
