//
//  YCIDCardDetailController.m
//  nav
//
//  Created by ABC on 2018/5/7.
//  Copyright © 2018年 ABC. All rights reserved.
//

#import "YCIDCardDetailController.h"
#import "YCCardIDInfo.h"
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface YCIDCardDetailController ()

@property(strong,nonnull)NSArray *contentArr;
@property(strong,nonnull)NSArray *titleArr;

@end

@implementation YCIDCardDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"身份证详细信息";
    
    NSLog(@"ctype====%c",_IDInfo.type);
    [self cardImage];
    
    [self content];
    
    
}

- (void)cardImage {
    
    UIImageView *cardImg = [[UIImageView alloc]initWithFrame:CGRectMake(10, 85, SCREEN_WIDTH-20, SCREEN_HEIGHT/3)];
    cardImg.image = _IDImage;
    
    [self.view addSubview:cardImg];
    
}

- (void)content {
    
    if(_IDInfo.num == NULL){
        
        _titleArr = @[@"签发机关：",@"有效期："];
        _contentArr = @[_IDInfo.issue,_IDInfo.valid];
        
    }else{
        
        _titleArr = @[@"姓名：",@"性别：",@"民族：",@"住址：",@"ID号："];
        _contentArr = @[_IDInfo.name,_IDInfo.gender,_IDInfo.nation,_IDInfo.address,_IDInfo.num];
        
    }
    
    
    for (int i = 0; i < _titleArr.count; i ++) {
        int count = 50*i;
        
        UILabel *titleLab = [[UILabel alloc]initWithFrame:CGRectMake(10, SCREEN_HEIGHT/3+100+count, SCREEN_WIDTH/3, 50)];
        titleLab.text = _titleArr[i];
        [self.view addSubview:titleLab];
        
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(10, SCREEN_HEIGHT/3+150+count, SCREEN_WIDTH-20, 1)];
        lab.backgroundColor = [UIColor lightGrayColor];
        [self.view addSubview:lab];
        
        UILabel *contentLab = [[UILabel alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/3, SCREEN_HEIGHT/3+100+count, SCREEN_WIDTH*2/3-30, 50)];
        contentLab.numberOfLines = 0;
        contentLab.text = _contentArr[i];
        [self.view addSubview:contentLab];
    }
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
