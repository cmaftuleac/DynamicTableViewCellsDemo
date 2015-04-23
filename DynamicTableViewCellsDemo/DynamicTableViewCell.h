//
//  DynamicTableViewCell.h
//
//  Created by Cornel on 4/22/15.
//  Copyright (c) 2015 Cornel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DynamicTableViewCell : UITableViewCell

-(void)configureWithData:(NSMutableDictionary*)data;
-(void)didSelect:(UITableView*)tableView indexPath:(NSIndexPath*)indexPath;
-(void)reload;
@property (strong, nonatomic) void (^onReload)();
@property (strong, nonatomic) NSMutableDictionary* data;


@end
