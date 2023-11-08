//
//  ViewController.m
//  hw_6
//
//  Created by Ирина on 08.11.2023.
//

#import "ViewController.h"
#import "Robot.h"

@interface ViewController ()
@property (weak,nonatomic) IBOutlet UITextView * textView;
@property (weak, nonatomic) IBOutlet UITextField *textX;
@property (weak, nonatomic) IBOutlet UITextField *textY;
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
        NSData *savedRobotData = [[NSUserDefaults standardUserDefaults] objectForKey:@"SavedRobot"];
        Robot *savedRobot = [NSKeyedUnarchiver unarchiveObjectWithData:savedRobotData];
        NSString *robotInfo = [NSString stringWithFormat:@"Имя: %@\nКоординаты: (%ld, %ld)", savedRobot.robotName, (long)savedRobot.points.x, (long)savedRobot.points.y];
        _textView.text = robotInfo;
}
    
    - (IBAction)saveRobotButtonTapped:(id)sender {
        Robot *robot = [[Robot alloc] init];
        robot.points = CGPointMake(10, 30);
        robot.robotName = @"Робот 1";
    
        NSData *robotData = [NSKeyedArchiver archivedDataWithRootObject:robot];
        [[NSUserDefaults standardUserDefaults] setObject:robotData forKey:@"SavedRobot"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
    - (IBAction)changeCoordinatesButtonTapped:(id)sender {
        // Получите значения из textField1 и textField2
        Robot *robot = [[Robot alloc] init];
        NSInteger x = [_textX.text integerValue];
        NSInteger y = [_textY.text integerValue];
        
        // Измените координаты x и y в соответствии с введенными значениями
        robot.points = CGPointMake(x, y);
        robot.robotName = @"Робот 1";
        
        // Обновите текстовое представление с новыми координатами
        NSString *robotInfo = [NSString stringWithFormat:@"Имя: %@\nКоординаты: (%ld, %ld)", robot.robotName, (long)robot.points.x, (long)robot.points.y];
        _textView.text = robotInfo;
    }



//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    self.userDefaults = [NSUserDefaults standardUserDefaults];
//    NSString * myName = @"myRobot";
//    CGPoint myPoint = CGPointMake(10, 30);
//    Robot * myTile = [[Robot alloc] initWithPoints:myPoint andName:myName];
//    NSData * myData = [NSKeyedArchiver archivedDataWithRootObject:myTile];
//    [self.userDefaults setObject:myData forKey:@"dataKey"];
//}
//
//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    NSData * data = [self.userDefaults objectForKey:@"dataKey"];
//    Robot *resultData = [NSKeyedUnarchiver unarchiveObjectWithData:data];
//    NSLog(@"Name %@", resultData.robotName);
//    NSLog(@"X %f", resultData.points.x);
//    NSLog(@"Y %f", resultData.points.y);
//}
//
//- (void)resetDefaults{
//    NSDictionary * dict = [self.userDefaults dictionaryRepresentation];
//    for (id key in dict) {
//        [self.userDefaults removeObjectForKey:key];
//    }
//    [self.userDefaults synchronize];
//}
@end
