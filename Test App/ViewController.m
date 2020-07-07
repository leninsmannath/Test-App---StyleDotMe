//
//  ViewController.m
//  Test App
//
//  Created by Lenin S on 04/07/20.
//  Copyright © 2020 lenin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController
NSArray *videoArray ;
- (void)viewDidLoad {
    [super viewDidLoad];
        
     [self.tableView registerNib:[UINib nibWithNibName:@"CommentCell" bundle:nil]
      forCellReuseIdentifier:@"CommentCell"];
    [self.collectionView registerNib:[UINib nibWithNibName:@"VideoCell" bundle:nil]
         forCellWithReuseIdentifier:@"VideoCell"];
    [self customisation];
    [self setNavigationButtons];
    
    // Do any additional setup after loading the view.
}
-(void)setNavigationButtons {
    CGFloat height = 25;
    UIButton *searchBtn =  [UIButton buttonWithType:UIButtonTypeCustom];
    [searchBtn setImage:[UIImage imageNamed:@"search"] forState:UIControlStateNormal];
    //[searchBtn addTarget:self action:@selector(home) forControlEvents:UIControlEventTouchUpInside];
    [searchBtn setFrame:CGRectMake(0, 0, height, height)];

    UIButton *shareBtn =  [UIButton buttonWithType:UIButtonTypeCustom];
    [shareBtn setImage:[UIImage imageNamed:@"share"] forState:UIControlStateNormal];
    //[shareBtn addTarget:self action:@selector(settings) forControlEvents:UIControlEventTouchUpInside];
    [shareBtn setFrame:CGRectMake(60, 0, height, height)];

    UIView *rightBarButtonItems = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 90, height + 2)];
    [rightBarButtonItems addSubview:searchBtn];
    [rightBarButtonItems addSubview:shareBtn];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightBarButtonItems];
    
    UIButton *backBtn =  [UIButton buttonWithType:UIButtonTypeCustom];
    [backBtn setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    //[backBtn addTarget:self action:@selector(home) forControlEvents:UIControlEventTouchUpInside];
    [backBtn setFrame:CGRectMake(0, 0, height, height)];
    
    UIView *leftBarButtonItems = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, height + 2)];
    [leftBarButtonItems addSubview:backBtn];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftBarButtonItems];

    
}
-(void) customisation {
    self.viedeoLbl.text = @"Video";
    self.videoCountLbl.text = @"- 9";
    self.title = @"Nearby details";
    
    self.messageButton.backgroundColor = [UIColor colorWithRed:42.0/255. green:101.0/255.0 blue:246.0/255.0 alpha:1.0];
    self.callButton.backgroundColor = [UIColor colorWithRed:245.0/255. green:245.0/255.0 blue:245.0/255.0 alpha:1.0];
    self.moreButton.backgroundColor = [UIColor colorWithRed:245.0/255. green:245.0/255.0 blue:245.0/255.0 alpha:1.0];
    [self.messageButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.messageButton setTitle:@"Message" forState:UIControlStateNormal];
    self.messageButton.layer.cornerRadius = 25;
    self.callButton.layer.cornerRadius = 25;
    self.moreButton.layer.cornerRadius = 25;
    
    self.messageButton.titleLabel.font = [UIFont fontWithName:@"Avenir-Book" size:17];
    self.videoCountLbl.font = [UIFont fontWithName:@"Avenir-Roman" size:14];
    self.viedeoLbl.font = [UIFont fontWithName:@"Avenir-Roman" size:21];
 
}

- (IBAction)didTapMore:(id)sender {
}

- (IBAction)didTapCall:(id)sender {
}

- (IBAction)didTapMessage:(id)sender {
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section
{
    return 9;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    static NSString *cellId = @"CommentCell";
    
    CommentCell  *cell =[tableView dequeueReusableCellWithIdentifier:cellId];
   
    return cell;
}
 -(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 70)];
    /* Create custom view to display section header... */
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 35, tableView.frame.size.width, 25)];
    [label setFont:[UIFont boldSystemFontOfSize:26]];
    NSString *string = @"Review";
    
    
    UIButton *editBtn = [[UIButton alloc] initWithFrame:CGRectMake(tableView.frame.size.width - 60, 35, 41, 18)];
    [editBtn setTitle:@"Edit" forState:UIControlStateNormal];
    [editBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    editBtn.titleLabel.font = [UIFont fontWithName:@"Avenir-Roman" size:15];
    label.font = [UIFont fontWithName:@"Avenir-Roman" size:19];
    
    /* Section header is in 0th index... */
    view.backgroundColor = [UIColor whiteColor];
    [label setText:string];
    [view addSubview:label];
    [view addSubview:editBtn];
    return view;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 70;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 9;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    VideoCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"VideoCell" forIndexPath:indexPath];

    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(self.view.frame.size.width - 60, collectionView.frame.size.height);
    
}

@end
