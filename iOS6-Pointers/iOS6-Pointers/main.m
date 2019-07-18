//
//  main.m
//  iOS6-Pointers
//
//  Created by Paul Solt on 7/18/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

void pointerTest() {
    
    char *message = "Hello xxxxxxxx!"; // '\0' = null terminated
    
    printf("message pointer: %p\n", message);
    printf("message: %s\n", message);
    
    unsigned long length = strlen(message);
    char *ptr = malloc(sizeof(char) * length + 1); // memory allocation + 1 for '\0'
    ptr = strcpy(ptr, message);
    
    ptr[6] = 'P'; // START HERE
    // *(ptr + 6) = 'P';
    *(ptr + 7) = 'a';
    *(ptr + 8) = 'u';
    ptr[9] = 'l';
    ptr[10] = '!';
    ptr[11] = '\0';
    
    
    // Set your name!
    // Null terminate with '\0'
    
    printf("message: %s\n", ptr);
    
    // message: Hello Paul!
    
    free(ptr);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        printf("Hello, World!\n");
        
        char letter = 't';
        printf("Character: %c\n", letter);
        
        char *ptr = "Hello World!\n"; // String literal (readonly)
        printf("%s\n", ptr);        // printf = print formatted (using tokens)
        // %s = c-string = char *
        // %d = int
        // %@ = Objc object (only works with NSLog)
        
        // 'H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd', '!', '\n', '\0'
        //  0    1    2    3    4    5    6    7    8    9    10   11   12    13
        
        //                     10 11 12 13 14 15
        // 0 1 2 3 4 5 6 7 8 9 A  B  C  D  E  F
        letter = *(ptr + 6);
        printf("%c\n", letter);
        
        // i++
        // i = i + 1
        printf("For Loop\n");
        for (int i = 0; i < strlen(ptr); i++) {
            // for (initialize index variable; end condition ; increment)
            letter = *(ptr + i);
            printf("%c address: %p\n", letter, (ptr + i));
        }
        
        long number = 42;
        int number2 = 27;
        double pi = 3.14;
        
        long *numPtr = &number; // store the memory address of number into numPtr
        int *num2Ptr = &number2;
        double *piPtr = &pi;
        
        printf("number: %lu numPtr: %p\n", number, numPtr);
        
        pointerTest();
        
        
        NSString *name = @"Bob";
        NSLog(@"Name: %@", name);
        printf("&name: %p\n", &name); // name is a pointer, so it stores a memory address
        printf("name: %p\n", name); // dereference name to get it's value
    }
    
    
    
    return 0;   // exits with success, non-zero is not successful
}
