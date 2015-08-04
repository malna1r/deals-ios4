//
//  FoodViewController.m
//  DailyDeals
//
//  Created by Malvika Nair on 7/27/15.
//  Copyright (c) 2015 Teknowledge Software. All rights reserved.
//

#import "FoodDealsCell.h"
#import "ProfileViewController.h"
#import "DealsDetailsViewController.h"
#import "Container.h"
#import "FoodViewController.h"
@interface FoodViewController ()

@end

@implementation FoodViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.butText3=[[NSMutableArray alloc]init];
        self.imgNames3 = [[NSMutableArray alloc]init];
        self.sequeNames3 = [[NSMutableArray alloc]init];
        self.viewNames3 = [[NSMutableArray alloc]init];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.butText3 = [NSMutableArray arrayWithObjects: @"Beauty",@"Clothes", @"Entertainment",@"Food", @"Travel", nil];
    self.imgNames3 = [NSMutableArray arrayWithObjects:
                      @"beauty.png",
                      @"clothes.png",
                      @"entertainment.png",
                      @"food.png",
                      @"travel.png",
                      nil];
    self.sequeNames3 = [NSMutableArray arrayWithObjects:
                        @"FoodDealsToDeal1",
                        @"FoodDealsToDeal2",
                        @"FoodDealsToDeal3",
                        @"FoodDealsToDeal4",
                        @"FoodDealstoDeal5",
                        nil];
    self.viewNames3= [NSMutableArray arrayWithObjects:
                       @"FoodDeal1ViewController",
                       @"FoodDeal2ViewController",
                       @"FoodDeal3ViewController",
                       @"FoodDeal4ViewController",
                       @"FoodDeal5ViewController",
                       nil];
    
    
    [[self navigationController] setNavigationBarHidden:YES animated:YES];
    
    //Add side bar on view
    self.appMenu=[[AppMenuView alloc] initWithNibName:@"AppMenuView" bundle:nil];
    
    self.appMenu.delegate=self;
    
    [self.viewAppMenu addSubview:self.appMenu.view];
    
    
    
    
}

#pragma mark UITableViewDelegate and UITableViewDatasource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return 5;
    
    
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *cellIdentifier=@"BeautyDealsCell";
    
    FoodDealsCell *cell=(FoodDealsCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        UIViewController *controller = [[UIViewController alloc]initWithNibName:@"FoodDealsCell" bundle:nil];
        cell= (FoodDealsCell *)controller.view;
        
    }
    //cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[self.imgNames2 objectAtIndex:indexPath.row]]];
    //[self.view addSubview:cell.backgroundView];
    cell.lblDealsTitle.text=[self.butText3 objectAtIndex:indexPath.row];
    
    
    return cell;
    
    
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //[self performSegueWithIdentifier:@"DailyDealsToDetails" sender:self];
    //self.controller = [self.storyboard instantiateViewControllerWithIdentifier:@"coupnViewController"];
    [self performSegueWithIdentifier:[self.sequeNames3 objectAtIndex:indexPath.row] sender:self];
}
-(IBAction)btnProfileClk:(id)sender
{
    [self performSegueWithIdentifier:@"FoodDealsToProfile" sender:self];
}
-(IBAction)btnSlideManuClk:(id)sender
{
    
    if(!self.btnSlide.selected){
        [self openAppMenu];
        self.btnSlide.selected=YES;
    }else{
        self.btnSlide.selected=NO;
        [self hideAppMenu];
    }
}
-(void)openAppMenu{
    
    tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
    tapGesture.delegate=self;
    [self.viewContainer3 addGestureRecognizer:tapGesture];
    [self moveByX:160.0 animated:YES];
    
}
-(void)hideAppMenu{
    // self.navBack.backgroundColor=[UIColor whiteColor];
    self.btnSlide.selected=NO;
    [self.viewContainer3 removeGestureRecognizer:tapGesture];
    [self moveByX:0.0 animated:YES];
}
-(void)tapAction:(id)sender
{
    if (self.appMenu) {
        [self hideAppMenu];
    }
}

#pragma mark - App menu delegates
-(void)menuSelected:(NSString *)selectedText
{
    //selected text
}

-(void)moveByX:(CGFloat)x animated:(BOOL)animated{
    
    CGRect rect=self.viewContainer3.frame;
    
    rect.origin.x=x;
    
    if(animated){
        
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:.3];
        self.viewContainer3.frame=rect;
        [UIView commitAnimations];
        
    }else{
        self.viewContainer3.frame=rect;
    }
    
    
}


-(IBAction)btnSearchClk:(id)sender
{
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"FoodDealsToProfile"]) {
        
        //ProfileViewController *newSegue=segue.destinationViewController;
        //Pass any value to dailyDetails ViewController if require
    }
    if ([segue.identifier isEqualToString:@"FoodDealsToProfile"]) {
        
        //DealsDetailsViewController *newSegue=segue.destinationViewController;
        //Pass any value to dailyDetails ViewController if require
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)prefersStatusBarHidden {
    return YES;
}
@end