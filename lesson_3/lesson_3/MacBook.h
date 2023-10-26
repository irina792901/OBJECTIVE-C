//
//  MacBook.h
//  lesson_3
//
//  Created by Ирина on 25.10.2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class People;

@interface MacBook : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic) NSInteger storage;
@property (nonatomic, strong) People *people;

@end

NS_ASSUME_NONNULL_END
