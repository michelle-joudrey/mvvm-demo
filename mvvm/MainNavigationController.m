//
//  MainNavigationController.m
//  mvvm
//
//  Created by Michelle Joudrey on 1/27/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "MainNavigationController.h"
#import "MainViewController.h"

@implementation MainNavigationController
- (void)viewDidLoad {
  if ([self.topViewController isKindOfClass:[MainViewController class]]) {
    MainViewController *vc = (MainViewController *)self.topViewController;
    vc.viewModel = self.viewModel;
  }
}
@end
