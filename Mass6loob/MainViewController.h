//
//  MainViewController.h
//  Mass6loob
//
//  Created by Balakrishna Nadella on 16/11/16.
//  Copyright © 2016 ArjunVulapu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"

@interface MainViewController : UIViewController<iCarouselDataSource, iCarouselDelegate>

@property (strong, nonatomic) IBOutlet UILabel *mainLbl;
@property (strong, nonatomic) IBOutlet UILabel *secondLbl;
@property (nonatomic, strong) IBOutlet iCarousel *carousel;
@end
