//
//  LKAttributeMaker.m
//  LKKit
//
//  Created by 崔露凯 on 16/4/27.
//  Copyright © 2016年 崔露凯. All rights reserved.
//

#import "LKAttributeMaker.h"

@implementation LKViewMaker


- (LKViewMaker* (^) (UIView *superView))superView {
    
    return  ^(UIView *superView) {
        
        
        
        [superView addSubview:self.view];
        return self;
    };
}


- (LKViewMaker *(^)(UIColor *color))backgroundColor {
    
    return  ^(UIColor *color) {
        
        self.view.backgroundColor = color;
        return self;
    };
}

- (LKViewMaker* (^) (NSInteger tag))tag {

    return  ^(NSInteger tag) {
        
        self.view.tag = tag;
        return self;
    };
}


- (LKViewMaker* (^) (CGFloat corner))corner {

    return  ^(CGFloat corner) {
        
        self.view.layer.cornerRadius = corner;
        self.view.layer.masksToBounds = YES;
        return self;
    };
}

- (LKViewMaker* (^) (UIColor *color, CGFloat borderWidth))border {

    return  ^(UIColor *color, CGFloat borderWidth) {
        
        self.view.layer.borderWidth = borderWidth;
        self.view.layer.borderColor = color.CGColor;
        return self;
    };
}

- (LKViewMaker* (^) (CGFloat alpha))alpha {
    
    return  ^(CGFloat alpha) {
        
        self.view.alpha = alpha;
        return self;
    };
}

- (LKViewMaker* (^) (CGFloat font))font {
    
    return  ^(CGFloat font) {
        
        if ([self.view respondsToSelector:@selector(setFont:)]) {
            [self.view performSelector:@selector(setFont:) withObject:[UIFont systemFontOfSize:font]];
        }
        return self;
    };
}


@end


@implementation LKLabelMaker

- (LKLabelMaker* (^) (CGFloat font))font {

    return  ^(CGFloat font) {
        
        [self.view performSelector:@selector(setFont:) withObject:[UIFont systemFontOfSize:font]];
        return self;
    };
}

- (LKLabelMaker* (^) (UIColor *color))textColor {

    return  ^(UIColor *color) {
        
        [self.view performSelector:@selector(setTextColor:) withObject:color];
        return self;
    };
}




@end


