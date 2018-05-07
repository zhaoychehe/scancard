//
//  UIAlertController+CardExtend.m
//  nav
//
//  Created by ABC on 2018/5/7.
//  Copyright © 2018年 ABC. All rights reserved.
//

#import "UIAlertController+CardExtend.h"

@implementation UIAlertController (CardExtend)

+(instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message preferredStyle:(UIAlertControllerStyle)preferredStyle okAction:(UIAlertAction *)okAction cancelAction:(UIAlertAction *)cancelAction {
    UIAlertController *alertC = [self alertControllerWithTitle:title message:message preferredStyle:preferredStyle];
    
    // 两个action（"确定"、“取消”）依添加顺序从左至右排列
    if (cancelAction) {
        [alertC addAction:cancelAction];
    }
    
    if (okAction) {
        [alertC addAction:okAction];
    }
    
    return alertC;
}

+(instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message okAction:(UIAlertAction *)okAction cancelAction:(UIAlertAction *)cancelAction {
    return [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert okAction:okAction cancelAction:cancelAction];
}

+(instancetype)actionSheetControllerWithTitle:(NSString *)title message:(NSString *)message okAction:(UIAlertAction *)okAction cancelAction:(UIAlertAction *)cancelAction {
    return [self alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet okAction:okAction cancelAction:cancelAction];
}


@end