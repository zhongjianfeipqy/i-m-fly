//
//  ViewController.m
//  screenChangeDemo
//
//  Created by XMNIAO_FN on 16/10/26.
//  Copyright © 2016年 XMNIAO_FN. All rights reserved.
//

#import "ViewController.h"
#import "screenChangeController.h"

@interface ViewController ()
@property (nonatomic, strong) screenChangeController *screenChangeVc;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.screenChangeVc = [[UIStoryboard storyboardWithName:@"screenChangeController" bundle:nil] instantiateInitialViewController];
}



- (IBAction)btnClick:(UIButton *)sender {
    
   
    
    [self.navigationController pushViewController:self.screenChangeVc animated:YES];
}

- (IBAction)modalBtnClick:(UIButton *)sender {
    
    [self presentViewController:self.screenChangeVc animated:YES completion:^{
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
