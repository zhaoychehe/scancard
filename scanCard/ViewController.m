//
//  ViewController.m
//  scanCard
//
//  Created by ABC on 2018/5/7.
//  Copyright © 2018年 scanCard. All rights reserved.
//

#import "ViewController.h"

#import "YCIDCardCaptureController.h"
#import "YCTIDCardCaptureController.h"
#import "YCBankCardViewController.h"

@interface ViewController ()

@end

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"身份证识别";
    
    UIButton *IdCardBtn = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/4, 150, SCREEN_WIDTH/2, 50)];
    IdCardBtn.backgroundColor = [UIColor lightGrayColor];
    [IdCardBtn addTarget:self action:@selector(IdCardBtn:) forControlEvents:UIControlEventTouchUpInside];
    [IdCardBtn setTitle:@"身份证识别" forState:0];
    
    [self.view addSubview:IdCardBtn];
    
    UIButton *TWIdCardBtn = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/4, 250, SCREEN_WIDTH/2, 50)];
    TWIdCardBtn.backgroundColor = [UIColor lightGrayColor];
    [TWIdCardBtn addTarget:self action:@selector(TWIdCardBtn:) forControlEvents:UIControlEventTouchUpInside];
    [TWIdCardBtn setTitle:@"身份证国徽面识别" forState:0];
    
    [self.view addSubview:TWIdCardBtn];
    
    UIButton *bankCardBtn = [[UIButton alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/4, 350, SCREEN_WIDTH/2, 50)];
    bankCardBtn.backgroundColor = [UIColor lightGrayColor];
    [bankCardBtn addTarget:self action:@selector(bankCardBtn:) forControlEvents:UIControlEventTouchUpInside];
    [bankCardBtn setTitle:@"银行卡识别" forState:0];
    
    [self.view addSubview:bankCardBtn];
}

- (void)IdCardBtn:(UIButton *)sender {
    
    YCIDCardCaptureController *idcvc = [[YCIDCardCaptureController alloc]init];
    
    [self.navigationController pushViewController:idcvc animated:YES];
}

- (void)TWIdCardBtn:(UIButton *)sender {
    
    YCTIDCardCaptureController *idcvc = [[YCTIDCardCaptureController alloc]init];
    
    [self.navigationController pushViewController:idcvc animated:YES];
}

- (void)bankCardBtn:(UIButton *)sender
{
    YCBankCardViewController *bankvc = [[YCBankCardViewController alloc]init];
    [self.navigationController pushViewController:bankvc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
