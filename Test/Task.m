//
//  Task.m
//  Test
//
//  Created by Sunny on 28/06/2015.
//  Copyright (c) 2015 Sunny. All rights reserved.
//

#import "Task.h"

@implementation Task

-(instancetype)initWithTaskDesc:(NSString *)taskDescription {
    
    self = [super init];
    
    if (self) {
        
        _taskDescription = taskDescription;
        _creationDate = [[NSDate alloc] init];
        _complete = false;
    }
    
    return self;
}



@end
