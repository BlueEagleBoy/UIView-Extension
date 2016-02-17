//
//  UIView+UIView___Extension.m
//

#import "UIView+UIView___Extension.h"

@implementation UIView (UIView___Extension)
-(void)setWm_frame:(UIView *(^)(CGRect))wm_frame{}

-(UIView *(^)(CGRect))wm_frame{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}



-(void)setWm_backgroundColor:(UIView *(^)(UIColor *))wm_backgroundColor{}

-(UIView *(^)(UIColor *))wm_backgroundColor{
    
    return ^(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}
#pragma mark 直接给控件frame赋值

-(void)setX:(CGFloat)x{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
    
}

-(void)setY:(CGFloat)y{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

-(void)setWidth:(CGFloat)width{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

-(void)setHeight:(CGFloat)height{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

-(void)setOrigin:(CGPoint)origin{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

-(void)setSize:(CGSize)size{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}
-(void)setCenterX:(CGFloat)centerX{
    CGPoint center = self.center;
    center.x = centerX;
    self.center = center;
}
-(void)setCenterY:(CGFloat)centerY{
    CGPoint center = self.center;
    center.y = centerY;
    self.center = center;
}

-(CGFloat)centerY{
    return self.center.y;
}
-(CGFloat)centerX{
    return self.center.x;
}
-(CGFloat)x{
    return self.frame.origin.x;
}

-(CGFloat)y{
    return self.frame.origin.y;
}

-(CGFloat)width{
    return self.frame.size.width;
}

-(CGFloat)height{
    return self.frame.size.height;
}

-(CGSize)size{
    return self.frame.size;
}

-(CGPoint)origin{
    return self.frame.origin;
}




@end


@implementation UIButton (UIButton___Extension)
#pragma mark Nomal状态button下各属性重写
//image
-(void)setWm_nomalImage:(UIButton *(^)(NSString *))wm_nomalImage{}
-(UIButton *(^)(NSString *))wm_nomalImage{
    return ^(NSString *str){
        [self setImage:[UIImage imageNamed:str] forState:UIControlStateNormal];
        return self;
    };
}
////title
-(void)setWm_nomalTitle:(UIButton *(^)(NSString *))wm_nomalTitle{}
-(UIButton *(^)(NSString *))wm_nomalTitle{
    return ^(NSString *str){
        [self setTitle:str forState:UIControlStateNormal];
        return self;
    };
}

////titleColor
-(void)setWm_nomalTitleColor:(UIButton *(^)(UIColor *))wm_nomalTitleColor{}
-(UIButton *(^)(UIColor *))wm_nomalTitleColor{
    return ^(UIColor *color){
        [self setTitleColor:color forState:UIControlStateNormal];
        return self;
    };
}

////backgroudImage
-(void)setWm_nomalBackgroundImage:(UIButton *(^)(NSString *))st_nomalBackgroundImage{}

-(UIButton *(^)(NSString *))wm_nomalBackgroundImage{
    return ^(NSString *str ){
        [self setBackgroundImage:[UIImage imageNamed:str] forState:UIControlStateNormal];
        return self;
    };
}

#pragma mark Highlighted状态button下各属性重写
//image
-(void)setWm_highlightedImage:(UIButton *(^)(NSString *))wm_highlightedImage{}
-(UIButton *(^)(NSString *))wm_highlightedImage{
    return ^(NSString *str){
        [self setImage:[UIImage imageNamed:str] forState:UIControlStateHighlighted];
        return self;
    };
}
////title
-(void)setWm_highlightedTitle:(UIButton *(^)(NSString *))wm_highlightedTitle{}
-(UIButton *(^)(NSString *))wm_highlightedTitle{
    return ^(NSString *str){
        [self setTitle:str forState:UIControlStateHighlighted];
        return self;
    };
}

////titleColor
-(void)setWm_highlightedTitleColor:(UIButton *(^)(UIColor *))st_highlightedTitleColor{}
-(UIButton *(^)(UIColor *))wm_highlightedTitleColor{
    return ^(UIColor *color){
        [self setTitleColor:color forState:UIControlStateHighlighted];
        return self;
    };
}

////backgroudImage
-(void)setWm_highlightedBackgroundImage:(UIButton *(^)(NSString *))st_highlightedBackgroundImage{}
-(UIButton *(^)(NSString *))wm_highlightedBackgroundImage{
    return ^(NSString *str ){
        [self setBackgroundImage:[UIImage imageNamed:str] forState:UIControlStateHighlighted];
        return self;
    };
}

#pragma mark Selected状态button下各属性重写
//image
-(void)setWm_selectedImage:(UIButton *(^)(NSString *))wm_selectedImage{}
-(UIButton *(^)(NSString *))wm_selectedImage{
    return ^(NSString *str){
        [self setImage:[UIImage imageNamed:str] forState:UIControlStateSelected];
        return self;
    };
}
////title
-(void)setWm_selectedTitle:(UIButton *(^)(NSString *))wm_selectedTitle{}
-(UIButton *(^)(NSString *))wm_selectedTitle{
    return ^(NSString *str){
        [self setTitle:str forState:UIControlStateSelected];
        return self;
    };
}

////titleColor
-(void)setWm_selectedTitleColor:(UIButton *(^)(UIColor *))wm_selectedTitleColor{}
-(UIButton *(^)(UIColor *))wm_selectedTitleColor{
    return ^(UIColor *color){
        [self setTitleColor:color forState:UIControlStateSelected];
        return self;
    };
}

////backgroudImage
-(void)setWm_selectedBackgroundImage:(UIButton *(^)(NSString *))wm_selectedBackgroundImage{}
-(UIButton *(^)(NSString *))wm_selectedBackgroundImage{
    return ^(NSString *str ){
        [self setBackgroundImage:[UIImage imageNamed:str] forState:UIControlStateSelected];
        return self;
    };
}

#pragma mark disabled状态button下各属性重写
//image
-(void)setWm_disabledImage:(UIButton *(^)(NSString *))wm_disabledImage{}
-(UIButton *(^)(NSString *))wm_disabledImage{
    return ^(NSString *str){
        [self setImage:[UIImage imageNamed:str] forState:UIControlStateDisabled];
        return self;
    };
}
////title
-(void)setWm_disabledTitle:(UIButton *(^)(NSString *))wm_disabledTitle{}
-(UIButton *(^)(NSString *))wm_disabledTitle{
    
    return ^(NSString *str){
        [self setTitle:str forState:UIControlStateDisabled];
        return self;
    };
    
}

////titleColor
-(void)setWm_disabledTitleColor:(UIButton *(^)(UIColor *))wm_disabledTitleColor{}
-(UIButton *(^)(UIColor *))wm_disabledTitleColor{
    return ^(UIColor *color){
        [self setTitleColor:color forState:UIControlStateDisabled];
        return self;
    };
}

////backgroudImage
-(void)setWm_disabledBackgroundImage:(UIButton *(^)(NSString *))wm_disabledBackgroundImage{}
-(UIButton *(^)(NSString *))wm_disabledBackgroundImage{
    return ^(NSString *str ){
        [self setBackgroundImage:[UIImage imageNamed:str] forState:UIControlStateDisabled];
        return self;
    };
}

#pragma mark textAlignment 及 frame
-(void)setWm_textAlignment:(UIButton *(^)(NSTextAlignment))wm_textAlignment{};

-(UIButton *(^)(NSTextAlignment))wm_textAlignment{
    return ^(NSTextAlignment textAlignment){
        
        self.titleLabel.textAlignment = textAlignment;
        return self;
    };
    
}


-(void)setWm_frame:(UIButton *(^)(CGRect))wm_frame{}

-(UIButton *(^)(CGRect))wm_frame{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

-(void)setWm_font:(UIButton *(^)(CGFloat))wm_font{}
-(UIButton *(^)(CGFloat))wm_font{
    return ^(CGFloat size){
        self.titleLabel.font = [UIFont systemFontOfSize:size];
        return self;
    };
}

@end

@implementation UILabel (Extension)
#pragma mark  label.text
-(void)setWm_title:(UILabel *(^)(NSString *))wm_title{}

-(UILabel *(^)(NSString *))wm_title{
    return ^(NSString *str){
        self.text =str;
        return self;
    };
}

#pragma mark label.backgroundColor
-(void)setWm_backgroundColor:(UILabel *(^)(UIColor *))set_backgroundColor{}

-(UILabel *(^)(UIColor *))wm_backgroundColor{
    
    return ^(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}

-(void)setWm_frame:(UILabel *(^)(CGRect))wm_frame{}

-(UILabel *(^)(CGRect))wm_frame{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}





#pragma mark label.textAlignment
-(void)setWm_textAlignment:(UILabel *(^)(NSTextAlignment))wm_textAlignment{};

-(UILabel *(^)(NSTextAlignment))wm_textAlignment{
    return ^(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
    
}

#pragma mark label.frame


#pragma mark label.font
-(void)setWm_font:(UILabel *(^)(CGFloat))wm_font{}
-(UILabel *(^)(CGFloat))wm_font{
    return ^(CGFloat size){
        self.font = [UIFont systemFontOfSize:size];
        return self;
    };
    
}
#pragma mark label.textColor
-(void)setWm_textColor:(UILabel *(^)(UIColor *))wm_textColor{}
-(UILabel *(^)(UIColor *))wm_textColor{
    return ^(UIColor *color){
        self.textColor = color;
        return self;
    };
}
@end

@implementation UIImageView (Extension)
-(void)setWm_frame:(UIImageView *(^)(CGRect))wm_frame{}

-(UIImageView *(^)(CGRect))wm_frame{
    return ^(CGRect rect){
        self.frame = rect;
        return self;
    };
}

-(void)setWm_backgroundColor:(UIImageView *(^)(UIColor *))set_backgroundColor{}

-(UIImageView *(^)(UIColor *))wm_backgroundColor{
    return ^(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}

-(void)setWm_image:(UIImageView *(^)(NSString *))wm_image{}
-(UIImageView *(^)(NSString *))wm_image{
    return ^(NSString *str){
        self.image = [UIImage imageNamed:str];
        return self;
    };
    
}
@end

