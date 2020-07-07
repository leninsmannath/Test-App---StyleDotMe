//
//  ViewController.h
//  Test App
//
//  Created by Lenin S on 04/07/20.
//  Copyright © 2020 lenin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommentCell.h"
#import "VideoCell.h"

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIView *bottomView;
@property (weak, nonatomic) IBOutlet UIButton *messageButton;
@property (weak, nonatomic) IBOutlet UIButton *callButton;
@property (weak, nonatomic) IBOutlet UIButton *moreButton;
- (IBAction)didTapMore:(id)sender;
- (IBAction)didTapCall:(id)sender;
- (IBAction)didTapMessage:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *viedeoLbl;
@property (weak, nonatomic) IBOutlet UILabel *videoCountLbl;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;


@end

