//
//  ViewController.m
//  EditTextView
//
//  Created by a on 2019/1/10.
//  Copyright © 2019年 ZH. All rights reserved.
//

#import "ViewController.h"
#import "ICKCustomTextView.h"
#import "UIColor+CZAddition.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cz_ToUIColorByStr:@"FFFCE4"];
    ICKCustomTextView *view = [[ICKCustomTextView alloc]init];
    view.frame = CGRectMake(50, 100, 300, 300);
    view.backgroundColor = self.view.backgroundColor;
    view.placeHolderLabel.text = @"写一个便签@需要知道的人";
    
    [self.view addSubview:view];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
