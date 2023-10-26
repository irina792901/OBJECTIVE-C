//
//  Photographer.m
//  lesson_2
//
//  Created by Ирина on 23.10.2023.
//

#import "Photographer.h"

@implementation Photographer
- (instancetype)initWithCameraType:(CameraType)cameraType {
    self = [super init];
    if (self){
        _cameraType = cameraType;
        _startNumberOfPhoto = 0;
        _wage = 0;
    }
    return self;
}

- (instancetype)initWithCameraType:(CameraType)cameraType startNumberOfPhoto:(NSInteger)startNumberOfPhoto {
    self = [super init];
    if (self){
        _cameraType = cameraType;
        _startNumberOfPhoto = startNumberOfPhoto;
        _wage = 0;
    }
    return self;
}

- (instancetype)initWithCameraType:(CameraType)cameraType startNumberOfPhoto:(NSInteger)startNumberOfPhoto wage:(NSInteger)wage {
    self = [super init];
    if (self){
        
        _cameraType = cameraType;
        _startNumberOfPhoto = startNumberOfPhoto;
        _wage = wage;
    }
    return self;
}

- (NSInteger)checkMoney {
    NSInteger k;
    switch (_cameraType) {
        case NIKON: k = 10;
            break;
        case CANON: k =5;
            break;
    }
    k *= _startNumberOfPhoto;
    return k;
}

- (void)dealloc
{
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)setCameraType:(CameraType)cameraType {
    _cameraType = cameraType;
}

- (CameraType)getCameraType {
    return _cameraType;
}

- (void)setStartNumberOfPhoto:(NSInteger)startNumberOfPhoto {
    _startNumberOfPhoto = startNumberOfPhoto;
}

- (NSInteger)getstartNumberOfPhoto {
    return _startNumberOfPhoto;
}

- (void)setWage:(NSInteger)wage {
    _wage = wage;
}

- (NSInteger)getWage {
    return _wage;
}
@end
