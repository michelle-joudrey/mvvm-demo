//
//  ViewController.m
//  mvvm
//
//  Created by Michelle Joudrey on 1/27/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "MainViewController.h"
#import "MyTableViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  NSAssert(self.viewModel, nil);
  if ([segue.destinationViewController
          isKindOfClass:[MyTableViewController class]]) {
    MyTableViewController *vc = segue.destinationViewController;
    vc.viewModel = self.viewModel;
  }
}

@end
