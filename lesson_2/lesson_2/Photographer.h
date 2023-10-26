//
//  Photographer.h
//  lesson_2
//
//  Created by Ирина on 23.10.2023.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM (NSInteger, CameraType){
    CANON,
    NIKON
};

@interface Photographer : NSObject {
    @private CameraType _cameraType;
    @private NSInteger _startNumberOfPhoto;
    @private NSInteger _wage;
}

-(instancetype)initWithCameraType:(CameraType)cameraType;
-(instancetype)initWithCameraType:(CameraType)cameraType startNumberOfPhoto:(NSInteger)startNumberOfPhoto;
-(instancetype)initWithCameraType:(CameraType)cameraType startNumberOfPhoto:(NSInteger)startNumberOfPhoto wage:(NSInteger)wage;

-(void)setCameraType:(CameraType)cameraType;
-(CameraType)getCameraType;

-(void)setStartNumberOfPhoto:(NSInteger)startNumberOfPhoto;
-(NSInteger)getstartNumberOfPhoto;

-(void)setWage:(NSInteger)wage;
-(NSInteger)getWage;

-(NSInteger)checkMoney;

@end

NS_ASSUME_NONNULL_END
