//
//  main.m
//  lesson_4
//
//  Created by Ирина on 29.10.2023.
//

#import <Foundation/Foundation.h>
#import "Task42.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        int (^sum)(int, int) = ^(int first, int second){
//            return first + second;
//        };
        doubleint sum = ^(int first, int second){
            return first + second;
        };
        
        
        int result = sum(12, 13);
        NSLog(@"result = %i", result);
        
        
        Task42 *task = [Task42 new];
        task.myblock = sum;
        int result2 = task.myblock(4, 5);
        NSLog(@"result = %i", result2);
        
        
        [task printLog:sum first:20 second:30];
    }
    return 0;
}
