//
//  FoodViewController.h
//  DailyDeals
//
//  Created by Malvika Nair on 7/27/15.
//  Copyright (c) 2015 Teknowledge Software. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "AppMenuView.h"

@interface EntertainmentViewController: UIViewController<UITableViewDataSource,UITableViewDelegate,UIGestureRecognizerDelegate,MenuDelegate>
{
    UITapGestureRecognizer *tapGesture ;
}
@property(nonatomic,strong)IBOutlet UITableView *tblViewDeals;
@property(nonatomic,strong)UIImageView *imageViewShadow;
@property(nonatomic,strong)IBOutlet UIButton *btnSlide;
@property(nonatomic,strong)IBOutlet UIView *viewAppMenu;
@property(nonatomic,strong)IBOutlet UIView *viewContainer4;
@property(nonatomic,strong) AppDelegate *appDelegate;
@property(nonatomic,strong) AppMenuView *appMenu;
@property(nonatomic,strong) NSMutableArray *butText4;
@property(nonatomic,strong) NSMutableArray *imgNames4;
@property(nonatomic,strong) NSMutableArray *sequeNames4;
@property(nonatomic,strong) NSMutableArray *viewNames4;
-(IBAction)btnProfileClk:(id)sender;
-(IBAction)btnSlideManuClk:(id)sender;
-(IBAction)btnSearchClk:(id)sender;
@end
