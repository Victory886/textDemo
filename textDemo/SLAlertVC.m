//
//  SLAlertController.m
//  textDemo
//
//  Created by 收付宝－胜利 on 16/8/23.
//  Copyright © 2016年 胜利_Terry. All rights reserved.
//

#import "SLAlertVC.h"

@implementation SLAlertVC

+ (void)showVC:(UIViewController *)controller message:(NSString *)msg {
    
    NSString *title = NSLocalizedString(@"提示", nil);
    NSString *message = NSLocalizedString(msg, nil);
    NSString *otherButtonTitle = NSLocalizedString(@"知道了", nil);
    
    UIAlertController *alertController =
    [UIAlertController alertControllerWithTitle:title
                                        message:message
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *otherAction =
    [UIAlertAction actionWithTitle:otherButtonTitle
                             style:UIAlertActionStyleDefault
                           handler:nil];
    
    [alertController addAction:otherAction];
    [controller presentViewController:alertController animated:YES completion:nil];
}


+ (void)showVC:(UIViewController * _Nullable )controller
       message:(NSString * __nullable)msg
    confirmBtn:(NSString * _Nullable)confirm
handle_confirm:(void (^ _Nullable)(UIAlertAction *action))confirmClick {
    
    
    NSString *title = NSLocalizedString(@"提 示", nil);
    NSString *message = NSLocalizedString(msg, nil);
    NSString *confirmButtonTitle = NSLocalizedString(confirm, nil);

    
    UIAlertController *alertController =
    [UIAlertController alertControllerWithTitle:title
                                        message:message
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *otherAction =
    [UIAlertAction actionWithTitle:confirmButtonTitle
                             style:UIAlertActionStyleDefault
                           handler:confirmClick];
    
    [alertController addAction:otherAction];
    
    [controller presentViewController:alertController animated:YES completion:nil];
}


+ (void)showVC:(UIViewController * _Nullable)controller
       message:(NSString * _Nullable)msg
    confirmBtn:(NSString * _Nullable)confirm
     cancelBtn:(NSString * _Nullable)cancel
handle_confirm:(void (^ _Nullable)(UIAlertAction *action))confirmClick
 handle_cancel:(void (^ _Nullable )(UIAlertAction *action))cancelClick {
    
    NSString *title = NSLocalizedString(@"提 示", nil);
    NSString *message = NSLocalizedString(msg, nil);
    NSString *confirmButtonTitle = NSLocalizedString(confirm, nil);
    NSString *cancelButtonTitle = NSLocalizedString(cancel, nil);
    
    UIAlertController *alertController =
    [UIAlertController alertControllerWithTitle:title
                                        message:message
                                 preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *otherAction =
    [UIAlertAction actionWithTitle:confirmButtonTitle
                             style:UIAlertActionStyleDefault
                           handler:confirmClick];
    
    UIAlertAction *cancelAction =
    [UIAlertAction actionWithTitle:cancelButtonTitle
                             style:UIAlertActionStyleDefault
                           handler:cancelClick];

    [alertController addAction:cancelAction];
    [alertController addAction:otherAction];
    
    [controller presentViewController:alertController animated:YES completion:nil];
}


+ (void)showVC:(UIViewController * _Nullable)controller
preferredStyle:(UIAlertControllerStyle)preferredStyle
       message:(NSString * _Nullable)msg
    confirmBtn:(NSString * _Nullable)confirm
     cancelBtn:(NSString * _Nullable)cancel
handle_confirm:(void (^ _Nullable)(UIAlertAction *action))confirmClick
 handle_cancel:(void (^ _Nullable )(UIAlertAction *action))cancelClick {
    
    
    NSString *title = NSLocalizedString(@"提 示", nil);
    NSString *message = NSLocalizedString(msg, nil);
    NSString *confirmButtonTitle = NSLocalizedString(confirm, nil);
    NSString *cancelButtonTitle = NSLocalizedString(cancel, nil);
    
    if (preferredStyle == UIAlertControllerStyleActionSheet) {
        
        title = nil;
    }
    
    UIAlertController *alertController =
    [UIAlertController alertControllerWithTitle:title
                                        message:message
                                 preferredStyle:preferredStyle];
    
    UIAlertAction *otherAction =
    [UIAlertAction actionWithTitle:confirmButtonTitle
                             style:UIAlertActionStyleDefault
                           handler:confirmClick];
    
    UIAlertAction *cancelAction =
    [UIAlertAction actionWithTitle:cancelButtonTitle
                             style:UIAlertActionStyleDefault
                           handler:cancelClick];

    
    [alertController addAction:cancelAction];
    [alertController addAction:otherAction];
    
    
    [controller presentViewController:alertController animated:YES completion:nil];
}


@end
