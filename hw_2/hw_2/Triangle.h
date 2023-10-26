//
//  Triangle.h
//  hw_2
//
//  Created by Ирина on 24.10.2023.
//

#import <Foundation/Foundation.h>
#import "Figure.h"
NS_ASSUME_NONNULL_BEGIN

@interface Triangle : Figure{
    @private double _side1;
    @private double _side2;
    @private double _side3;
}

-(instancetype)initWithSides:(double)side1 side2:(double)side2 side3:(double)side3;

-(void)setSide1:(double)side1;
-(double)getSide1;
-(void)setSide2:(double)side2;
-(double)getSide2;
-(void)setSide3:(double)side3;
-(double)getSide3;

-(double)calculateArea;
-(double)calculatePerimeter;
-(void)printInfo;
@end

NS_ASSUME_NONNULL_END
