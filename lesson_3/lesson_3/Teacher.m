//
//  Teacher.m
//  lesson_3
//
//  Created by Ирина on 25.10.2023.
//

#import "Teacher.h"

@implementation Teacher
-(void)prepareHomework{
    NSLog(@"Teacher preparing homewowwrk");
    [self.delegate doHomework];
}
@end
