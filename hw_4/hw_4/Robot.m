//
//  Robot.m
//  hw_4
//
//  Created by Ирина on 29.10.2023.
//

#import "Robot.h"
NSString *direction;
@implementation Robot

-(instancetype)init {
   self = [super init];
    if (self) {
        _x = 0;
        _y = 0;
    }
    return self;
    }

-(void)run:(NSString *)direction {
    if ([direction isEqualToString:@"up"]) {
        self.y++;
    } else if ([direction isEqualToString:@"down"]) {
        self.y--;
    } else if ([direction isEqualToString:@"left"]) {
        self.x--;
    } else if ([direction isEqualToString:@"right"]) {
        self.x++;
    }
    NSLog(@"x = %li, y = %li", (long)_x, (long)_y);
}
@end
