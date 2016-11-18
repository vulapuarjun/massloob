//
//  LoginViewController.m
//  Mass6loob
//
//  Created by Balakrishna Nadella on 17/11/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"
#import "MainViewController.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self addborderAndRoundRectTo:_firstV];
    [self addborderAndRoundRectTo:_secondV];
    [self.navigationController setNavigationBarHidden:YES];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:YES];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)viewWillDisappear:(BOOL)animated
{
    [self.navigationController setNavigationBarHidden:NO];

}
- (IBAction)forgetPasswordBtnAction:(id)sender {
}
- (IBAction)signUpBtnAction:(id)sender {
    RegisterViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"RegisterViewController"];
     [self.navigationController pushViewController:newView animated:YES];
}
- (IBAction)loginBtnAction:(id)sender {
    if([_emailTextfield.text length] == 0){
        [self showErrorAlertWithMessage:Localized(@"empty_email")];
    }else if([_passwordTxtField.text length] == 0){
        [self showErrorAlertWithMessage:Localized(@"empty_password")];

    }else
    [self makePostCallForPage:USER_LOGIN withParams:@{@"email":_emailTextfield.text,@"password":_passwordTxtField.text}  withRequestCode:1];
}
- (void) parseResult:(id) result withCode:(int)reqeustCode {
    NSLog(@"login:%@",result);
    NSDictionary *array = [result objectAtIndex:0];
    
    if([[array valueForKey:@"status"]  isEqualToString:@"Success"]){
        
    MainViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
    [self.navigationController pushViewController:newView animated:YES];
    }else{
        [self showErrorAlertWithMessage:[array valueForKey:@"message"]];
    }
    
}



@end
