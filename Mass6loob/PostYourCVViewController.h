//
//  PostYourCVViewController.h
//  Mass6loob
//
//  Created by Balakrishna Nadella on 17/11/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseViewController.h"
@interface PostYourCVViewController : BaseViewController
@property (strong, nonatomic) IBOutlet UIView *firstV;
@property (strong, nonatomic) IBOutlet UIView *secondV;
@property (strong, nonatomic) IBOutlet UIView *thirdV;
@property (strong, nonatomic) IBOutlet UIView *forthV;
@property (strong, nonatomic) IBOutlet UIView *fifthV;
@property (strong, nonatomic) IBOutlet UIView *sixthV;
@property (strong, nonatomic) IBOutlet UIView *seventhV;
@property (strong, nonatomic) IBOutlet UIView *eigthV;
@property (strong, nonatomic) IBOutlet UIView *ninthV;
@property (strong, nonatomic) IBOutlet UIView *tenthV;
@property (strong, nonatomic) IBOutlet UIView *eleventhV;
@property (strong, nonatomic) IBOutlet UIButton *reviewYourCV;
- (IBAction)reviewYourCVBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *submitBtn;
- (IBAction)submitBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *userNameTxtfield;
@property (strong, nonatomic) IBOutlet UITextField *jobtitleTxtfield;
@property (strong, nonatomic) IBOutlet UITextField *experiencetxtfiled;
- (IBAction)expBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *nationalityTxtfield;
- (IBAction)nationalityBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *educationTxtfield;
- (IBAction)educationBtnActon:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *educationMasterstxtfield;
- (IBAction)educationMastersBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *genderTxtfield;
- (IBAction)genderBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *locationTxtField;
@property (strong, nonatomic) IBOutlet UITextField *uploadCvTxtfield;
- (IBAction)uploadCVBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *uploadYourimagTxtfeild;
- (IBAction)uploadYourimageBtnAction:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *uploadyouimageV;
@property (strong, nonatomic) IBOutlet UITextView *disTextView;

@end
