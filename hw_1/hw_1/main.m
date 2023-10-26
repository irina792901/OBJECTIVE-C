//
//  main.m
//  hw_1
//
//  Created by Ирина on 22.10.2023.
//
//Решить квадратное уравнение
//Вместо a, b, c подставить
// 1   -8   12
// 12   -4   2
// 1   -100   -2


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CGFloat a, b, c, x1, x2;
        a = 0;
        b = 0;
        c = 0;
        
        NSString *answer = @"Корней нет";
        NSLog(@"Введите число а ");
        scanf("%lf", &a);
        NSLog(@"Введите число b ");
        scanf("%lf", &b);
        NSLog(@"Введите число c ");
        scanf("%lf", &c);
        
        if (a == 0) {
            if (b != 0) {
                answer = [NSString stringWithFormat: @"Один корень %f",  -c/b];
                }
            else {answer = @"\nКорней нет";}
            }
        else {
            CGFloat disc = pow(b, 2) - 4 *a * c;
            if (disc == 0) {
                answer = [NSString stringWithFormat: @"Один корень %f", -b/(2 * a)];
            }
            else {
                if (disc > 0) {
                    x1 = (-b-sqrt(disc))/(2 * a);
                    x2 = (-b+sqrt(disc))/(2 * a);
                    answer = [NSString stringWithFormat: @"\nПервый корень %f\nВторой корень %f", x1, x2];
                }
                else {
                    CGFloat xCom = -b / (2 * a);
                    CGFloat xIm = sqrt(-disc) / (2 * a);
                    answer = [NSString stringWithFormat: @"\nСопряженные комплексные корни:\n%f-%fi\n%f+%fi", xCom, xIm, xCom, xIm];
                }
            }
        }
        NSLog(@"%@", answer);
        
        
        
        
        
        
        
        
        //Создать программу, которая находит наибольшее из трех чисел
        
        int a1, a2, a3, max;
        NSLog(@"Введите число а ");
        scanf("%i", &a1);
        NSLog(@"Введите число b ");
        scanf("%i", &a2);
        NSLog(@"Введите число c ");
        scanf("%i", &a3);
        max = a1;
        if (a2 > max){
            max = a2;
        }
        if (a3 > max) {
            max = a3;
        }
        NSLog(@"Наибольшее из трех чисел %i", max);
        
        
    return 0;
    }
}
