//
//  ZSRecordProgressView.m
//  VideoTest2
//
//  Created by zs mac on 16/8/23.
//  Copyright © 2016年 zs mac. All rights reserved.
//


#import "ZSRecordProgressView.h"

@implementation ZSRecordProgressView

- (void)setProgress:(CGFloat)progress {
    
    
    
    _progress = progress;
    [self setNeedsDisplay];
}

- (void)setProgressBgColor:(UIColor *)progressBgColor {
    _progressBgColor = progressBgColor;
    [self setNeedsDisplay];
}

- (void)setloadProgressColor:(UIColor *)loadProgressColor {
    _loadProgressColor = loadProgressColor;
    [self setNeedsDisplay];
}

- (void)setLoadProgress:(CGFloat)loadProgress {
    _loadProgress = loadProgress;
    [self setNeedsDisplay];
}

- (void)setProgressColor:(UIColor *)progressColor {
    _progressColor = progressColor;
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextAddRect(context, CGRectMake(0, 0, rect.size.width, rect.size.height));
    [self.progressBgColor set];
    CGContextSetAlpha(context, 0.5);
    CGContextDrawPath(context, kCGPathFill);
    CGContextAddRect(context, CGRectMake(0, 0, rect.size.width*self.loadProgress, rect.size.height));
    [self.progressBgColor set];
    CGContextSetAlpha(context, 1);
    CGContextDrawPath(context, kCGPathFill);
    CGContextAddRect(context, CGRectMake(0, 0, rect.size.width*self.progress, rect.size.height));
    [self.progressColor set];
    CGContextSetAlpha(context, 1);
    CGContextDrawPath(context, kCGPathFill);
}


/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

@end

