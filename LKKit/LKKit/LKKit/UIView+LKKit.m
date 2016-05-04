//
//  UIView+LKKit.m
//  LKKit
//
//  Created by 崔露凯 on 16/4/21.
//  Copyright © 2016年 崔露凯. All rights reserved.
//

#import "UIView+LKKit.h"

@implementation UIView (LKKit)



- (LKViewMaker*)lk_view {

        LKViewMaker *maker = [[LKViewMaker alloc] init];
    
        maker.view = self;
        return maker;
}

@end


@implementation UILabel (LKKit)

- (LKLabelMaker *)lk_label {

    LKLabelMaker *maker = [[LKLabelMaker alloc] init];
    maker.view = self;
    return maker;
}


@end








//- (instancetype)attributeMaker {
//
//    LKViewMaker *maker = nil;
//    if ([self isKindOfClass:[UILabel class]]) {
//
//        maker = [[LKLabelMaker alloc] init];
//    }
//    else if ([self isKindOfClass:[UIImageView class]]) {
//
//
//    }
//    else if ([self isKindOfClass:[UIButton class]]) {
//
//    }
//    else {
//       maker = [[LKViewMaker alloc] init];
//    }
//
//    maker.view = self;
//
//
//    return maker;
//}
