//
//  BaseViewController.h
//  StreetWhere
//
//  Created by Amit Kulkarni on 10/04/15.
//  Copyright (c) 2015 Mobentia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Common.h"
//#import "UIImageView+UIActivityIndicatorForSDWebImage.h"

@interface BaseViewController : UIViewController<UISearchBarDelegate,UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate> {
    int requestCode;
    
}

@property (nonatomic) UIRefreshControl *refreshControl;
@property (nonatomic) BOOL dismissProgress;

- (void) makePostCallForPage:(NSString *)page
                  withParams:(NSDictionary *)params
             withRequestCode:(int)code;

- (void) makeGetCallForPage:(NSString *)page
                 withParams:(NSDictionary *)params
            withRequestCode:(int)code;

- (void) makePostCallForPage:(NSString *)page
                  withParams:(NSDictionary *)params
                withCallback:(void (^)(id))resultCallback;

- (void) parseResult:(id) result withCode:(int)reqeustCode;
- (void) showErrorAlertWithMessage:(NSString *)message;
- (void) showSuccessMessage:(NSString *)message;
-(void)toastMessage:(NSString*)message;

- (void) showHUD:(NSString *)labelText;
- (void) hideHUD;
- (void)refreshItems;
- (void)showSideMenu;
-(UIView*)addborderAndRoundRectTo:(UIView*)view;

@end
