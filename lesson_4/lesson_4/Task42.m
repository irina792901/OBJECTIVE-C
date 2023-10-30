//
//  Task42.m
//  lesson_4
//
//  Created by Ирина on 29.10.2023.
//

#import "Task42.h"

@implementation Task42
-(void)printLog:(int(^)(int, int))block first:(int)first second:(int)second {
    int result = block(first, second);
    NSLog(@"Result %i + %i = %i", first, second, result);
}
@end
