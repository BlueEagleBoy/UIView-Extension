//
//  UIView+UIView___Extension.h
//

#import <UIKit/UIKit.h>

@interface UIView (UIView___Extension)

@property (nonatomic, copy) UIView *(^wm_backgroundColor)(UIColor *color);

@property (nonatomic, copy) UIView *(^wm_frame)(CGRect rect);

#pragma mark 直接给控件frame赋值
@property (nonatomic, assign) CGFloat x ;
@property (nonatomic, assign) CGFloat y ;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;

@end

@interface UIButton (UIButton___Extension)
#pragma mark Nomal状态button下各属性
//image
@property (nonatomic, copy) UIButton *(^wm_nomalImage)(NSString *nomalImageName);
//title
@property (nonatomic, copy) UIButton *(^wm_nomalTitle)(NSString *nomalTitle);
//titleColor
@property (nonatomic, copy) UIButton *(^wm_nomalTitleColor)(UIColor *color );
//backgroudImage
@property (nonatomic, copy) UIButton *(^wm_nomalBackgroundImage)(NSString *nomalBackgroundImageName);

#pragma mark Highlighted状态button下各属性
//image
@property (nonatomic, copy) UIButton *(^wm_highlightedImage)(NSString *highlightedImageName);
//title
@property (nonatomic, copy) UIButton *(^wm_highlightedTitle)(NSString *highlightedTitle);
//titleColor
@property (nonatomic, copy) UIButton *(^wm_highlightedTitleColor)(UIColor *color );
//backgroudImage
@property (nonatomic, copy) UIButton *(^wm_highlightedBackgroundImage)(NSString *highlightedBackgroundImageName);

#pragma mark Selected状态button下各属性

//image
@property (nonatomic, copy) UIButton *(^wm_selectedImage)(NSString *selectedImageName);
//title
@property (nonatomic, copy) UIButton *(^wm_selectedTitle)(NSString *selectedTitle);
//titleColor
@property (nonatomic, copy) UIButton *(^wm_selectedTitleColor)(UIColor *color );
//backgroudImage
@property (nonatomic, copy) UIButton *(^wm_selectedBackgroundImage)(NSString *selectedBackgroundImageName);

#pragma mark Disabled状态button下各属性

//image
@property (nonatomic, copy) UIButton *(^wm_disabledImage)(NSString *disabledImageName);
//title
@property (nonatomic, copy) UIButton *(^wm_disabledTitle)(NSString *disabledTitle);
//titleColor
@property (nonatomic, copy) UIButton *(^wm_disabledTitleColor)(UIColor *color );
//backgroudImage
@property (nonatomic, copy) UIButton *(^wm_disabledBackgroundImage)(NSString *disabledBackgroundImageName);

#pragma mark frame 及 textAlignment、font
//textAlignment
@property (nonatomic, copy) UIButton *(^wm_textAlignment)(NSTextAlignment textAlignment);
//frame
@property (nonatomic, copy) UIButton *(^wm_frame)(CGRect rect);
//font
@property (nonatomic, copy) UIButton *(^wm_font)(CGFloat size);
@end

@interface UILabel (Extension)
//label.text
@property (nonatomic, copy) UILabel *(^wm_title)(NSString *str);
//label.backgroundColor
@property (nonatomic, copy) UILabel *(^wm_backgroundColor)(UIColor * color);
//label.frame
@property (nonatomic, copy) UILabel *(^wm_frame)(CGRect rect);

//label.textAlignment
@property (nonatomic, copy) UILabel *(^wm_textAlignment)(NSTextAlignment textAlignment);

//font
@property (nonatomic, copy) UILabel *(^wm_font)(CGFloat size);
//textcolor
@property (nonatomic, copy) UILabel *(^wm_textColor)(UIColor *color);
@end

@interface UIImageView (Extension)
@property (nonatomic, copy) UIImageView *(^wm_backgroundColor)(UIColor *color);

@property (nonatomic, copy) UIImageView *(^wm_frame)(CGRect rect);

@property (nonatomic, copy) UIImageView *(^wm_image)(NSString *imageName);

@end

