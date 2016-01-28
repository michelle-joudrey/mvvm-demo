//
//  DrinkTableViewCell.m
//  mvvm
//
//  Created by Michelle Joudrey on 1/27/16.
//  Copyright © 2016 com. All rights reserved.
//

#import "DrinkTableViewCell.h"
#import "DrinkViewModel.h"

@interface DrinkTableViewCell ()
@property IBOutlet UIImageView *imageImageView;
@property IBOutlet UILabel *nameLabel;
@end

@implementation DrinkTableViewCell
- (void)layoutSubviews {
  NSAssert(self.viewModel, nil);
  self.imageImageView.image = self.viewModel.image;
  self.nameLabel.text = self.viewModel.nameText;
}
@end
