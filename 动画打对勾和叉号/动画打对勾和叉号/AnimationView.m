//
//  AnimationView.m
//  动画打对勾和叉号
//
//  Created by KOCHIAEE6 on 2019/4/29.
//  Copyright © 2019 KOCHIAEE6. All rights reserved.
//

#import "AnimationView.h"

@implementation AnimationView

- (instancetype)initWithFrame:(CGRect)frame withState:(BOOL)state {
    
    self = [super initWithFrame:frame];
    
    if(self) {
        
        if(state) {
            
            [self drawSuccessLine];
            
        }else
            
        {
            
            [self drawFailLine];
            
        }
        
    }
    
    return self;
    
}

-(void)drawSuccessLine {
    
    //[self removeFromSuperview];
    
    
    //曲线建立开始点和结束点
    
    //1.曲线的中心
    
    //2.曲线半径
    
    //3.开始角度
    
    //4.结束角度
    
    //5.顺/逆时针方向
//    NSLog(@"%@",self.center.x - self.bounds.size.width);
    UIBezierPath* path =[UIBezierPath bezierPathWithArcCenter:CGPointMake(self.center.x - self.frame.origin.x,self.center.y - self.frame.origin.y)radius:(self.frame.size.width - 5) / 2 startAngle:0 endAngle:M_PI*2 clockwise:YES]; // 半径需要减去线宽 再 乘以 0.5
    
    //对拐角和中心处理
    
    path.lineCapStyle=kCGLineCapRound;
    
    path.lineJoinStyle=kCGLineCapRound;
    
    //对号第一部分的起始
    
    [path moveToPoint:CGPointMake(self.frame.size.width/5,self.frame.size.width/2)];
    
    CGPoint pl =CGPointMake(self.frame.size.width/5*2,self.frame.size.width/4*3);
    
    [path addLineToPoint:pl];
    
    //对号第二部分起始
    
    CGPoint p2 =CGPointMake(self.frame.size.width/8.0*7,self.frame.size.width/4.0+8);
    
    [path addLineToPoint:p2];
    
    CAShapeLayer*layer = [[CAShapeLayer alloc]init];
    
    //内部填充颜色
    
    layer.fillColor= [UIColor clearColor].CGColor;
    
    //线条颜色
    
    layer.strokeColor= [UIColor orangeColor].CGColor;
    
    //线条宽度
    
    layer.lineWidth=5;
    
    layer.path= path.CGPath;
    
    //动画设置
    
    CABasicAnimation*animation = [CABasicAnimation animationWithKeyPath:NSStringFromSelector(@selector(strokeEnd))];
    
    animation.fromValue=@0;
    
    animation.toValue=@1;
    
    animation.duration=1;
    
    [layer addAnimation:animation forKey:NSStringFromSelector(@selector(strokeEnd))];
    
    [self.layer addSublayer:layer];
    
    //[self addSubview:_logoView];
    
}

-(void)drawFailLine{
    
    [self removeFromSuperview];
    
   
    //曲线建立开始点和结束点
    
    //1.曲线的中心
    
    //2.曲线半径
    
    //3.开始角度
    
    //4.结束角度
    
    //5.顺/逆时针方向
    
    UIBezierPath * path=[UIBezierPath bezierPathWithArcCenter:CGPointMake(self.center.x - self.frame.origin.x,self.center.y - self.frame.origin.y)radius:self.frame.size.width/2 startAngle:0 endAngle:M_PI*2 clockwise:YES];
    
    //对拐角和中心处理
    
    path.lineCapStyle = kCGLineCapRound;
    
    path.lineJoinStyle = kCGLineCapRound;
    
    //对号第一部分的起始
    
    [path moveToPoint:CGPointMake(self.frame.size.width/4,self.frame.size.width/4)];
    
    CGPoint pl = CGPointMake(self.frame.size.width/4*3,self.frame.size.width/4*3);
    
    [path addLineToPoint:pl];
    
    //对号第二部分起始
    
    [path moveToPoint:CGPointMake(self.frame.size.width/4*3,self.frame.size.width/4)];
    
    CGPoint p2 = CGPointMake(self.frame.size.width/4.0,self.frame.size.width/4*3);
    
    [path addLineToPoint:p2];
    
    CAShapeLayer*layer = [[CAShapeLayer alloc]init];
    
    //内部填充颜色
    
    layer.fillColor = [UIColor clearColor].CGColor;
    
    //线条颜色
    
    layer.strokeColor = [UIColor orangeColor].CGColor;
    
    //线条宽度
    
    layer.lineWidth=5;
    
    layer.path= path.CGPath;
    
    //动画设置
    
    CABasicAnimation*animation = [CABasicAnimation animationWithKeyPath:NSStringFromSelector(@selector(strokeEnd))];
    
    animation.fromValue=@0;
    
    animation.toValue=@1;
    
    animation.duration=1;
    
    [layer addAnimation:animation forKey:NSStringFromSelector(@selector(strokeEnd))];
    
    [self.layer addSublayer:layer];
    
    //[self addSubview:_logoView];
    
}


@end
