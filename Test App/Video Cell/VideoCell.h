//
//  VideoCell.h
//  Test App
//
//  Created by Lenin S on 04/07/20.
//  Copyright © 2020 lenin. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface VideoCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIView *imageContainerView;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *timeLbl;
@property (weak, nonatomic) IBOutlet UILabel *titleLbl;
@property (weak, nonatomic) IBOutlet UILabel *subtitleLbl;
@property (weak, nonatomic) IBOutlet UIButton *playBtn;


@end

