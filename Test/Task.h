//
//  Task.h
//  Test
//
//  Created by Sunny on 28/06/2015.
//  Copyright (c) 2015 Sunny. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property (nonatomic) NSString *taskDescription;
@property (nonatomic, readonly) NSDate *creationDate;
@property (nonatomic) NSDate *completeDate;
@property (nonatomic) BOOL complete;

- (instancetype)initWithTaskDesc:(NSString *)taskDescription;


@end
