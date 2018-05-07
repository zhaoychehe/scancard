//
//  YCIDCardDetailController.h
//  nav
//
//  Created by ABC on 2018/5/7.
//  Copyright © 2018年 ABC. All rights reserved.
//

#import <UIKit/UIKit.h>

@class YCCardIDInfo;
@interface YCIDCardDetailController : UIViewController

// 身份证信息
@property (nonatomic,strong) YCCardIDInfo *IDInfo;

// 身份证图像
@property (nonatomic,strong) UIImage *IDImage;

@end
