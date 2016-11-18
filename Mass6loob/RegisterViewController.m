//
//  RegisterViewController.m
//  Mass6loob
//
//  Created by Balakrishna Nadella on 17/11/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self addborderAndRoundRectTo:_firstV];
    [self addborderAndRoundRectTo:_secondV];
    [self addborderAndRoundRectTo:_thirdV];
    [self addborderAndRoundRectTo:_forthV];
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

- (IBAction)registerBtnAction:(id)sender {
    if([_nameTxtField.text length] == 0){
        [self showErrorAlertWithMessage:@"empty_name"];
    }else if([_emailTxtField.text length] == 0){
        [self showErrorAlertWithMessage:@"empty_email"];
    }else if([_passwordTxtfield.text length] == 0){
        [self showErrorAlertWithMessage:@"empty_email"];
    }else if ([_phoneNumberTxtFiled.text length] == 0){
        [self showErrorAlertWithMessage:@"empty_phone"];

    }else{
        [self makePostCallForPage:USER_SIGNUP withParams:@{@"name":_nameTxtField.text,@"email":_emailTxtField.text,@"password":_passwordTxtfield.text,@"phone":_phoneNumberTxtFiled.text} withRequestCode:1];
    }
    
}
- (void) parseResult:(id) result withCode:(int)reqeustCode {
    NSLog(@"signup:%@",result);
    NSDictionary *array = [result objectAtIndex:0];
    
    if([[array valueForKey:@"status"]  isEqualToString:@"Success"]){
        //[self showErrorAlertWithMessage:[array valueForKey:@"message"]];

        [self.navigationController popViewControllerAnimated:YES];
        [self showErrorAlertWithMessage:[array valueForKey:@"message"]];

            }else{
        [self showErrorAlertWithMessage:[array valueForKey:@"message"]];
    }
    
}

- (IBAction)loginHereBtnAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];

}
@end
