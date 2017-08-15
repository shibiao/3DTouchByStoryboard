//
//  SecondViewController.m
//  3DTouch_test
//
//  Created by sycf_ios on 2017/8/14.
//  Copyright © 2017年 shibiao. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleLabel.text = self.myTitle;
    NSLog(@"%s",__func__);
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
        NSLog(@"%s",__func__);
}
-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    NSLog(@"%s",__func__);
}
-(NSArray<id<UIPreviewActionItem>> *)previewActionItems{
    UIPreviewAction * action1 = [UIPreviewAction actionWithTitle:@"选项1" style:0 handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"click1");
    }];
    UIPreviewAction * action2 = [UIPreviewAction actionWithTitle:@"选项2" style:1 handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"click2");
    }];
    UIPreviewAction * action3 = [UIPreviewAction actionWithTitle:@"选项3" style:2 handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
        NSLog(@"click3");
    }];
    NSArray * actions = @[action1,action2,action3];
    return actions;
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

@end
