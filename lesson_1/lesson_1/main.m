//
//  main.m
//  lesson_1
//
//  Created by Ирина on 22.10.2023.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 5;
        int b = 6;
        int c = 12;
        int square = a * a;
        NSLog(@"\na = %i\mb = %i\mc = %i", a, b, c);
        
        int x, y, ost, sum, raz, umn;
        CGFloat del;
        NSLog(@"Введите число х ");
        scanf("%d", &x);
        NSLog(@"Введите число у ");
        scanf("%d", &y);
        
        
        sum = x = y;
        raz = x - y;
        umn = x * y;
        del = (CGFloat)x / (CGFloat)y;
        ost = x % y;
        NSLog(@"Сумма равнна %i", sum);
        NSLog(@"Разность равна %i", raz);
        NSLog(@"Умножение равно %i", umn);
        NSLog(@"Деление равно %f", del);
        NSLog(@"Остаток от деления %i", ost);
        
        
        char input[100];
        NSLog(@"Введите фразу");
        scanf("%ss", input);
        NSString *inputstr = [NSString stringWithCString: input encoding: NSUTF8StringEncoding];
        for (int i = 0; i < inputstr.length; i++) {
            NSLog(@" %c", [inputstr characterAtIndex:i]);
            printf(" %c", [inputstr characterAtIndex:i]);
        }
        
        
        int i = 0;
        while(i < inputstr.length) {
            printf(" %c", [inputstr characterAtIndex:i]);
            i++;
        }
        
        
        do {
            printf(" %c", [inputstr characterAtIndex:i]);
            i++;
        }
        while (i < inputstr.length);
    }
    printf("\n");
    return 0;
}
