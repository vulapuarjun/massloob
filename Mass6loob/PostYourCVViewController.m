//
//  PostYourCVViewController.m
//  Mass6loob
//
//  Created by Balakrishna Nadella on 17/11/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import "PostYourCVViewController.h"

@interface PostYourCVViewController ()

@end

@implementation PostYourCVViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //to add borders
    [self addborderAndRoundRectTo:_firstV];
    [self addborderAndRoundRectTo:_secondV];
    [self addborderAndRoundRectTo:_thirdV];
    [self addborderAndRoundRectTo:_forthV];
    [self addborderAndRoundRectTo:_fifthV];
    [self addborderAndRoundRectTo:_sixthV];
    [self addborderAndRoundRectTo:_seventhV];
    [self addborderAndRoundRectTo:_eigthV];
    [self addborderAndRoundRectTo:_ninthV];
    [self addborderAndRoundRectTo:_tenthV];
    [self addborderAndRoundRectTo:_eleventhV];
//place holders
    _userNameTxtfield.placeholder=@"Username";
    _jobtitleTxtfield.placeholder=@"Job Tiltle";
    _experiencetxtfiled.placeholder=@"Experience";
    _nationalityTxtfield.placeholder=@"Nationality";
    _educationTxtfield.placeholder=@"Eduaction(Bachelors)";
    _educationMasterstxtfield.placeholder=@"Education(Masters)";
    _genderTxtfield.placeholder=@"Gender";
    _locationTxtField.placeholder=@"Loaction";
    _uploadCvTxtfield.placeholder=@"Upload CV";
    _uploadYourimagTxtfeild.placeholder=@"Upload Your Image";
    
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

- (IBAction)reviewYourCVBtnAction:(id)sender {
}
- (IBAction)submitBtnAction:(id)sender {
}
- (IBAction)expBtnAction:(id)sender {
}
- (IBAction)nationalityBtnAction:(id)sender {
}
- (IBAction)educationBtnActon:(id)sender {
}
- (IBAction)educationMastersBtnAction:(id)sender {
}
- (IBAction)genderBtnAction:(id)sender {
}
- (IBAction)uploadCVBtnAction:(id)sender {
}
- (IBAction)uploadYourimageBtnAction:(id)sender {
}
@end
