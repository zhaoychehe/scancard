//
//  YCBankCardDetailViewController.m
//  scanCard
//
//  Created by ABC on 2018/5/7.
//  Copyright © 2018年 scanCard. All rights reserved.
//

#import "YCBankCardDetailViewController.h"
#import "YCBankCardModel.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface YCBankCardDetailViewController ()

@end

@implementation YCBankCardDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"银行卡详细信息";
    
    [self cardImage];
    
    [self content];
}

- (void)cardImage {
    
    UIImageView *cardImg = [[UIImageView alloc]initWithFrame:CGRectMake(10, 85, SCREEN_WIDTH-20, SCREEN_HEIGHT/3)];
    cardImg.image = _FBYBankCardModel.bankImage;
    
    [self.view addSubview:cardImg];
    
}

- (void)content {
    
    NSArray *titleArr = @[@"开户行：",@"卡号："];
    NSArray *contentArr = @[_FBYBankCardModel.bankName,_FBYBankCardModel.bankNumber];
    
    for (int i = 0; i < titleArr.count; i ++) {
        int count = 50*i;
        
        UILabel *titleLab = [[UILabel alloc]initWithFrame:CGRectMake(10, SCREEN_HEIGHT/3+100+count, SCREEN_WIDTH/4, 50)];
        titleLab.text = titleArr[i];
        [self.view addSubview:titleLab];
        
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(10, SCREEN_HEIGHT/3+150+count, SCREEN_WIDTH-20, 1)];
        lab.backgroundColor = [UIColor lightGrayColor];
        [self.view addSubview:lab];
        
        UILabel *contentLab = [[UILabel alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/4+20, SCREEN_HEIGHT/3+100+count, SCREEN_WIDTH*3/4-30, 50)];
        contentLab.numberOfLines = 0;
        contentLab.text = contentArr[i];
        [self.view addSubview:contentLab];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
