//
//  YCBankCardDetailViewController.h
//  scanCard
//
//  Created by ABC on 2018/5/7.
//  Copyright © 2018年 scanCard. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YCBankCardModel;

@interface YCBankCardDetailViewController : UIViewController
// 银行卡信息
@property (nonatomic,strong) YCBankCardModel *FBYBankCardModel;
@end
