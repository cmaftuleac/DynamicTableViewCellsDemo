//
//  LabelTypeCell.m
//  DynamicTableViewCellsDemo
//
//  Created by Cornel on 4/22/15.
//  Copyright (c) 2015 Cornel. All rights reserved.
//

#import "LabelTypeCell.h"

@implementation LabelTypeCell

-(void)configureWithData:(NSMutableDictionary*)data
{
    [super configureWithData:data];
    self.label.text = self.data[@"text"];
}

@end
