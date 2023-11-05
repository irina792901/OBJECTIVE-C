//
//  ViewController.h
//  Lesson_5
//
//  Created by Ирина on 30.10.2023.
//

#import <UIKit/UIKit.h>
#import "Loader.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextView *textView;

@property(nonatomic) Loader* loader;
@end

