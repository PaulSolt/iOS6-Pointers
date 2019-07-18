//
//  main.m
//  iOS6-Pointers
//
//  Created by Paul Solt on 7/18/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        printf("Hello, World!\n");
        
        char letter = 't';
        printf("Character: %c\n", letter);
        
        char *ptr = "Hello World!\n";
        printf("%s\n", ptr);        // printf = print formatted (using tokens)
        // %s = c-string = char *
        // %d = int
        // %@ = Objc object (only works with NSLog)
        
        // 'H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd', '!', '\n', '\0'
        //  0    1    2    3    4    5    6    7    8    9    10   11   12    13
        
    }
    
    return 0;   // exits with success, non-zero is not successful
}
