//
//  FoodDealsCell.h
//  DailyDeals
//
//  Created by Nikhil Davar on 7/30/15.
//  Copyright (c) 2015 Teknowledge Software. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface FoodDealsCell : UITableViewCell
@property(nonatomic,strong)IBOutlet UILabel *lblDealsTitle;
@property(nonatomic,strong)IBOutlet UILabel *lblDealsState;
@property(nonatomic,strong)IBOutlet UILabel *lblDealsCurrentPrice;
@property(nonatomic,strong)IBOutlet UILabel *lblDealsOldPrice;
@property(nonatomic,strong)IBOutlet UILabel *lblDealsBuyStatus;
@property(nonatomic,strong)IBOutlet UILabel *lblDealsPurchasedCount;
@property(nonatomic,strong)IBOutlet UIImageView *imageView;
@end
