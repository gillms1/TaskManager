//
//  AddTaskViewController.h
//  Test
//
//  Created by Sunny on 28/06/2015.
//  Copyright (c) 2015 Sunny. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Task.h"

@interface AddTaskViewController : UIViewController
@property (nonatomic) NSString *taskText;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *cancelButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *saveButton;
@property (weak, nonatomic) IBOutlet UITextField *taskDescription;

@end
