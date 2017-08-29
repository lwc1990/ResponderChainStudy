//
//  DefineBtn.m
//  Demo
//
//  Created by cheyipai on 2017/8/29.
//  Copyright © 2017年 cheyipai. All rights reserved.
//

#import "DefineBtn.h"

@implementation DefineBtn

-(BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    NSLog(@"inside--%@",self.titleLabel.text);
    return [super pointInside:point withEvent:event];
}
-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    return [super hitTest:point withEvent:event];
}

@end
