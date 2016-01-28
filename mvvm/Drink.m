//
//  MyModel.m
//  mvvm
//
//  Created by Michelle Joudrey on 1/27/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "Drink.h"

@implementation Drink
- (id)initWithName:(NSString*)name andImageUrl:(NSString*)imageUrl {
    if (self = [super init]) {
        _name = name;
        _imageUrl = imageUrl;
    }
    return self;
}
@end
