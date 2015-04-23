//
//  Complex2TypeCell.h
//  DynamicTableViewCellsDemo
//
//  Created by Cornel on 22.04.2015.
//  Copyright (c) 2015 Cornel. All rights reserved.
//

#import "DynamicTableViewCell.h"

@interface Complex2TypeCell : DynamicTableViewCell<UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentViewHeight;
@property (weak, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UIButton *btnSelectImage;


@end
