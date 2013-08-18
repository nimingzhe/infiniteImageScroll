//
//  HPBViewController.m
//  UIScrollTest
//
//  Created by cuibosoft on 13-8-16.
//  Copyright (c) 2013年 cuibosoft. All rights reserved.
//

#import "HPBViewController.h"

@interface HPBViewController ()

@end

@implementation HPBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.scrollView.contentSize=CGSizeMake(1024*18, 768);
    self.scrollView.delegate=self;
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    
    
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
//    float deltaOffsetX=self.scrollView.contentOffset.x-_originalOffsetX;
//    NSLog(@"deltaOffsetX %f",deltaOffsetX);
//    if (deltaOffsetX>1000) {
//        CGRect rect=self.leftImage.frame;
//        rect.origin.x+=1024*3;
//        self.leftImage.frame=rect;
//        
//        int d=self.scrollView.contentOffset.x/1024;
//        
//        NSString *leftName=[NSString stringWithFormat:@"HUAHEChangJing%dx.png",d+3];
//        self.leftImage.image=[UIImage imageNamed:leftName];
//        NSLog(@"image name %@",leftName);
//        
//        self.leftTemp=self.leftImage;
//        self.centerTemp=self.centerImage;
//        self.rightTemp=self.rightImage;
//        
//        self.centerImage=self.rightTemp;
//        self.leftImage=self.centerTemp;
//        self.rightImage=self.leftTemp;
//        
//        
//    }
//    _originalOffsetX=self.scrollView.contentOffset.x;
    int d=self.scrollView.contentOffset.x/1024;
    NSLog(@"d %d",d);
    
    if (d!=0) {
        NSString *leftName=[NSString stringWithFormat:@"HUAHEChangJing%dx.png",d];
        self.leftImage.image=[UIImage imageNamed:leftName];
        CGRect rect=self.leftImage.frame;
        rect.origin.x=1024*(d-1);
        self.leftImage.frame=rect;
        
        NSString *centerName=[NSString stringWithFormat:@"HUAHEChangJing%dx.png",d+1];
        self.centerImage.image=[UIImage imageNamed:centerName];
        rect=self.leftImage.frame;
        rect.origin.x=1024*d;
        self.centerImage.frame=rect;
        
        NSString *rightName=[NSString stringWithFormat:@"HUAHEChangJing%dx.png",d+2];
        self.rightImage.image=[UIImage imageNamed:rightName];
        rect=self.rightImage.frame;
        rect.origin.x=1024*(d+1);
        self.rightImage.frame=rect;
    } else {
        
    }
   

    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
