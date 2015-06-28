//
//  TaskListTableViewController.m
//  Test
//
//  Created by Sunny on 28/06/2015.
//  Copyright (c) 2015 Sunny. All rights reserved.
//

#import "TaskListTableViewController.h"
#import "AddTaskViewController.h"
#import "TaskStore.h"
#import "Task.h"

@interface TaskListTableViewController ()

@end

@implementation TaskListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TaskStore *store = [TaskStore sharedStore];
    
    [store createTaskWithName:@"Get Milk"];
    
    NSArray *tasks = [store allTasks];
    
    NSLog(@"Task in array %@",[tasks[0] taskDescription]);
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)unwindToTaskList:(UIStoryboardSegue *)segue {
    
    NSLog(@"Back");
    AddTaskViewController *vc = segue.sourceViewController;
    
    NSString *taskDescription = [vc taskText];
    
    [[TaskStore sharedStore]createTaskWithName:taskDescription];
    
    [self.tableView reloadData];
    
    NSLog(@"Back");
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    NSArray *tasks = [[TaskStore sharedStore]allTasks];
    
    if (tasks.count > 0) {
        return tasks.count;
    } else {
        return 0;
    }
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TaskId" forIndexPath:indexPath];
    
    // Configure the cell...
    
    NSArray *tasks = [[TaskStore sharedStore]allTasks];
    
    Task *task = tasks[indexPath.row];
    
    cell.textLabel.text = task.taskDescription;
    cell.backgroundColor = [UIColor greenColor];

    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
