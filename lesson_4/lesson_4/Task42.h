//
//  Task42.h
//  lesson_4
//
//  Created by Ирина on 29.10.2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef int(^doubleint)(int, int);

@interface Task42 : NSObject
@property (nonatomic, copy, nullable) int (^myblock)(int, int);
-(void)printLog:(int(^)(int, int))block first:(int)first second:(int)second;
@end

NS_ASSUME_NONNULL_END
