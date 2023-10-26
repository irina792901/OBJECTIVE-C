//
//  Circle.h
//  hw_2
//
//  Created by Ирина on 24.10.2023.
//

#import <Foundation/Foundation.h>
#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Circle : Figure {
    @private double _radius;
}

-(instancetype)initWithRadiuss:(double)radius;

-(void)setRadius:(double)radius;
-(double)getRadius;

-(double)calculateArea;
-(double)calculatePerimeter;
-(void)printInfo;

@end

NS_ASSUME_NONNULL_END
