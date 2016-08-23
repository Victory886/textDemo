//
//  SLAlertController.h
//  textDemo
//
//  Created by 收付宝－胜利 on 16/8/23.
//  Copyright © 2016年 胜利_Terry. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SLAlertVC : UIAlertController

/**
 *  只弹出一个提示，不做处理
 *
 *  @param controller 控制器类
 *  @param msg        提示信息
 */
+ (void)showVC:(UIViewController * _Nullable )controller
       message:(NSString * __nullable)msg;

/**
 *  弹出带有一个按钮的提示，并处理按钮事件
 *
 *  @param controller   控制器类
 *  @param msg          提示信息
 *  @param confirm      按钮标题
 *  @param confirmClick 事件处理
 */
+ (void)showVC:(UIViewController * _Nullable )controller
       message:(NSString * __nullable)msg
    confirmBtn:(NSString * _Nullable)confirm
handle_confirm:(void (^ _Nullable)(UIAlertAction *action))confirmClick;

/**
 *  弹出带有两个按钮的提示，并对按钮事件做处理
 *
 *  @param controller   控制器类
 *  @param msg          提示信息
 *  @param confirm      确定按钮
 *  @param cancel       取消按钮
 *  @param confirmClick 确定按钮事件
 *  @param cancelClick  取消按钮事件
 */
+ (void)showVC:(UIViewController * _Nullable)controller
       message:(NSString * _Nullable)msg
    confirmBtn:(NSString * _Nullable)confirm
     cancelBtn:(NSString * _Nullable)cancel
handle_confirm:(void (^ _Nullable)(UIAlertAction *action))confirmClick
 handle_cancel:(void (^ _Nullable )(UIAlertAction *action))cancelClick;


/**
 *  弹出带有两个按钮的提示，并对按钮事件做处理
 *
 *  @param controller       控制器类
 *  @param preferredStyle   弹出类型 alter 或 ActionSheet
 *  @param msg              提示信息
 *  @param confirm          确定按钮
 *  @param cancel           取消按钮
 *  @param confirmClick     确定按钮事件
 *  @param cancelClick      取消按钮事件
 */
+ (void)showVC:(UIViewController * _Nullable)controller
preferredStyle:(UIAlertControllerStyle)preferredStyle
       message:(NSString * _Nullable)msg
    confirmBtn:(NSString * _Nullable)confirm
     cancelBtn:(NSString * _Nullable)cancel
handle_confirm:(void (^ _Nullable)(UIAlertAction *action))confirmClick
handle_cancel:(void (^ _Nullable )(UIAlertAction *action))cancelClick;

@end
