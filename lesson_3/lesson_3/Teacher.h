//
//  Teacher.h
//  lesson_3
//
//  Created by Ирина on 25.10.2023.
//

#import <Foundation/Foundation.h>
#import "TeacherDelegate.h"
NS_ASSUME_NONNULL_BEGIN

@interface Teacher : NSObject
@property (nonatomic, weak, nullable) id<TeacherDelegate> delegate;
-(void)prepareHomework;

@end

NS_ASSUME_NONNULL_END
