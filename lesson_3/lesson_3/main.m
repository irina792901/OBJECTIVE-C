//
//  main.m
//  lesson_3
//
//  Created by Ирина on 25.10.2023.
//

#import <Foundation/Foundation.h>
#import "MacBook.h"
#import "People.h"
#import "Teacher.h"
#import "Student.h"

struct IPhone {
    NSString *name;
    NSInteger storage;
};
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MacBook *macBookPro = [MacBook new];
        macBookPro.name = @"MacBookPRO";
        macBookPro.storage = 512;
        
        MacBook *macBookAir = macBookPro;
        macBookAir.name = @"MacBookAIR";
        
        NSLog(@"%@ %d", macBookPro.name, (int)macBookPro.storage);
        NSLog(@"%@ %d", macBookAir.name, (int)macBookAir.storage);
        
        
        struct IPhone iphone15;
        struct IPhone iphone14;
        
        iphone15.name =@"IPhone15";
        iphone15.storage = 256;
        iphone14 = iphone15;
        iphone14.name = @"IPhone14";
        
        NSLog(@"%@ %d", iphone15.name, (int)iphone15.storage);
        NSLog(@"%@, %d", iphone14.name, (int)iphone14.storage);
        
        People *people = [People new];
        macBookPro.people = people;
        people.name = @"Vasya";
        people.macBook = macBookPro;
        NSLog(@"Finish");
        
        
        Teacher *teacher = [Teacher new];
        Student *student = [Student new];
        teacher.delegate = student;
        [teacher prepareHomework];
                
    }
    return 0;
}
