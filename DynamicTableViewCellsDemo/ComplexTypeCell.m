//
//  ComplexTypeCell.m
//  DynamicTableViewCellsDemo
//
//  Created by Cornel on 22.04.2015.
//  Copyright (c) 2015 Cornel. All rights reserved.
//

#import "ComplexTypeCell.h"

@implementation ComplexTypeCell
{
    NSInteger initialHeight;
    NSArray* buttons;
}

- (void)awakeFromNib {
    // Initialization code
    initialHeight = self.contentViewHeight.constant;
    self.button1.groupButtons = buttons = @[self.button1, self.button2, self.button3];
}

-(void)configureWithData:(NSMutableDictionary*)data
{
    [super configureWithData:data];
    self.label.text = self.data[@"text"];
    NSNumber* open = self.data[@"open"];
    self.contentViewHeight.constant = open.boolValue ? initialHeight : 0;
    NSNumber* selected = self.data[@"selected"];
    ((RadioButton*)buttons[selected.integerValue]).selected = YES;
}
- (IBAction)onSelectionChanged:(id)sender
{
    self.data[@"selected"] = @(((UIButton*)sender).tag);
    [self performSelector:@selector(toggle) withObject:nil afterDelay:0.25];
}

-(void)didSelect:(UITableView *)tableView indexPath:(NSIndexPath *)indexPath
{
    [self toggle];
}

-(void)toggle
{
    NSNumber* open = self.data[@"open"];
    open = self.data[@"open"] = @(!open.boolValue);
    [self reload];
}
@end
