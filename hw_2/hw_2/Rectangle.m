//
//  Rectangle.m
//  hw_2
//
//  Created by Ирина on 24.10.2023.
//

#import "Rectangle.h"

@implementation Rectangle
-(instancetype)initWithWidthAndHeight:(double)width height:(double)height{
    self = [super init];
    if (self) {
        _width = width;
        _height = height;
    }
    return self;
}
-(void)setWidth:(double)width{
    _width = width;
}
-(double)getWidth{
    return _width;
}
-(void)setHeight:(double)height{
    _height = height;
}
-(double)getHeight{
    return _height;
}

-(double)calculateArea{
    return _width * _height;
}
-(double)calculatePerimeter{
    return 2*(_width+_height);
}
-(void)printInfo{
    NSLog(@"Прямоугольник со сторонами %f и %f\nплощадь %f\nпериметр %f  ", _width, _height, [self calculateArea], [self calculatePerimeter]);
}
-(void)dealloc{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}
@end
