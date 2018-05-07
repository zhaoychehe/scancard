//
//  YCBankCardViewController.h
//  scanCard
//
//  Created by ABC on 2018/5/7.
//  Copyright © 2018年 scanCard. All rights reserved.
//

#import "YCBankBaseViewController.h"

#import "YCScanBankCard.h"

#define iOS9Later ([UIDevice currentDevice].systemVersion.floatValue >= 9.0f)

@interface YCBankCardViewController : YCBankBaseViewController

@property (nonatomic, strong)YCScanBankCard *cameraManager;

@end
