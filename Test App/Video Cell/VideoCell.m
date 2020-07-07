//
//  VideoCell.m
//  Test App
//
//  Created by Lenin S on 04/07/20.
//  Copyright © 2020 lenin. All rights reserved.
//

#import "VideoCell.h"

@implementation VideoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
//    self.imgView.image = [UIImage imageNamed:@"videoImage-1.jpeg"];
    self.timeLbl.text = @"10:57";
    self.titleLbl.text = @"Bluebuild China 2018";
    self.subtitleLbl.text = @"1 Week ago - 2,838Play";
    [self.playBtn setBackgroundImage:[UIImage imageNamed:@"play-button.png"] forState:UIControlStateNormal];
    
    self.titleLbl.textColor = [UIColor darkTextColor];
    self.subtitleLbl.textColor = [UIColor grayColor];
    
    self.imageContainerView.layer.cornerRadius = 7;
    self.imageContainerView.clipsToBounds = true;
    
    self.timeLbl.backgroundColor = [UIColor darkGrayColor];
    self.timeLbl.textColor = [UIColor whiteColor];
    self.timeLbl.layer.cornerRadius = 10;
    self.timeLbl.clipsToBounds = true;
    
    self.timeLbl.font = [UIFont fontWithName:@"Avenir-Book" size:12];
    self.titleLbl.font = [UIFont fontWithName:@"Avenir-Roman" size:17];
    self.subtitleLbl.font = [UIFont fontWithName:@"Avenir-Book" size:15];
}

@end
