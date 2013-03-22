//
//  ETAppDelegate.h
//  LeakExample
//
//  Created by PJ Gray on 3/22/13.
//  Copyright (c) 2013 Say Goodnight Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ETViewController;

@interface ETAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ETViewController *viewController;

@end
