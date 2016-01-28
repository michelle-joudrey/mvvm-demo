//
//  MyModel.h
//  mvvm
//
//  Created by Michelle Joudrey on 1/27/16.
//  Copyright © 2016 com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Drink : NSObject
@property(readonly) NSString *name;
@property(readonly) NSString *imageUrl;
- (id)initWithName:(NSString*)name andImageUrl:(NSString*)imageUrl;
@end
