//
//  BBViewController.m
//  SXModuleB
//
//  Created by apple on 2019/3/15.
//  Copyright © 2019年 zsx. All rights reserved.
//

#import "BBViewController.h"
#import <Masonry/Masonry.h>
#import <ModuleRouter/ModuleRouter.h>
@interface BBViewController ()
@property(nonatomic,strong)UIButton *goToACBtn;
@property(nonatomic,strong)UIButton *goToBCBtn;
@end

@implementation BBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"BB";
    self.view.backgroundColor = UIColor.blueColor;
    
    [self initUi];
}

-(void)goToACAction {
    [SXRouter BBToAV];
}
-(void)goToBCAction {
    [SXRouter BBToBC];
}
-(void)initUi {
    [self.view addSubview:self.goToACBtn];
    [self.view addSubview:self.goToBCBtn];
    
    [self.goToACBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(100);
    }];
    [self.goToBCBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.goToACBtn.mas_bottom).offset(40);
    }];
}
-(UIButton *)goToACBtn {
    if (!_goToACBtn) {
        _goToACBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        [_goToACBtn setTitle:@"go to AC" forState:UIControlStateNormal];
        [_goToACBtn addTarget:self action:@selector(goToACBtn) forControlEvents:UIControlEventTouchUpInside];
    }
    return _goToACBtn;
}
-(UIButton *)goToBCBtn {
    if (!_goToBCBtn) {
        _goToBCBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        [_goToBCBtn setTitle:@"go to BC" forState:UIControlStateNormal];
        [_goToBCBtn addTarget:self action:@selector(goToBCBtn) forControlEvents:UIControlEventTouchUpInside];
    }
    return _goToBCBtn;
}

@end
