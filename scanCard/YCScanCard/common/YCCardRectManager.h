//
//  YCCardRectManager.h
//  nav
//
//  Created by ABC on 2018/5/7.
//  Copyright © 2018年 ABC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YCCardRectManager : UIView

@property (nonatomic, assign)CGRect subRect;

+ (CGRect)getEffectImageRect:(CGSize)size;
+ (CGRect)getGuideFrame:(CGRect)rect;

+ (int)docode:(unsigned char *)pbBuf len:(int)tLen;
+ (CGRect)getCorpCardRect:(int)width  height:(int)height guideRect:(CGRect)guideRect charCount:(int) charCount;

+ (char *)getNumbers;

@end
