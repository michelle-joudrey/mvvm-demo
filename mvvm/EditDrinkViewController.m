//
//  EditDrinkViewController.m
//  mvvm
//
//  Created by Michelle Joudrey on 1/28/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "DrinkViewModel.h"
#import "EditDrinkViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface EditDrinkViewController ()
@property IBOutlet UITextField *drinkNameTextField;
@property IBOutlet UIBarButtonItem *saveButton;
@end

@implementation EditDrinkViewController
- (void)viewDidLoad {
  NSAssert(self.viewModel, nil);
  RAC(self.drinkNameTextField, text) = RACObserve(self, viewModel.nameText);
  RAC(self.saveButton, enabled) =
      [self.drinkNameTextField.rac_textSignal map:^id(NSString *value) {
        return @([self.viewModel validateNameText:value]);
      }];
}
- (IBAction)saveDrink:(id)sender {
  [self.viewModel editNameText:self.drinkNameTextField.text];
  [self.navigationController popViewControllerAnimated:YES];
}
@end
