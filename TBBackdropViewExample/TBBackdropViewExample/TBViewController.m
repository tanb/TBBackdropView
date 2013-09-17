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

@interface TBViewController ()
@property (nonatomic) TBTableManager *tableManager;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation TBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tableManager = [[TBTableManager alloc] initWithManagedTableView:self.tableView];
}


- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    for (int i = 0; i < 14; i++) {
        int x = (i % 2) ? 160 : 35;
        int y = 60 * (i/2) + 80;
        TBBackdropView *dropView =
        [[TBBackdropView alloc] initWithFrame:CGRectMake(x, y, 125, 50)
                                 settingsType:i];
        dropView.userInteractionEnabled = NO;
        [self.view addSubview:dropView];
    }
}

@end
