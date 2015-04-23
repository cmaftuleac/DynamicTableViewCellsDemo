//
//  Complex2TypeCell.m
//  DynamicTableViewCellsDemo
//
//  Created by Cornel on 22.04.2015.
//  Copyright (c) 2015 Cornel. All rights reserved.
//

#import "Complex2TypeCell.h"

@implementation Complex2TypeCell
{
//    NSInteger initialHeight;
    UIViewController* vc;
}

- (void)awakeFromNib {
    // Initialization code
//    initialHeight = self.contentViewHeight.constant;
}

-(void)configureWithData:(NSMutableDictionary*)data
{
    [super configureWithData:data];
    self.label.text = self.data[@"text"];
    NSNumber* open = self.data[@"open"];
    vc = self.data[@"vc"];
    //CGSize sz = [self.view systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
    UIImage* image = self.data[@"image"];
    self.image.image = image;

    if(open.boolValue)
    {
        self.contentViewHeight.active = NO;
    }else
    {
        self.contentViewHeight.constant = 0;
        self.contentViewHeight.active = YES;
    }
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

- (IBAction)onSelectImage:(id)sender
{
    [self getPhoto];
}

-(IBAction) getPhoto
{
    UIImagePickerController* picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.sourceType = UIImagePickerControllerSourceTypeSavedPhotosAlbum;
    [vc presentViewController:picker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage* image = info[UIImagePickerControllerOriginalImage];
    self.data[@"image"] = image;
    [vc dismissViewControllerAnimated:picker completion:nil];
    [self reload];
}

@end
