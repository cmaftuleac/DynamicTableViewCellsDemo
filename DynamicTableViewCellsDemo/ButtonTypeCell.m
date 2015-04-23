//
//  ButtonTypeCell.m
//  DynamicTableViewCellsDemo
//
//  Created by Cornel on 4/22/15.
//  Copyright (c) 2015 Cornel. All rights reserved.
//

#import "ButtonTypeCell.h"

@implementation ButtonTypeCell


-(void)configureWithData:(NSMutableDictionary*)data
{
    [super configureWithData:data];
    [self.button setTitle:data[@"text"] forState:UIControlStateNormal];
}


@end
