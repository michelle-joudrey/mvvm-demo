//
//  DrinkTableViewCell.m
//  mvvm
//
//  Created by Michelle Joudrey on 1/27/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "DrinkTableViewCell.h"
#import "DrinkViewModel.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@interface DrinkTableViewCell ()
@property IBOutlet UIImageView *imageImageView;
@property IBOutlet UILabel *nameLabel;
@end

@implementation DrinkTableViewCell
- (void)setViewModel:(DrinkViewModel *)viewModel {
  _viewModel = viewModel;
  NSAssert(viewModel, nil);
  NSAssert(self.nameLabel, nil);
  NSAssert(self.imageImageView, nil);
  RAC(self.nameLabel, text) = RACObserve(self, viewModel.nameText);
  RAC(self.imageImageView, image) = RACObserve(self, viewModel.image);
  self.nameLabel.text = self.viewModel.nameText;
}
@end
