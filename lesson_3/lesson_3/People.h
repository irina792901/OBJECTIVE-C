//
//  People.h
//  lesson_3
//
//  Created by Ирина on 25.10.2023.
//

#import <Foundation/Foundation.h>
#import "MacBook.h"
NS_ASSUME_NONNULL_BEGIN

@interface People : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, weak) MacBook *macBook;

@end

NS_ASSUME_NONNULL_END
