//
//  screenChangeController.m
//  screenChangeDemo
//
//  Created by XMNIAO_FN on 16/10/26.
//  Copyright © 2016年 XMNIAO_FN. All rights reserved.
//

#import "screenChangeController.h"
#import "SupportedInterfaceOrientations.h"

@interface screenChangeController ()

@end

@implementation screenChangeController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
}


-(void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    
    NSLog(@"%@",NSStringFromCGRect(self.view.frame));
}



- (IBAction)horizontalScreenClick:(UIButton *)sender {
    // 设置只支持左右屏方向
    [SupportedInterfaceOrientations sharedInstance].orientationMask = UIInterfaceOrientationMaskLandscape;
    // 设置未知方向（为了同一个方向也会生效）
    NSNumber *orientationUnknown = [NSNumber numberWithInt:0];
    [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
    // 强转横屏
    NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeRight];
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}


- (IBAction)verticalClick:(UIButton *)sender {
    // 设置只支持竖屏
    [SupportedInterfaceOrientations sharedInstance].orientationMask = UIInterfaceOrientationMaskPortrait;
    NSNumber *orientationUnknown = [NSNumber numberWithInt:0];
    [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
    // 强转竖屏
    NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationPortrait];
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}


- (IBAction)popBtnClick:(UIButton *)sender {
    if (self.navigationController) {
        [self.navigationController popViewControllerAnimated:YES];
    }
}

- (IBAction)disMissBtnClick:(UIButton *)sender {
    
    if (self.presentingViewController) {
        [self dismissViewControllerAnimated:YES completion:^{
            
        }];
    }
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
