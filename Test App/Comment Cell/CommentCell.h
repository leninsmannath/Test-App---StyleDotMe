//
//  CommentCell.h
//  Test App
//
//  Created by Lenin S on 04/07/20.
//  Copyright © 2020 lenin. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CommentCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *commentLbl;
@property (weak, nonatomic) IBOutlet UILabel *timeLbl;
@property (weak, nonatomic) IBOutlet UILabel *yearLbl;

@end

NS_ASSUME_NONNULL_END
