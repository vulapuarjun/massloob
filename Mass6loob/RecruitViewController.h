//
//  RecruitViewController.h
//  Mass6loob
//
//  Created by Balakrishna Nadella on 17/11/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
@interface RecruitViewController : BaseViewController   

@property (strong, nonatomic) IBOutlet UIView *firstView;
@property (strong, nonatomic) IBOutlet UIView *secondView;
@property (strong, nonatomic) IBOutlet UIView *thirdView;
@property (strong, nonatomic) IBOutlet UIView *forthView;
@property (strong, nonatomic) IBOutlet UITextField *jobTitleTxtFiled;
@property (strong, nonatomic) IBOutlet UITextField *experienceTxtField;
- (IBAction)experienceBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *nationalitytxtfiled;
- (IBAction)nationalityBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *educationTxtfield;
- (IBAction)educatationBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *searchBtn;
- (IBAction)searchBtnAction:(id)sender;
@end
