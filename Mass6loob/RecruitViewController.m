//
//  RecruitViewController.m
//  Mass6loob
//
//  Created by Balakrishna Nadella on 17/11/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import "RecruitViewController.h"

@interface RecruitViewController ()

@end

@implementation RecruitViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self addborderAndRoundRectTo:_firstView];
    [self addborderAndRoundRectTo:_secondView];
    [self addborderAndRoundRectTo:_thirdView];
    [self addborderAndRoundRectTo:_forthView];

    //place holders
    _jobTitleTxtFiled.placeholder=@"Job Title";
    _experienceTxtField.placeholder=@"Experience";
    _nationalitytxtfiled.placeholder=@"Nationality";
    _educationTxtfield.placeholder=@"Education";
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)experienceBtnAction:(id)sender {
}
- (IBAction)nationalityBtnAction:(id)sender {
}
- (IBAction)educatationBtnAction:(id)sender {
}
- (IBAction)searchBtnAction:(id)sender {
}
@end
