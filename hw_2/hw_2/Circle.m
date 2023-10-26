//
//  Circle.m
//  hw_2
//
//  Created by Ирина on 24.10.2023.
//

#import "Circle.h"

@implementation Circle
-(instancetype)initWithRadiuss:(double)radius{
    self = [super init];
    if (self) {
        _radius = radius;
    }
    return self;
}
-(void)setRadius:(double)radius{
    _radius = radius;
}
-(double)getRadius{
    return _radius;
}

-(double)calculateArea{
    return M_PI * _radius * _radius;
}

-(double)calculatePerimeter{
    return 2 * M_PI * _radius;
}

-(void)printInfo{
    NSLog(@"Круг радиуса %f\nплощадь %f\nпериметр %f", _radius,[self calculateArea], [self calculatePerimeter]);
}

-(void)dealloc{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

@end
