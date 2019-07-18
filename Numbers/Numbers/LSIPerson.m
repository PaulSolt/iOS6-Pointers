//
//  LSIPerson.m
//  Numbers
//
//  Created by Paul Solt on 7/18/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "LSIPerson.h"

@implementation LSIPerson

- (instancetype)initWithFirstName:(NSString *)firstName {
    self = [super init];
    if (self) {
        // As a rule, always copy NSString, NSArray, NSDictionary
        _firstName = [firstName copy];
    }
    return self;
}

//- (void)setFirstName:(NSString *)firstName {
//    _firstName = [firstName copy];
//}


@end
