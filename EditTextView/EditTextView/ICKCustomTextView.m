//
//  ICKCustomTextView.m
//  EditTextView
//
//  Created by a on 2019/1/10.
//  Copyright © 2019年 ZH. All rights reserved.
//

#import "ICKCustomTextView.h"
#import "UIColor+CZAddition.h"
#import "Masonry.h"
@interface ICKCustomTextView ()<UITextViewDelegate>
@property (nonatomic,strong) UITextView *textView;


@end
@implementation ICKCustomTextView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self == [super initWithFrame:frame]) {
        [self setupView];
    }
    return self;
}
- (void)setupView {
    [self addSubview:self.textView];
    [self addSubview:self.placeHolderLabel];
    [self.textView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.leading.trailing.equalTo(self);
    }];
    [self.placeHolderLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.textView).offset(5);
        make.top.equalTo(self.textView).offset(10);
        make.height.mas_offset(16);
    }];
}

#pragma mark - TextViewDelegate
#pragma mark - textViewDelegate -
//开始编辑
- (void)textViewDidBeginEditing:(UITextView *)textView {

}
//内容改变
- (void)textViewDidChange:(UITextView *)textView {
    NSLog(@"%@",textView.text);
    if (textView.text.length > 0) {
        self.placeHolderLabel.hidden = YES;
    }else {
        self.placeHolderLabel.hidden = NO;
    }
    
}
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    
    return YES;
}
//焦点发生改变
- (void)textViewDidChangeSelection:(UITextView *)textView{
    
    
}
//结束编辑
- (void)textViewDidEndEditing:(UITextView *)textView {
    
    
}
- (UITextView *)textView {
    
    if (!_textView) {
        _textView           = [[UITextView alloc]init];
        _textView.backgroundColor = [UIColor clearColor];
        _textView.font      = [UIFont systemFontOfSize:16];
        _textView.textColor = [UIColor cz_colorWithHex:999999];
        _textView.delegate  = self;
    }
    return _textView;
}
- (UILabel *)placeHolderLabel {
    if (!_placeHolderLabel) {
        _placeHolderLabel           = [[UILabel alloc]init];
        _placeHolderLabel.textColor = [UIColor cz_ToUIColorByStr:@"BBBBBB"];
        _placeHolderLabel.font      = [UIFont systemFontOfSize:16];
    }
    return _placeHolderLabel;
}
-(BOOL)firstColor:(UIColor*)firstColor secondColor:(UIColor*)secondColor
{
    if (CGColorEqualToColor(firstColor.CGColor, secondColor.CGColor))
    {
        NSLog(@"颜色相同");
        return YES;
    }
    else
    {
        NSLog(@"颜色不同");
        return NO;
    }
}
@end
