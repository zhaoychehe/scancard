//
//  YCBankBaseViewController.h
//  scanCard
//
//  Created by ABC on 2018/5/7.
//  Copyright © 2018年 scanCard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YCBankBaseViewController : UIViewController

/**
 修改导航栏颜色
 
 @param backColor 导航颜色
 */
- (void)changeNaviBackColor:(UIColor *)backColor;

+ (void)presentVC:(UIViewController *)viewController;

- (void)tabBarItemClicked;

- (void)configSubViews;

@end
