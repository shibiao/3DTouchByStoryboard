//
//  ViewController.m
//  3DTouch_test
//
//  Created by sycf_ios on 2017/8/14.
//  Copyright © 2017年 shibiao. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate,UITableViewDataSourcePrefetching>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) SecondViewController *secondVC;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    return cell;
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"haha"]) {
        self.secondVC = segue.destinationViewController;
        UITableViewCell *cell = sender;
        NSLog(@"--ee---%@",cell.textLabel.text);
        self.secondVC.myTitle = cell.textLabel.text;
        
    }else if ([segue.identifier isEqualToString:@"haha1"]){
        NSLog(@"-----1");
        self.secondVC = segue.destinationViewController;
        //设置3D touch按下时预览的界面大小
//        self.secondVC.preferredContentSize = CGSizeMake(200, 600);
        UITableViewCell *cell = sender;
        self.secondVC.myTitle = cell.textLabel.text;
    }else if ([segue.identifier isEqualToString:@"haha2"]){
        NSLog(@"-----2");
        self.secondVC = segue.destinationViewController;
        UITableViewCell *cell = sender;
        self.secondVC.myTitle = cell.textLabel.text;
    }
    
    
    
}

-(IBAction)unwindVC:(UIStoryboardSegue *)segue{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
