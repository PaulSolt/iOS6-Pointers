//
//  ViewController.m
//  Numbers
//
//  Created by Paul Solt on 7/18/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    NSArray *numArray = [NSArray arrayWithObjects:3, 4, 5, nil];
// Cannot store primative data types into an array
    
    // NSNumber
    // NSValue

    // Number literal
    NSNumber *one = @1; // [NSNumber numberWithInt:1];
    NSNumber *two = @2; //[NSNumber numberWithInt:2];
    NSNumber *three = @3; // [NSNumber numberWithInt:3];

//    NSArray *numArray = [NSArray arrayWithObjects:one, two, three, nil];
    // Array literal
//    NSArray *numArray = @[one, two, three];
    NSArray *numArray = @[@1, @2, @3];
    
    NSLog(@"numArray: %@", numArray);
    
    CGRect rectangle = CGRectMake(0, 0, 320, 480);
    NSValue *rectValue = [NSValue valueWithCGRect:rectangle];
    
    CGRect theRect = rectValue.CGRectValue;
    
    NSArray *rectArray = @[ rectValue ];
    
    
    NSArray *testScores = @[@75, @89, @95.5, @90];

    // id = AnyObject
    double sum = 0;
    for (int i = 0; i < testScores.count; i = i + 1) {  // i++
        //NSNumber *score = testScores[i];
        //sum = sum + score.doubleValue;
        
        sum = sum + [testScores[i] doubleValue];
//        sum = sum + testScores[i].doubleValue; // doesn't work because type is id
    }
    double average = sum / testScores.count;
    printf("Average: %f\n", average);



}


@end
