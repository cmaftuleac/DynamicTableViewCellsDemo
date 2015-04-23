//
//  TextViewTypeCell.m
//  DynamicTableViewCellsDemo
//
//  Created by Cornel on 4/22/15.
//  Copyright (c) 2015 Cornel. All rights reserved.
//

#import "TextViewTypeCell.h"

@implementation TextViewTypeCell


-(void)configureWithData:(NSMutableDictionary*)data
{
    [super configureWithData:data];
    self.textView.text = self.data[@"text"];
}

@end
