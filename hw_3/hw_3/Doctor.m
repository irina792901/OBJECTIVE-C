//
//  Doctor.m
//  hw_3
//
//  Created by Ирина on 25.10.2023.
//

#import "Doctor.h"

@implementation Doctor
-(void)prescribeMedication{
    NSLog(@"Доктор назначает пилюлю");
    [self.delegate takeMedication];
}
@end
