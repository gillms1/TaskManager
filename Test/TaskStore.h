//
//  TaskStore.h
//  Test
//
//  Created by Sunny on 28/06/2015.
//  Copyright (c) 2015 Sunny. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Task.h"

@interface TaskStore : NSObject

+ (instancetype)sharedStore;
- (Task *) createTaskWithName: (NSString *)name;
- (NSArray *) allTasks;
- (void) removeTask: (Task *)task;
- (instancetype)initPrivate;


@end
