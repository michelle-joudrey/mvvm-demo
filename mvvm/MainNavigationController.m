//
//  MainNavigationController.m
//  mvvm
//
//  Created by Michelle Joudrey on 1/27/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "DrinkTableViewController.h"
#import "MainNavigationController.h"

@implementation MainNavigationController
- (void)viewDidLoad {
  DrinkTableViewController *vc =
      (DrinkTableViewController *)self.topViewController;
  vc.viewModel = self.viewModel;
}
@end
