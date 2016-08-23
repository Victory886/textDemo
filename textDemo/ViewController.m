//
//  ViewController.m
//  textDemo
//
//  Created by 收付宝－胜利 on 16/8/1.
//  Copyright © 2016年 胜利_Terry. All rights reserved.
//

#import "ViewController.h"
#import "ScanCodeVC.h"
#import "SLAlertVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    __weak ViewController *ws = self;
    
    [SLAlertVC showVC:self message:@"第一个"];
    
//    [SLAlertVC showVC:self
//              message:@"第二个"
//           confirmBtn:@"确定"
//       handle_confirm:^(UIAlertAction *action) {
//           
//           ws.view.backgroundColor = [UIColor redColor];
//    }];
 
    
//    [SLAlertVC showVC:self
//     preferredStyle:UIAlertControllerStyleActionSheet
//              message:@"测试"
//           confirmBtn:@"确定"
//            cancelBtn:@"取消"
//       handle_confirm:^(UIAlertAction *action) {
//        
//           [SLAlertVC showVC:ws message:@"第三个测试,确定"];
//    } handle_cancel:^(UIAlertAction *action) {
//        
//        [SLAlertVC showVC:ws message:@"第三个测试,取消"];
//    }];
    
    
//    [SLAlertVC showVC:self
//       preferredStyle:(UIAlertControllerStyleActionSheet)
//              message:@"第四个"
//           confirmBtn:@"扫一扫"
//            cancelBtn:@"取消"
//       handle_confirm:^(UIAlertAction *action) {
//        
//        [ws.navigationController pushViewController:[ScanCodeVC alloc] animated:YES];
//    } handle_cancel:^(UIAlertAction *action) {
//        
//        [SLAlertVC showVC:ws message:@"第四个测试,取消"];
//    }];
    
}


@end
