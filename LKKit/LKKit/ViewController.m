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


@property (nonatomic, strong) UILabel *label;


@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    /**
        设置UIView属性
     */
    
    UIView *orangeView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 60)];
     orangeView.lk_attribute
    .backgroundColor([UIColor redColor])
    .corner(30)
    .superView(self.view)
    .font(12)
    .textAlignment(NSTextAlignmentCenter)
    ;
    

    /**
        设置UILabel属性     
     */
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 200, 80)];
    label.lk_attribute
    .text(@"cuilufsdai")
    .textAlignment(NSTextAlignmentRight)
    .backgroundColor([UIColor redColor])
    .numberLines(1)
    .superView(self.view);
    
    
    self.label = label;
    
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(changeValue) userInfo:nil repeats:YES];
    

    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"JenkinPlist.plist" ofType:nil];
    
    
    //NSData *data = [NSData dataWithContentsOfFile:filePath];
    
    NSDictionary *params = [NSDictionary dictionaryWithContentsOfFile:filePath];
    
    
    NSString *developerName = params[@"kDeveloperName"];
    
    
}


- (void)changeValue {
    
    
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"JenkinPlist.plist" ofType:nil];
    
    
    //NSData *data = [NSData dataWithContentsOfFile:filePath];
    
    NSDictionary *params = [NSDictionary dictionaryWithContentsOfFile:filePath];
    
    
    NSString *developerName = params[@"kDeveloperName"];
    
    NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"kDomainName"];
    
    if (version.length > 0) {
        _label.text = developerName;
    }
    
}




@end
