//
//  DynamicTableViewCell.m
//
//  Created by Cornel on 4/22/15.
//  Copyright (c) 2015 Cornel. All rights reserved.
//

#import "DynamicTableViewCell.h"

@interface DynamicTableViewCell()

@end

@implementation DynamicTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        // initialize my stuff
        [self layoutSubviews];
    }
    return self;
}

-(void)configureWithData:(NSMutableDictionary*)data
{
    self.data = data;
}

-(void)didSelect:(UITableView*)tableView indexPath:(NSIndexPath*)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
-(void)reload
{
    if(self.onReload)
    {
        self.onReload();
    }
}

@end
