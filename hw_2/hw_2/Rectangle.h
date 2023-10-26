//
//  Rectangle.h
//  hw_2
//
//  Created by Ирина on 24.10.2023.
//

#import <Foundation/Foundation.h>
#import "Figure.h"

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : Figure{
    @private double _width;
    @private double _height;
}

-(instancetype)initWithWidthAndHeight:(double)width height:(double)height;

-(void)setWidth:(double)width;
-(double)getWidth;

-(void)setHeight:(double)height;
-(double)getHeight;

-(double)calculateArea;
-(double)calculatePerimeter;
-(void)printInfo;

@end

NS_ASSUME_NONNULL_END
