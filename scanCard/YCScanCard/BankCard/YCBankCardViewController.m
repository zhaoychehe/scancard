//
//  YCBankCardViewController.m
//  scanCard
//
//  Created by ABC on 2018/5/7.
//  Copyright © 2018年 scanCard. All rights reserved.
//

#import "YCBankCardViewController.h"
#import "YCBankCardView.h"

#import "YCBankCardDetailViewController.h"

@interface YCBankCardViewController ()

@property (nonatomic, strong) YCBankCardView *FBYBankCardView;

@end

@implementation YCBankCardViewController

-(void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.cameraManager doSomethingWhenWillDisappear];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.cameraManager doSomethingWhenWillAppear];
}

- (YCScanBankCard *)cameraManager {
    if (!_cameraManager) {
        _cameraManager = [[YCScanBankCard alloc] init];
    }
    return _cameraManager;
}

- (YCBankCardView *)FBYBankCardView {
    if(!_FBYBankCardView) {
        CGRect rect = [YCBankCardView getOverlayFrame:[UIScreen mainScreen].bounds];
        _FBYBankCardView = [[YCBankCardView alloc] initWithFrame:rect];
    }
    return _FBYBankCardView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"银行卡扫描";
    
    [self.view insertSubview:self.FBYBankCardView atIndex:0];
    
    self.cameraManager.sessionPreset = AVCaptureSessionPreset1280x720;
    
    if ([self.cameraManager configBankScanManager]) {
        UIView *view = [[UIView alloc] initWithFrame:self.view.bounds];
        [self.view insertSubview:view atIndex:0];
        AVCaptureVideoPreviewLayer *preLayer = [AVCaptureVideoPreviewLayer layerWithSession: self.cameraManager.captureSession];
        preLayer.frame = [UIScreen mainScreen].bounds;
        
        preLayer.videoGravity = AVLayerVideoGravityResizeAspectFill;
        
        [view.layer addSublayer:preLayer];
        
        [self.cameraManager startSession];
        
    }
    else {
        NSLog(@"打开相机失败");
        [self.navigationController popViewControllerAnimated:YES];
    }
    __weak __typeof(&*self) weakSelf  = self;
    self.cameraManager.bankScanSuccessBlock = ^(YCBankCardModel *model) {
        [weakSelf showResult:model];
    };
    self.cameraManager.scanErrorBlock = ^(NSError *error) {
        
    };
//    [self.cameraManager.bankScanSuccess subscribeNext:^(id x) {
    //        [self showResult:x];
//    }];
//    [self.cameraManager.scanError subscribeNext:^(id x) {
//
//    }];
}

- (void)showResult:(id)result {
    YCBankCardModel *model = (YCBankCardModel *)result;
    
    YCBankCardDetailViewController *bcdvc = [[YCBankCardDetailViewController alloc]init];
    
    bcdvc.FBYBankCardModel = model;
    [self.navigationController pushViewController:bcdvc animated:YES];
    
    //    NSLog(@"%@",model.bankName);
    
    //    NSString *message = [NSString stringWithFormat:@"%@\n%@", model.bankName, model.bankNumber];
    //    UIAlertView *alertV = [[UIAlertView alloc] initWithTitle:@"扫描成功" message:message delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
    //    [alertV show];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
