//
//  Robot.h
//  hw_6
//
//  Created by Ирина on 08.11.2023.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Robot : NSObject <NSCoding>

@property(nonatomic) CGPoint points;
@property(nonatomic) NSString * robotName;
-(instancetype) initWithPoints:(CGPoint) points andName:(NSString *) robotName;
@end

NS_ASSUME_NONNULL_END
