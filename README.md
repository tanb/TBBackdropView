TBBackdropView
==============

With iOS 7, some view components has a blur effect by CAFilter.

In some case, that use an _UIBackdropView's instance.

TBBackdropView is the _UIBackgdropView's wrapper class.

![](http://gifzo.net/BRnc0bQg3i8.gif "TBBackdropView")

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
```


## License
TBBackdropView is available under the MIT license. See the LICENSE file for more info.
