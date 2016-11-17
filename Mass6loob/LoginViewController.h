//
//  LoginViewController.h
//  Mass6loob
//
//  Created by Balakrishna Nadella on 17/11/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
@interface LoginViewController : BaseViewController
@property (strong, nonatomic) IBOutlet UIView *firstV;
@property (strong, nonatomic) IBOutlet UIView *secondV;
@property (strong, nonatomic) IBOutlet UIButton *forgetPassword;
- (IBAction)forgetPasswordBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *signUpBtn;
- (IBAction)signUpBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *loginBtn;
- (IBAction)loginBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *emailTextfield;
@property (strong, nonatomic) IBOutlet UITextField *passwordTxtField;

@end
