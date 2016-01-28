//
//  MyModelViewModel.m
//  mvvm
//
//  Created by Michelle Joudrey on 1/27/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "DrinkViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

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
@end
