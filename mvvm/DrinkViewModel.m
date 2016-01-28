//
//  MyModelViewModel.m
//  mvvm
//
//  Created by Michelle Joudrey on 1/27/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "Drink.h"
#import "DrinkViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface DrinkViewModel ()
@property Drink *drink;
@end

@implementation DrinkViewModel
- (DrinkViewModel *)initWithDrink:(Drink *)drink {
  self = [super init];
  if (self) {
    _drink = drink;
    _nameText = drink.name;
    RAC(self, nameText) = RACObserve(drink, name);
    NSURLRequest *request =
        [NSURLRequest requestWithURL:[NSURL URLWithString:drink.imageUrl]];
    RAC(self, image) = [[[NSURLConnection rac_sendAsynchronousRequest:request]
        reduceEach:^id(NSURLResponse *response, NSData *data) {
          return [[UIImage alloc] initWithData:data];
        }] deliverOn:[RACScheduler mainThreadScheduler]];
  }
  return self;
}
- (BOOL)validateNameText:(NSString *)nameText {
  return nameText.length > 0;
}
- (void)editNameText:(NSString *)nameText {
  self.drink.name = nameText;
}
@end
