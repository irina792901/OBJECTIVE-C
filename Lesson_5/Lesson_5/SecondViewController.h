//
//  SecondViewController.h
//  Lesson_5
//
//  Created by Ирина on 02.11.2023.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Loader.h"
NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
- (IBAction)text2:(id)sender;
- (IBAction)text3:(id)sender;
- (IBAction)post:(id)sender;

@property(nonatomic) Loader* loader;

@end


NS_ASSUME_NONNULL_END
