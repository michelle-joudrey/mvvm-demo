//
//  MainViewModel.m
//  mvvm
//
//  Created by Michelle Joudrey on 1/27/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "Drink.h"
#import "DrinkViewModel.h"
#import "MainViewModel.h"

@implementation MainViewModel
+ (id)newDemoInstance {
  return [[MainViewModel alloc] initWithDrinks:@[
    [[Drink alloc]
        initWithName:@"Coke"
         andImageUrl:@"http://previewcf.turbosquid.com/Preview/2014/07/"
                     @"07__03_30_54/"
                     @"Soda_Can_C01_Shad_01.pngda07ed77-ca2d-4b45-a0e4-"
                     @"964bdf570c36Large.jpg"],
    [[Drink alloc]
        initWithName:@"Pepsi"
         andImageUrl:@"http://aviconas.com/wp-content/uploads/2015/08/"
                     @"2059-Pepsi-330ml-Can-600x600.jpg"],
    [[Drink alloc]
        initWithName:@"Dr. Pepper"
         andImageUrl:@"https://taldepot.com/media/catalog/product/cache/1/"
                     @"image/600x/9df78eab33525d08d6e5fb8d27136e95/D/r/"
                     @"Drpepper-2-2.jpg"],
    [[Drink alloc] initWithName:@"Sprite"
                    andImageUrl:@"http://www.mezincashandcarry.com/wp-content/"
                                @"uploads/2015/05/sprite.jpg"],
  ]];
}
- (id)initWithDrinks:(NSArray *)drinks {
  if (self = [super init]) {
    _drinks = drinks;
  }
  return self;
}
- (DrinkViewModel *)drinkViewModelForIndex:(NSUInteger)index {
  return [[DrinkViewModel alloc] initWithDrink:self.drinks[index]];
}
@end
