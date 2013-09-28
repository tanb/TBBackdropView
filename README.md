TBBackdropView
==============

With iOS 7, some view components has a blur effect by CAFilter.

In some case, that use an _UIBackdropView's instance.

TBBackdropView is the _UIBackgdropView's wrapper class.

![](http://gifzo.net/b99tdw6f1R.gif "TBBackdropView")

## Usage
```objective-c
TBBackdropViewSettingsBlur *settingsBlur = [[TBBackdropViewSettingsBlur alloc] initWithDefaultValues];
TBBackdropView *dropView = [[TBBackdropView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)
                                                        settings:settingsBlur];

[self.view addSubview:dropView];
```

## TBBackdropViewSettings classes
TBBackdropViewSettings classes are wrapping each _UIBackdropViewSettings classes.

- TBBackdropViewSettings
- TBBackdropViewSettingsLight
- TBBackdropViewSettingsAdaptiveLight
- TBBackdropViewSettingsBlur
- TBBackdropViewSettingsColored
- TBBackdropViewSettingsColorSample
- TBBackdropViewSettingsCombiner
- TBBackdropViewSettingsDark
- TBBackdropViewSettingsDarkLow
- TBBackdropViewSettingsDarkWithZoom
- TBBackdropViewSettingsLightLow
- TBBackdropViewSettingsNonAdaptive
- TBBackdropViewSettingsNone
- TBBackdropViewSettingsSemiLight
- TBBackdropViewSettingsUltraDark
- TBBackdropViewSettingsUltraLight


## License
TBBackdropView is available under the MIT license. See the LICENSE file for more info.
