//
//  UIAlertController+CardExtend.h
//  nav
//
//  Created by ABC on 2018/5/7.
//  Copyright © 2018年 ABC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (CardExtend)

// 创建AlertController
+(instancetype)alertControllerWithTitle:(NSString *)title message:(NSString *)message okAction:(UIAlertAction *)okAction cancelAction:(UIAlertAction *)cancelAction;

// 创建ActionSheetController
+(instancetype)actionSheetControllerWithTitle:(NSString *)title message:(NSString *)message okAction:(UIAlertAction *)okAction cancelAction:(UIAlertAction *)cancelAction;


@end
