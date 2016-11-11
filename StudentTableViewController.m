//
//  StudentTableViewController.m
//  StudentInfo
//
//  Created by HSummy on 11/9/16.
//
//

#import "StudentTableViewController.h"
#import "StudentDetail.h"

@interface StudentTableViewController ()

@property (nonatomic, strong) NSArray *student;

@end

@implementation StudentTableViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    
    StudentDetail *student = [StudentDetail studentItemWithDictionary:@{@"name": @"Kimmy", @"username": @"KimberlySkipper", @"email": @"KimberlySkipper.gmail.com", @"age": [NSNumber numberWithInt:21]}];
    StudentDetail *student2 = [StudentDetail studentItemWithDictionary:@{@"name": @"Jonathan", @"username": @"jchilles", @"email": @"jchilles.gmail.com", @"age": [NSNumber numberWithInt:21]}];
    
  //  NSArray *anItem = @[@{@"name":@"Kimmy",
    
    self.student = @[student, student2];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    //Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.student.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StudentCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    StudentDetail *anItem = self.student[indexPath.row];
    cell.textLabel.text = anItem.name;
    //cell.textLabel.text = anItem.name2;
    cell.detailTextLabel.text = anItem.username;
    
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
