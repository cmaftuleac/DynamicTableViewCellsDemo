//
//  ViewController.m
//  DynamicTableViewCellsDemo
//
//  Created by Cornel on 4/22/15.
//  Copyright (c) 2015 Cornel. All rights reserved.
//

#import "ViewController.h"
#import "DynamicTableViewCell.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray* tableRows;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
    self.tableView.estimatedRowHeight = 44;
    self.tableView.rowHeight = UITableViewAutomaticDimension;

    self.tableRows = @[
                        @{@"type":@"LabelTypeCell", @"text": @"Auto resizing label"}.mutableCopy,
                        @{@"type":@"TextViewTypeCell", @"text": @"Scrolable text view"}.mutableCopy,
                        @{@"type":@"DatePickerTypeCell", @"text": @"Date picker", @"open": @(NO)}.mutableCopy,
                        @{@"type":@"ComplexTypeCell", @"text": @"Complex view1", @"open": @(NO)}.mutableCopy,
                        @{@"type":@"Complex2TypeCell", @"text": @"Complex view2", @"open": @(NO), @"vc": self, @"image":[UIImage imageNamed:@"bg-avatar-placeholder.png"]}.mutableCopy,
                        @{@"type":@"ButtonTypeCell", @"text": @"Button"}.mutableCopy,
                      ].mutableCopy;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.tableRows count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSMutableDictionary* data = self.tableRows[indexPath.row];
    NSString* type = data[@"type"];
    DynamicTableViewCell* cell = (DynamicTableViewCell *)[tableView dequeueReusableCellWithIdentifier: type];
    if (cell)
    {
        [cell configureWithData:data];
        [cell setOnReload:^{
            [self.tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];            
        }];
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.view endEditing:YES];
    DynamicTableViewCell* cell = (DynamicTableViewCell*)[tableView cellForRowAtIndexPath:indexPath];
    [cell didSelect:tableView indexPath:indexPath];
}


@end
