//
//  CommentCell.m
//  Test App
//
//  Created by Lenin S on 04/07/20.
//  Copyright © 2020 lenin. All rights reserved.
//

#import "CommentCell.h"

@implementation CommentCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.commentLbl.text = @"One of my favourite place in the world.. a good reason to visit shanghai 2-3 times for a year";
    self.timeLbl.text = @"5 minutes";
    self.yearLbl.text = @"- 2 year ago";
    
    self.commentLbl.textColor = [UIColor blackColor];
    self.timeLbl.textColor = [UIColor blueColor];
    self.yearLbl.textColor = [UIColor lightGrayColor];
    
    self.timeLbl.font = [UIFont fontWithName:@"Avenir-Book" size:13];
    self.commentLbl.font = [UIFont fontWithName:@"Avenir-Roman" size:15];
    self.yearLbl.font = [UIFont fontWithName:@"Avenir-Book" size:13];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
