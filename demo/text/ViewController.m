//
//  ViewController.m
//  text
//
//  Created by 杜守鹏 on 16/1/9.
//  Copyright © 2016年 杜守鹏. All rights reserved.
//
#import "ViewController.h"
#import "UIView+UIView___Extension.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setButton];
    [self setLabel];
//    [self setView];
    
    [self setupImageView];
    [self changeFrame];
}
#pragma mark  <button demo>
- (void)setButton{
    //设置frame\font以及button的nomal状态下的title，titleColor，image，backgroundColor
    UIButton *btn1 = [[UIButton alloc]init];
    btn1.wm_frame(CGRectMake(10, 10,100, 100)).
    wm_nomalTitle(@"good").
    wm_font(30).
    wm_nomalTitleColor([UIColor redColor]).
    wm_nomalImage(@"compose_add_background").
    wm_nomalBackgroundImage(@"new_feature_finish_button");
    
    //设置button的highlighted状态下的title，titleColor，image，backgroundColor
    btn1.wm_highlightedTitle(@"nice").
    wm_highlightedImage(@"compose_add_background_highlighted").
    wm_highlightedTitleColor([UIColor whiteColor]).
    wm_highlightedBackgroundImage(@"new_feature_finish_button_highlighted");
    
    // 设置button的selected和disabled状态下属性，使用wm_selected***** 和 wm_disabled*****
    
    [self.view addSubview:btn1];
}
#pragma mark   < label demo >
-(void)setLabel{
    //设置label的frame，title，textColor，font，backgroundColor，textAlignment（因没有提示，textAlignment属性建议使用系统方法设置）
    UILabel *label = [[UILabel alloc]init];
    label.wm_frame(CGRectMake(120, 120, 100, 100)).
    wm_title(@"haha").
    wm_font(25).wm_backgroundColor([UIColor blueColor]).wm_textAlignment(NSTextAlignmentCenter);
    [self.view addSubview:label];
}

#pragma mark <view demo>
-(void)setView{
    UIView *view = [[UIView alloc]init];
    //设置view的frame及backgroundColor
    view.wm_backgroundColor([UIColor yellowColor]).
    wm_frame(CGRectMake(220, 220, 100, 100));
    [self.view addSubview:view];
}

#pragma mark <imageView demo>
-(void)setupImageView{
    UIImageView *imageView = [[UIImageView alloc]init];
    //设置ImageView的frame，backgroundColor，image
    imageView.wm_frame(CGRectMake(200, 400, 150, 150)).
    wm_backgroundColor([UIColor grayColor]).
    wm_image(@"common_icon_membership_level3");
    [self.view addSubview:imageView];
}
#pragma mark <直接给控件frame中各属性赋值 demo>
-(void)changeFrame{
    //添加一个view
    UIView *view = [[UIView alloc]init];
    view.wm_backgroundColor([UIColor grayColor]).wm_frame(CGRectMake(0, 600, 50, 50));
    [self.view addSubview:view];
    //进行赋值修改
    view.x = 50;
    view.centerX = 100;
    view.y = 650;
    view.width = 200;
}

@end









