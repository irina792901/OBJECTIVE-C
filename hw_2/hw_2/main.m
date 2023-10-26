//
//  main.m
//  hw_2
//
//  Created by Ирина on 23.10.2023.
//

#import <Foundation/Foundation.h>
#import "Figure.h"
#import "Circle.h"
#import "Rectangle.h"
#import "Triangle.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray<Figure *> *figures = [NSMutableArray array];
        Rectangle *rectangle = [[Rectangle alloc] initWithWidthAndHeight:4 height:5];
        Triangle *triangle = [[Triangle alloc] initWithSides:3 side2:4 side3:5];
        Circle *circle = [[Circle alloc] initWithRadiuss:3];
        
        [figures addObject:rectangle];
        [figures addObject:triangle];
        [figures addObject:circle];
        
        for (Figure *figure in figures) {
            [figure printInfo];
        }
    }
    return 0;
}
