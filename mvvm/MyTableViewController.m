//
//  MyTableViewController.m
//  mvvm
//
//  Created by Michelle Joudrey on 1/27/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "DrinkTableViewCell.h"
#import "MainViewModel.h"
#import "MyTableViewController.h"

@implementation MyTableViewController
- (void)viewDidLoad {
  NSAssert(self.viewModel, nil);
}
- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
  return self.viewModel.drinks.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  UITableViewCell *cell =
      [tableView dequeueReusableCellWithIdentifier:@"MyReuseId"
                                      forIndexPath:indexPath];
  if (!cell) {
    [NSException raise:@"Whoops" format:@""];
  }
  if ([cell isKindOfClass:[DrinkTableViewCell class]]) {
    DrinkTableViewCell *c = (DrinkTableViewCell *)cell;
    c.viewModel = [self.viewModel drinkViewModelForIndex:indexPath.row];
  }
  return cell;
}
@end
