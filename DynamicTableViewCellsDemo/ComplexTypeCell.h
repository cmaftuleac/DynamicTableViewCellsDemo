//
//  ComplexTypeCell.h
//  DynamicTableViewCellsDemo
//
//  Created by Cornel on 22.04.2015.
//  Copyright (c) 2015 Cornel. All rights reserved.
//

#import "DynamicTableViewCell.h"
#import "RadioButton.h"

@interface ComplexTypeCell : DynamicTableViewCell

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentViewHeight;
@property (weak, nonatomic) IBOutlet RadioButton *button1;
@property (weak, nonatomic) IBOutlet RadioButton *button2;
@property (weak, nonatomic) IBOutlet RadioButton *button3;

@end
