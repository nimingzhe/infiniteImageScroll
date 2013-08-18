//
//  HPBViewController.h
//  UIScrollTest
//
//  Created by cuibosoft on 13-8-16.
//  Copyright (c) 2013年 cuibosoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HPBViewController : UIViewController <UIScrollViewDelegate>
{
    float _originalOffsetX;
    
    
}
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *leftImage;
@property (weak, nonatomic) IBOutlet UIImageView *centerImage;
@property (weak, nonatomic) IBOutlet UIImageView *rightImage;

@property UIImageView *leftTemp;
@property UIImageView *centerTemp;
@property UIImageView *rightTemp;

@end
