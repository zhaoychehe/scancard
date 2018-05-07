//
//  YCScanBankCardBase.h
//  scanCard
//
//  Created by ABC on 2018/5/7.
//  Copyright © 2018年 scanCard. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>
//#import <ReactiveCocoa/ReactiveCocoa.h>
#import "YCCardRectManager.h"
#import "YCBankCardSearch.h"
#import "UIImage+CardExtend.h"
#import "YCBankCardModel.h"
#import "exbankcard.h"
#import "excards.h"

typedef enum : NSUInteger {
    BankScanType,
    IDScanType,
} kScanType;

@interface YCScanBankCardBase : NSObject <AVCaptureVideoDataOutputSampleBufferDelegate, AVCaptureAudioDataOutputSampleBufferDelegate,AVCaptureMetadataOutputObjectsDelegate>

@property (nonatomic, assign) BOOL                      verify;

@property (nonatomic, assign) kScanType scanType;

//@property (nonatomic, strong) RACSubject *receiveSubject;
//@property (nonatomic, strong) RACSubject *bankScanSuccess;
//@property (nonatomic, strong) RACSubject *scanError;
@property (nonatomic, copy) void(^receiveSubjectBlock)(id x);
@property (nonatomic, copy) void(^bankScanSuccessBlock)(YCBankCardModel *model);
@property (nonatomic, copy) void(^scanErrorBlock)(NSError *error);

@property (nonatomic, strong) AVCaptureSession *captureSession;

@property (nonatomic, copy) NSString *sessionPreset; // 图片质量

@property (nonatomic, assign) BOOL isInProcessing;

@property (nonatomic, assign) BOOL isHasResult;

//出流
@property (nonatomic, strong) AVCaptureVideoDataOutput *videoDataOutput;
//输入流
@property (nonatomic, strong) AVCaptureDeviceInput *activeVideoInput;

// 能否切换前置后置
- (BOOL)canSwitchCameras;

- (AVCaptureDevice *)activeCamera;

- (AVCaptureDevice *)inactiveCamera;
// 闪关灯
- (AVCaptureFlashMode)flashMode;
// 有无手电筒
- (BOOL)cameraHasTorch;

- (AVCaptureTorchMode)torchMode;
// 能否调整焦距
- (BOOL)cameraSupportsTapToFocus;

@end
