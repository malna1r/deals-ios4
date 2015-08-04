//
//  ClothesViewController.h
//  DailyDeals
//
//  Created by Malvika Nair on 7/27/15.
//  Copyright (c) 2015 Teknowledge Software. All rights reserved.
//

#import "AppDelegate.h"
#import "AppMenuView.h"
#import <UIKit/UIKit.h>

@interface ClothesViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIGestureRecognizerDelegate,MenuDelegate>
{
    UITapGestureRecognizer *tapGesture ;
}
@property(nonatomic,strong)IBOutlet UITableView *tblViewDeals;
@property(nonatomic,strong)UIImageView *imageViewShadow;
@property(nonatomic,strong)IBOutlet UIButton *btnSlide;
@property(nonatomic,strong)IBOutlet UIView *viewAppMenu;
@property(nonatomic,strong)IBOutlet UIView *viewContainer;
@property (nonatomic, strong) AppDelegate *appDelegate;
@property (nonatomic, strong) AppMenuView *appMenu;
@property(nonatomic,strong) NSMutableArray *butText3;
@property(nonatomic,strong) NSMutableArray *imgNames3;
@property(nonatomic,strong) NSMutableArray *sequeNames3;
@property(nonatomic,strong) NSMutableArray *viewNames3;
-(IBAction)btnProfileClk:(id)sender;
-(IBAction)btnSlideManuClk:(id)sender;
-(IBAction)btnSearchClk:(id)sender;

@end
