//
//  RegisterViewController.h
//  Mass6loob
//
//  Created by Balakrishna Nadella on 17/11/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
@interface RegisterViewController : BaseViewController
@property (strong, nonatomic) IBOutlet UIView *firstV;
@property (strong, nonatomic) IBOutlet UIView *secondV;
@property (strong, nonatomic) IBOutlet UIView *thirdV;
@property (strong, nonatomic) IBOutlet UIView *forthV;
@property (strong, nonatomic) IBOutlet UIButton *registerBtn;
- (IBAction)registerBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *loginHere;

- (IBAction)loginHereBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *nameTxtField;
@property (strong, nonatomic) IBOutlet UITextField *emailTxtField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTxtfield;
@property (strong, nonatomic) IBOutlet UITextField *phoneNumberTxtFiled;

@end
