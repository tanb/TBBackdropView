//
//  TBBackdropView.h
//  tanB
//
//  Created by tanB on 9/17/13.
//  Copyright (c) 2013 tanB. All rights reserved.
//

@class TBBackdropViewSettings;

@interface TBBackdropView : UIView {
  @public
    id _backdropView;
}

- (id)initWithFrame:(CGRect)frame settings:(TBBackdropViewSettings *)settings;

@end
