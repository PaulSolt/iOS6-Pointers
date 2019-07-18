//
//  LSIPerson.h
//  Numbers
//
//  Created by Paul Solt on 7/18/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// Mutable and Immutable objects
// var = mutable   (variable)
// let = immutable (constant)

@interface LSIPerson : NSObject {
//    NSString *_firstName;
}

- (instancetype)initWithFirstName:(NSString *)firstName;

//- (NSString *)firstName;
//- (void)setFirstName:(NSString *)firstName;

@property (nonatomic, copy) NSString *firstName;

/* Property Attributes
 class
 
 atomic *
 nonatomic
 
 readwrite *
 readonly
 
 strong *
 weak
 copy (strong + copy)
 
 */



// An object is a black box, it encapsulates the data, we don't care about what's inside




@end

NS_ASSUME_NONNULL_END
