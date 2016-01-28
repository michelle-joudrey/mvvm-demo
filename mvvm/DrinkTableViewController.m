//
//  MyTableViewController.m
//  mvvm
//
//  Created by Michelle Joudrey on 1/27/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "DrinkTableViewCell.h"
#import "DrinkTableViewController.h"
#import "EditDrinkViewController.h"
#import "MainViewModel.h"

@implementation DrinkTableViewController
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
  DrinkTableViewCell *c = (DrinkTableViewCell *)cell;
  c.viewModel = [self.viewModel drinkViewModelForIndex:indexPath.row];
  return cell;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  EditDrinkViewController *vc = segue.destinationViewController;
  DrinkTableViewCell *cell = sender;
  vc.viewModel = cell.viewModel;
}
@end
