
//
//  BeautyDealsViewController.m
//  DailyDeals
//
//  Created by MyAppTemplates Software on 07/04/14.
//  Copyright (c) 2014 MyAppTemplates Software. All rights reserved.
//

#import "EntertainmentDealsCell.h"
#import "ProfileViewController.h"
#import "DealsDetailsViewController.h"
#import "Container.h"
#import "EntertainmentViewController.h"
@interface EntertainmentViewController ()

@end

@implementation EntertainmentViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.butText4=[[NSMutableArray alloc]init];
        self.imgNames4 = [[NSMutableArray alloc]init];
        self.sequeNames4 = [[NSMutableArray alloc]init];
        self.viewNames4 = [[NSMutableArray alloc]init];
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.butText4 = [NSMutableArray arrayWithObjects: @"Beauty",@"Clothes", @"Entertainment",@"Food", @"Travel", nil];
    self.imgNames4 = [NSMutableArray arrayWithObjects:
                      @"beauty.png",
                      @"clothes.png",
                      @"entertainment.png",
                      @"food.png",
                      @"travel.png",
                      nil];
    self.sequeNames4 = [NSMutableArray arrayWithObjects:
                        @"EntertainmentDealsToDeal1",
                        @"EntertainmentToDeal2",
                        @"EntertainmentDealsToDeal3",
                        @"EntertainmentDealsToDeal4",
                        @"EntertainmentDealstoDeal5",
                        nil];
    self.viewNames4 = [NSMutableArray arrayWithObjects:
                       @"EntertainmentDeal1ViewController",
                       @"EntertainmentDeal2ViewController",
                       @"EntertainmentDeal3ViewController",
                       @"EntertainmentDeal4ViewController",
                       @"EntertainmentDeal5ViewController",
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
    NSString *cellIdentifier=@"EntertainmentDealsCell";
    
    EntertainmentDealsCell *cell=(EntertainmentDealsCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        UIViewController *controller = [[UIViewController alloc]initWithNibName:@"EntertainmentDealsCell" bundle:nil];
        cell= (EntertainmentDealsCell *)controller.view;
        
    }
    //cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[self.imgNames2 objectAtIndex:indexPath.row]]];
    //[self.view addSubview:cell.backgroundView];
    cell.lblDealsTitle2.text=[self.butText4 objectAtIndex:indexPath.row];
    
    
    return cell;
    
    
    
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //[self performSegueWithIdentifier:@"DailyDealsToDetails" sender:self];
    //self.controller = [self.storyboard instantiateViewControllerWithIdentifier:@"coupnViewController"];
    [self performSegueWithIdentifier:[self.sequeNames4 objectAtIndex:indexPath.row] sender:self];
}
-(IBAction)btnProfileClk:(id)sender
{
    [self performSegueWithIdentifier:@"BeautyDealsToProfile" sender:self];
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
    [self.viewContainer4 addGestureRecognizer:tapGesture];
    [self moveByX:160.0 animated:YES];
    
}
-(void)hideAppMenu{
    // self.navBack.backgroundColor=[UIColor whiteColor];
    self.btnSlide.selected=NO;
    [self.viewContainer4 removeGestureRecognizer:tapGesture];
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
    
    CGRect rect=self.viewContainer4.frame;
    
    rect.origin.x=x;
    
    if(animated){
        
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:.3];
        self.viewContainer4.frame=rect;
        [UIView commitAnimations];
        
    }else{
        self.viewContainer4.frame=rect;
    }
    
    
}


-(IBAction)btnSearchClk:(id)sender
{
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"BeautyDealsToProfile"]) {
        
        //ProfileViewController *newSegue=segue.destinationViewController;
        //Pass any value to dailyDetails ViewController if require
    }
    if ([segue.identifier isEqualToString:@"BeautyDealsToProfile"]) {
        
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
