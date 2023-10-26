//
//  main.m
//  lesson_2
//
//  Created by Ирина on 23.10.2023.
//

#import <Foundation/Foundation.h>
#import "Photographer.h"
#import "Trainer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Photographer *photograph = [[Photographer alloc] initWithCameraType:NIKON startNumberOfPhoto:10];
        Trainer *trainer = [[Trainer alloc] initWithCameraType:CANON startNumberOfPhoto:5];
        
        NSLog(@"Money %d", [photograph checkMoney]);
        NSLog(@"Money %d", [trainer checkMoney]);
    }
}
