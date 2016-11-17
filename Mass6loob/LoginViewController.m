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
//    [self.navigationController.navigationBar setBackgroundImage:[UIImage new]
//                                                  forBarMetrics:UIBarMetricsDefault];
//    self.navigationController.navigationBar.shadowImage = [UIImage new];
//    self.navigationController.navigationBar.translucent = YES;

    [self addborderAndRoundRectTo:_firstV];
    [self addborderAndRoundRectTo:_secondV];
    self.navigationController.navigationBar.backgroundColor = [UIColor redColor];

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

- (IBAction)forgetPasswordBtnAction:(id)sender {
}
- (IBAction)signUpBtnAction:(id)sender {
    RegisterViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"RegisterViewController"];
     [self.navigationController pushViewController:newView animated:YES];
}
- (IBAction)loginBtnAction:(id)sender {
    [self makePostCallForPage:USER_LOGIN withParams:@{} withRequestCode:1];
    
    }
- (void) parseResult:(id) result withCode:(int)reqeustCode {
    NSLog(@"%@",result);
    
    MainViewController *newView = [self.storyboard instantiateViewControllerWithIdentifier:@"MainViewController"];
    [self.navigationController pushViewController:newView animated:YES];

    
}


@end
