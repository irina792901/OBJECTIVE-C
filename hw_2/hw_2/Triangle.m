//
//  Triangle.m
//  hw_2
//
//  Created by Ирина on 24.10.2023.
//

#import "Triangle.h"

@implementation Triangle

-(instancetype)initWithSides:(double)side1 side2:(double)side2 side3:(double)side3 {
    self = [super init];
    if (self){
        _side1 = side1;
        _side2 = side2;
        _side3 = side3;
    }
    return self;
}
-(void)setSide1:(double)side1 {
    _side1 = side1;
}
-(double)getSide1{
    return _side1;
}

-(void)setSide2:(double)side2{
    _side2 = side2;
}
-(double)getSide2{
    return _side2;
}

-(void)setSide3:(double)side3{
    _side3 = side3;
}
-(double)getSide3{
    return _side3;
}

-(double)calculateArea{
    double p = (_side1 + _side2 + _side3)/2;
    return sqrt(p * (p - _side1) * (p - _side2) * (p - _side3));
}
-(double)calculatePerimeter{
    return _side1 + _side2 + _side3;
}

-(void)printInfo{
    NSLog(@"Треугольник со сторонами %f, %f и %f\nплощадь %f\nпериметр %f", _side1, _side2, _side3, [self calculateArea], [self calculatePerimeter]);
}

-(void)dealloc{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
