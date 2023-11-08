//
//  Robot.m
//  hw_6
//
//  Created by Ирина on 08.11.2023.
//

#import "Robot.h"

@implementation Robot

- (instancetype)initWithTileOrigin:(CGPoint)points andColor:(NSString *)robotName {
    self = [super init];
    if (self){
        self.points = points;
        self.robotName = robotName;
    }
    return self;
}
- (void)encodeWithCoder:(nonnull NSCoder *)coder {
    [coder encodeObject:self.robotName forKey:@"name"];
    [coder encodeFloat:self.points.x forKey:@"pointX"];
    [coder encodeFloat:self.points.y forKey:@"pointY"];
}

- (nullable instancetype)initWithCoder:(nonnull NSCoder *)coder {
    self = [super init];
    if (self){
        self.robotName = [coder decodeObjectForKey:@"name"];
        float x = [coder decodeFloatForKey:@"pointX"];
        float y = [coder decodeFloatForKey:@"pointY"];
        self.points = CGPointMake(x, y);
    }
    return self;}

@end
