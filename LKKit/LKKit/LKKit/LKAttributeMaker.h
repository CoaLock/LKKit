//
//  LKAttributeMaker.h
//  LKKit
//
//  Created by 崔露凯 on 16/4/27.
//  Copyright © 2016年 崔露凯. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <objc/runtime.h>

/**
 *   base attributes for UIView
 */

@interface LKViewMaker : NSObject

@property (nonatomic, strong) UIView *view;

- (LKViewMaker* (^) (UIView *superView))superView;

- (LKViewMaker* (^) (UIColor *color))backgroundColor;

- (LKViewMaker* (^) (NSInteger tag))tag;

- (LKViewMaker* (^) (CGFloat corner))corner;

- (LKViewMaker* (^) (UIColor *color, CGFloat borderWidth))border;

- (LKViewMaker* (^) (CGFloat alpha))alpha;


- (LKViewMaker* (^) (CGFloat font))font;


@end


/**
 *   base attributes for UILabel
 */

@interface LKLabelMaker : LKViewMaker


- (LKLabelMaker* (^) (CGFloat font))font;

- (LKLabelMaker* (^) (UIColor *color))textColor;



@end






/** UILabel
 
 1.  font
 
 2.  textColor
 
 3.  textAligent
 
 4.  lineSpace
 
 5.  attributeString
 
 6.  numberLine
 
 */


