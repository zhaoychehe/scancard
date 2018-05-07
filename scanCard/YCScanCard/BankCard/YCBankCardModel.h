//
//  YCBankCardModel.h
//  scanCard
//
//  Created by ABC on 2018/5/7.
//  Copyright © 2018年 scanCard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YCBankCardModel : NSObject

@property (nonatomic, copy) NSString *bankNumber;
@property (nonatomic, copy) NSString *bankName;
@property (nonatomic, strong) UIImage *bankImage;

@end
