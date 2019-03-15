//
//  BCViewController.m
//  SXModuleB
//
//  Created by apple on 2019/3/15.
//  Copyright © 2019年 zsx. All rights reserved.
//

#import "BCViewController.h"
#import <Masonry/Masonry.h>
#import <ModuleRouter/ModuleRouter.h>
@interface BCViewController ()
@property(nonatomic,strong)UIButton *goToACBtn;
@end

@implementation BCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"BC";
    self.view.backgroundColor = UIColor.purpleColor;
    
    [self initUi];
}
-(void)goToACAction {
    [SXRouter BCToAC];
}
-(void)initUi {
    [self.view addSubview:self.goToACBtn];
    
    [self.goToACBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(100);
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
@end
