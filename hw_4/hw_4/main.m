//
//  main.m
//  hw_4
//
//  Created by Ирина on 29.10.2023.
//

#import <Foundation/Foundation.h>
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Robot *robot = [Robot new];
        [robot run:@"up"];
        [robot run:@"right"];
        [robot run:@"up"];
        [robot run:@"right"];
        [robot run:@"right"];
        [robot run:@"down"];
        [robot run:@"down"];
        [robot run:@"down"];
        [robot run:@"down"];
        [robot run:@"down"];
        [robot run:@"sown"];
        [robot run:@"sown"];
        [robot run:@"sown"];
        [robot run:@"sown"];
        [robot run:@"sown"];
        [robot run:@"left"];
        [robot run:@"left"];
        [robot run:@"left"];
    }
    return 0;
}
