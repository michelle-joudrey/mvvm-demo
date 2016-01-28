//
//  MainViewModel.h
//  mvvm
//
//  Created by Michelle Joudrey on 1/27/16.
//  Copyright © 2016 com. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DrinkViewModel;
@interface MainViewModel : NSObject
- (id)initWithDrinks:(NSArray *)drinks;
@property NSArray *drinks;
- (DrinkViewModel *)drinkViewModelForIndex:(NSUInteger)index;
+ (id)newDemoInstance;
@end
