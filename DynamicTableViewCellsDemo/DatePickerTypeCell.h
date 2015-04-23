//
//  DatePickerTypeCell.h
//  DynamicTableViewCellsDemo
//
//  Created by Cornel on 4/22/15.
//  Copyright (c) 2015 Cornel. All rights reserved.
//

#import "DynamicTableViewCell.h"

@interface DatePickerTypeCell : DynamicTableViewCell

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIDatePicker *picker;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *datePickerHeight;

@end
