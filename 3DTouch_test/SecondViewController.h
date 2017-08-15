//
//  SecondViewController.h
//  3DTouch_test
//
//  Created by sycf_ios on 2017/8/14.
//  Copyright © 2017年 shibiao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBData.h"
@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (nonatomic,strong) SBData *data;
@property (nonatomic,copy) NSString *myTitle;

@end
