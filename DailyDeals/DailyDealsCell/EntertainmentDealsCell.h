//
//  EntertainmentDealsCell.h
//  DailyDeals
//
//  Created by Nikhil Davar on 8/3/15.
//  Copyright (c) 2015 Teknowledge Software. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EntertainmentDealsCell : UITableViewCell
@property(nonatomic,strong)IBOutlet UILabel *lblDealsTitle2;
@property(nonatomic,strong)IBOutlet UILabel *lblDealsState2;
@property(nonatomic,strong)IBOutlet UILabel *lblDealsCurrentPrice2;
@property(nonatomic,strong)IBOutlet UILabel *lblDealsOldPrice2;
@property(nonatomic,strong)IBOutlet UILabel *lblDealsBuyStatus2;
@property(nonatomic,strong)IBOutlet UILabel *lblDealsPurchasedCount2;
@property(nonatomic,strong)IBOutlet UIImageView *imageView2;
@end
