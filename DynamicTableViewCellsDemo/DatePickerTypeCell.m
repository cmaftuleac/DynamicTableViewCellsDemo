//
//  DatePickerTypeCell.m
//  DynamicTableViewCellsDemo
//
//  Created by Cornel on 4/22/15.
//  Copyright (c) 2015 Cornel. All rights reserved.
//

#import "DatePickerTypeCell.h"

@implementation DatePickerTypeCell
{
    NSInteger initialHeight;
}

- (void)awakeFromNib {
    // Initialization code
    initialHeight = self.datePickerHeight.constant;
}

-(void)configureWithData:(NSMutableDictionary*)data
{
    [super configureWithData:data];
    self.label.text = self.data[@"text"];
    NSNumber* open = self.data[@"open"];
    self.datePickerHeight.constant = open.boolValue ? initialHeight : 0;
}

-(NSString*)getDateString:(UIDatePicker*)datePicker
{
    NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier: [[NSBundle mainBundle] preferredLocalizations].firstObject];
    NSDate *date = datePicker.date;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    [dateFormatter setLocale:locale];
    return [dateFormatter stringFromDate:date];
}

- (IBAction)onDateChanged:(id)sender
{
    NSString* date = [self getDateString:sender];
    self.data[@"text"] = date;
    [self toggle];
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
