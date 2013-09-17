//
//  TBTableManager.h
//  TBBackdropViewExample
//
//  Created by tanB on 9/18/13.
//  Copyright (c) 2013 tanB. All rights reserved.
//


extern NSString * const kDefaultCellIdentifier;

@interface TBTableManager : NSObject <UITableViewDataSource>
- (id)initWithManagedTableView:(UITableView *)tableView;

@end
