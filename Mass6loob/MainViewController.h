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

@property (nonatomic, strong) IBOutlet iCarousel *carousel;
@end
