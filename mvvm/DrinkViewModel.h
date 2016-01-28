//
//  MyModelViewModel.h
//  mvvm
//
//  Created by Michelle Joudrey on 1/27/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "Drink.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DrinkViewModel : NSObject
- (DrinkViewModel *)initWithDrink:(Drink *)model;
@property(readonly) NSString *nameText;
@property(readonly) UIImage *image;
@property(readonly) Drink *drink;
@end
