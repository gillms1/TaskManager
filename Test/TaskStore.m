//
//  TaskStore.m
//  Test
//
//  Created by Sunny on 28/06/2015.
//  Copyright (c) 2015 Sunny. All rights reserved.
//

#import "TaskStore.h"

@interface TaskStore ()

@property NSMutableArray *privateItems;

@end

@implementation TaskStore

+(instancetype)sharedStore {
    
    static TaskStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[self alloc]initPrivate];
    }
    
    return sharedStore;
    
}

-(instancetype)initPrivate {
    
    self = [super init];
    
    if (self) {
        _privateItems = [[NSMutableArray alloc]init];
    }
    
    return self;
}

-(Task *)createTaskWithName:(NSString *)name {
    
    Task *newTask = [[Task alloc]initWithTaskDesc:name];
    
    [self.privateItems addObject:newTask];
    
    return newTask;
    
}

- (void)removeTask:(Task *)task {
    
    [self.privateItems removeObjectIdenticalTo:task];
    
    
}

- (NSArray *)allTasks {
    
    return self.privateItems;
    
}

@end
