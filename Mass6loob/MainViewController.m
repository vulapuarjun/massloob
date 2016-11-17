//
//  MainViewController.m
//  Mass6loob
//
//  Created by Balakrishna Nadella on 16/11/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (nonatomic, strong) NSMutableArray *items;
@end

@implementation MainViewController
UIButton *firstBtn ;
UIButton *secondBtn ;
@synthesize carousel;
@synthesize items;
- (void)awakeFromNib
{
    [super awakeFromNib];
    
    //set up data
    //your carousel should always be driven by an array of
    //data of some kind - don't store data in your item views
    //or the recycling mechanism will destroy your data once
    //your item views move off-screen
    self.items = [NSMutableArray array];
    for (int i = 0; i < 3; i++)
    {
        [items addObject:@(i)];
    }
}

- (void)dealloc
{
    //it's a good idea to set these to nil here to avoid
    //sending messages to a deallocated viewcontroller
    carousel.delegate = nil;
    carousel.dataSource = nil;
}

#pragma mark -
#pragma mark View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //configure carousel
    carousel.type = iCarouselTypeRotary;
    carousel.pagingEnabled=YES;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    //free up memory by releasing subviews
    self.carousel = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

#pragma mark -
#pragma mark iCarousel methods

- (NSInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    //return the total number of items in the carousel
    return [items count];
}

- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view
{
   firstBtn = nil;
   secondBtn = nil;
    UIImageView *image1=nil;
    UILabel *mainLbl=nil;
    UILabel *secLable=nil;
    UILabel *innerLbl=nil;


   

    
    //create new view if no view is available for recycling
    if (view == nil)
    {
//        view = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200.0f, 600.0f)];
//        ((UIImageView *)view).image = [UIImage imageNamed:@"page.png"];
        view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200.0f, 400.0f)];
        [view setBackgroundColor:[UIColor whiteColor]];
        // view.contentMode = UIViewContentModeCenter;
        image1 = [[UIImageView alloc] initWithFrame:CGRectMake(20, 50, 160, 160)];
        image1.backgroundColor = [UIColor clearColor];
        //label.textAlignment = NSTextAlignmentCenter;
        [view addSubview:image1];
        
        
        mainLbl = [[UILabel alloc] initWithFrame:CGRectMake(0, -42, 200, 21)];
        mainLbl.backgroundColor = [UIColor clearColor];
        mainLbl.textAlignment = NSTextAlignmentCenter;
        //mainLbl.font = [UIFont systemFontOfSize:14.0];
        [mainLbl setFont:[UIFont fontWithName:@"Arial-BoldMT" size:15]];
        

        mainLbl.textColor=[UIColor whiteColor];
        [view addSubview:mainLbl];
        secLable = [[UILabel alloc] initWithFrame:CGRectMake(0, -20, 220, 21)];
        secLable.backgroundColor = [UIColor clearColor];
        secLable.textAlignment = NSTextAlignmentCenter;

        secLable.textColor=[UIColor whiteColor];

        //label.textAlignment = NSTextAlignmentCenter;
        secLable.font = [UIFont systemFontOfSize:14.0];
        [view addSubview:secLable];
        
        innerLbl = [[UILabel alloc] initWithFrame:CGRectMake(20, 220, 160, 21)];
        innerLbl.backgroundColor = [UIColor clearColor];
        innerLbl.textAlignment = NSTextAlignmentCenter;
        
        //innerLbl.textColor=[UIColor whiteColor];
        
        //label.textAlignment = NSTextAlignmentCenter;
        innerLbl.font = [UIFont systemFontOfSize:14.0];
        [view addSubview:innerLbl];

        firstBtn = [[UIButton alloc] initWithFrame:CGRectMake(20, 368, 160, 21)];
        firstBtn.backgroundColor = [UIColor clearColor];
        //label.textAlignment = NSTextAlignmentCenter;
        firstBtn.titleLabel.font = [UIFont systemFontOfSize:14.0];
        firstBtn.tag = 1;

        firstBtn = [[UIButton alloc] initWithFrame:CGRectMake(20, 368, 160, 21)];
        firstBtn.backgroundColor = [UIColor clearColor];
        //label.textAlignment = NSTextAlignmentCenter;
        firstBtn.titleLabel.font = [UIFont systemFontOfSize:14.0];
        firstBtn.tag = 1;
        firstBtn.backgroundColor=[UIColor blueColor];
        
        secondBtn = [[UIButton alloc] initWithFrame:CGRectMake(20, 340, 160, 21)];
        secondBtn.backgroundColor = [UIColor clearColor];
        //label.textAlignment = NSTextAlignmentCenter;
        secondBtn.titleLabel.font = [UIFont systemFontOfSize:14.0];
        secondBtn.tag = 2;
        secondBtn.backgroundColor=[UIColor blueColor];
        [view addSubview:firstBtn];
        [view addSubview:secondBtn];
    }
          else
    {
        //get a reference to the label in the recycled view
        firstBtn = (UIButton *)[view viewWithTag:1];
        secondBtn = (UIButton *)[view viewWithTag:2];


    }
    
    //set item label
    //remember to always set any properties of your carousel item
    //views outside of the `if (view == nil) {...}` check otherwise
    //you'll get weird issues with carousel item content appearing
    //in the wrong place in the carousel
  //label.titleLabel.text =[items[index] stringValue];
    if(index==0){
        [firstBtn setTitle:@"Recruit" forState:UIControlStateNormal];
        [secondBtn setTitle:@"Post Your CV" forState:UIControlStateNormal];
        mainLbl.text=@"Searching For Job?";
        [firstBtn addTarget:self action:@selector(employer_btn:) forControlEvents:UIControlEventTouchUpInside];

        [secondBtn addTarget:self action:@selector(employee_btn:) forControlEvents:UIControlEventTouchUpInside];
        innerLbl.text=@"Find Jobs";


        
    }
    else if(index==1){
        [firstBtn setTitle:@"Find Volunteers" forState:UIControlStateNormal];
        [secondBtn setTitle:@"Enrool As a Volunteer" forState:UIControlStateNormal];
        
        [firstBtn addTarget:self action:@selector(volunter_organisation_btn:) forControlEvents:UIControlEventTouchUpInside];

        [secondBtn addTarget:self action:@selector(volunterr_btn:) forControlEvents:UIControlEventTouchUpInside];
        mainLbl.text=@"Searching For Volunters";

        innerLbl.text=@"Volunteers";

    }
    else{
    [firstBtn setTitle:@"Looking for a Freelancer" forState:UIControlStateNormal];
    [secondBtn setTitle:@"Upload As a Freelancer" forState:UIControlStateNormal];
        [firstBtn addTarget:self action:@selector(freelance_project_btn:) forControlEvents:UIControlEventTouchUpInside];
        [secondBtn addTarget:self action:@selector(freelancer_btn:) forControlEvents:UIControlEventTouchUpInside];
        mainLbl.text=@"Searching For Freelancers?";
        innerLbl.text=@"Free Lancer";

    }
    [image1 setImage:[UIImage imageNamed:@"find_jobs.png"]];
    secLable.text=@"We Made It Simple!";

    return view;
}

-(void)employee_btn:(id)sender
    {
    NSLog(@"employee");
}

-(void)employer_btn:(id)sender
{
    NSLog(@"employer");
}

-(void)volunterr_btn:(id)sender
{
    NSLog(@"volunterr");
    
}

-(void)volunter_organisation_btn:(id)sender
{
    NSLog(@"volunter_organisation");
}

-(void)freelancer_btn:(id)sender
{
    NSLog(@"freelancer");
}

-(void)freelance_project_btn:(id)sender
{
    NSLog(@"freelance_project");
    
}


@end
