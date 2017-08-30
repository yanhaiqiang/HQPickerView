//
//  ViewController.m
//  HQPickerView
//
//  Created by admin on 2017/8/29.
//  Copyright © 2017年 judian. All rights reserved.
//

#import "ViewController.h"
#import "HQPickerView.h"
#import <Masonry.h>

@interface ViewController ()<HQPickerViewDelegate>
@property (nonatomic, strong) UIButton *button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button = button;
    [button setBackgroundColor:[UIColor blueColor]];
    [button setTitle:@"显示" forState:UIControlStateNormal];
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0);
        make.top.mas_equalTo(30);
    }];
    [button addTarget:self action:@selector(showPickerView) forControlEvents:UIControlEventTouchUpInside];
    
    
    
}

- (void)showPickerView {
    HQPickerView *picker = [[HQPickerView alloc]initWithFrame:self.view.bounds];
    picker.delegate = self ;
    picker.customArr = @[@"已婚",@"未婚",@"保密"];
    [self.view addSubview:picker];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectStr:(NSString *)string {
    NSLog(@"=====%@", string);
    [self.button setTitle:string forState:UIControlStateNormal];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
