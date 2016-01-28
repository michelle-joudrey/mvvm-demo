//
//  MyModelViewModel.m
//  mvvm
//
//  Created by Michelle Joudrey on 1/27/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "DrinkViewModel.h"

@implementation DrinkViewModel
- (DrinkViewModel *)initWithDrink:(Drink *)drink {
  self = [super init];
  if (self) {
    _drink = drink;
    _nameText = drink.name;
    [[NSOperationQueue new] addOperationWithBlock:^{
      NSURL *imageUrl = [NSURL URLWithString:drink.imageUrl];
      NSData *imageData = [NSData dataWithContentsOfURL:imageUrl];
      [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        _image = [UIImage imageWithData:imageData];
      }];
    }];
  }
  return self;
}
@end
