//
//  MyTableViewController.h
//  mvvm
//
//  Created by Michelle Joudrey on 1/27/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "MainViewModel.h"
#import <UIKit/UIKit.h>

@interface DrinkTableViewController
    : UITableViewController <UITableViewDataSource, UITableViewDelegate>
@property MainViewModel *viewModel;
@end
