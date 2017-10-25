//
//  ViewController.m
//  FloatingMenu
//
//  Created by akshay bansal on 10/25/17.
//  Copyright © 2017 akshay bansal. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *menuView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.menuView.transform = CGAffineTransformMakeScale(0.1, 0.1);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)menuTap:(id)sender {
    
    UIButton *button = (UIButton*)sender;

    
    [UIView animateWithDuration:0.7 animations:^{
        if( CGAffineTransformEqualToTransform(self.menuView.transform, CGAffineTransformIdentity))
        {
            self.menuView.transform = CGAffineTransformMakeScale(0.1, 0.1);
            button.backgroundColor = [UIColor colorWithRed:209.0/255 green:56.0/255 blue:85.0/255 alpha:1];
            
        }
        else{
            
            self.menuView.transform = CGAffineTransformIdentity;
            button.backgroundColor = [UIColor colorWithRed:166.0/255 green:62.0/255 blue:80.0/255 alpha:1];
            
        }
    }];
    
}


@end
