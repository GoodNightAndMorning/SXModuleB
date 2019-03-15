//
//  BAViewController.m
//  SXModuleB
//
//  Created by apple on 2019/3/15.
//  Copyright © 2019年 zsx. All rights reserved.
//

#import "BAViewController.h"
#import <Masonry/Masonry.h>
#import <ModuleRouter/ModuleRouter.h>
@interface BAViewController ()
@property(nonatomic,strong)UIButton *goToABBtn;
@property(nonatomic,strong)UIButton *goToBBBtn;
@end

@implementation BAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"BA";
    self.view.backgroundColor = UIColor.orangeColor;
    
    [self initUi];
}
-(void)goToABAction {
    [SXRouter BAToABWithOrderId:@"200002" andBlock:^{
        NSLog(@"====BA to AB block");
    }];
}
-(void)goToBBAction {
    [SXRouter BAToBB];
}
-(void)initUi {
    [self.view addSubview:self.goToABBtn];
    [self.view addSubview:self.goToBBBtn];
    
    [self.goToABBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(100);
    }];
    [self.goToBBBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.goToABBtn.mas_bottom).offset(40);
    }];
}
-(UIButton *)goToABBtn {
    if (!_goToABBtn) {
        _goToABBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        [_goToABBtn setTitle:@"go to AB" forState:UIControlStateNormal];
        [_goToABBtn addTarget:self action:@selector(goToABAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _goToABBtn;
}
-(UIButton *)goToBBBtn {
    if (!_goToBBBtn) {
        _goToBBBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        [_goToBBBtn setTitle:@"go to BB" forState:UIControlStateNormal];
        [_goToBBBtn addTarget:self action:@selector(goToBBAction) forControlEvents:UIControlEventTouchUpInside];
    }
    return _goToBBBtn;
}

@end
