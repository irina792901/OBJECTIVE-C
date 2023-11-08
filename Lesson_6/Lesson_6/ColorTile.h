//
//  ColorTile.h
//  Lesson_6
//
//  Created by Ирина on 07.11.2023.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ColorTile : NSObject <NSCoding>
@property(nonatomic) CGPoint tileOrigin;
@property(nonatomic) UIColor* tileColor;
-(instancetype) initWithTileOrigin:(CGPoint) point andColor:(UIColor*) color;

@end

NS_ASSUME_NONNULL_END
