//
//  ViewController.m
//  LKKit
//
//  Created by 崔露凯 on 16/4/21.
//  Copyright © 2016年 崔露凯. All rights reserved.
//

#import "ViewController.h"


#import "LKViewAttribute.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    UIView *orangeView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 60)];
    
     orangeView.lk_attribute
    .backgroundColor([UIColor redColor])
    .corner(30)
    .superView(self.view)
    .font(12)
    .textAlignment(NSTextAlignmentCenter)
    ;
    

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 200, 80)];
    label.lk_attribute
    .text(@"cuilufsdai")
    .textAlignment(NSTextAlignmentRight)
    .backgroundColor([UIColor redColor])
    .numberLines(1)
    .superView(self.view);
    
    
}


@end
