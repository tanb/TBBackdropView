//
//  TBTableManager.m
//  TBBackdropViewExample
//
//  Created by tanB on 9/18/13.
//  Copyright (c) 2013 tanB. All rights reserved.
//

#import "TBTableManager.h"

NSString * const kDefaultCellIdentifier = @"defaultCellIdentifier";

@implementation TBTableManager

- (id)initWithManagedTableView:(UITableView *)tableView
{
    self = [super init];
    if (!self) return nil;

    tableView.dataSource = self;
    [tableView registerClass:[UITableViewCell class]
      forCellReuseIdentifier:kDefaultCellIdentifier];

    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 99999;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell =
    [tableView dequeueReusableCellWithIdentifier:kDefaultCellIdentifier
                                    forIndexPath:indexPath];

    cell.textLabel.text = @"🍪🍪🍪🍪🍪🍪🍪🍪🍪🍪🍪🍪";
    cell.textLabel.textAlignment = NSTextAlignmentCenter;
    return cell;
}

@end
