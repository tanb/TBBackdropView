//
//  TBViewController.m
//  TBBackdropViewExample
//
//  Created by tanB on 9/18/13.
//  Copyright (c) 2013 tanB. All rights reserved.
//

#import "TBViewController.h"
#import "TBTableManager.h"
#import "TBBackdropView.h"
#import "TBBackdropViewSettingsSampleHeaders.h"


@interface TBViewController ()
@property (nonatomic) TBTableManager *tableManager;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end


@implementation TBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableManager = [[TBTableManager alloc] initWithManagedTableView:self.tableView];
    
    [self _configureSampleDropViews];
}


- (void)_configureSampleDropViews
{
    NSArray *settingsSamples =
    @[[[TBBackdropViewSettings alloc] initWithDefaultValues],
      [[TBBackdropViewSettingsLight alloc] initWithDefaultValues],
      [[TBBackdropViewSettingsAdaptiveLight alloc] initWithDefaultValues],
      [[TBBackdropViewSettingsBlur alloc] initWithDefaultValues],
      [[TBBackdropViewSettingsColored alloc] initWithDefaultValues],
      [[TBBackdropViewSettingsColorSample alloc] initWithDefaultValues],
      [[TBBackdropViewSettingsCombiner alloc] initWithDefaultValues],
      [[TBBackdropViewSettingsDark alloc] initWithDefaultValues],
      [[TBBackdropViewSettingsDarkLow alloc] initWithDefaultValues],
      [[TBBackdropViewSettingsDarkWithZoom alloc] initWithDefaultValues],
      [[TBBackdropViewSettingsLightLow alloc] initWithDefaultValues],
      [[TBBackdropViewSettingsNonAdaptive alloc] initWithDefaultValues],
      [[TBBackdropViewSettingsNone alloc] initWithDefaultValues],
      [[TBBackdropViewSettingsSemiLight alloc] initWithDefaultValues],
      [[TBBackdropViewSettingsUltraDark alloc] initWithDefaultValues],
      [[TBBackdropViewSettingsUltraLight alloc] initWithDefaultValues]];
    
    [settingsSamples enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        int x = (idx % 2) ? 160 : 35;
        int y = 60 * (idx/2) + 40;
        TBBackdropView *dropView =
        [[TBBackdropView alloc] initWithFrame:CGRectMake(x, y, 125, 50)
                                     settings:obj];
        dropView.userInteractionEnabled = NO;
        [self.view addSubview:dropView];
    }];
}

@end
