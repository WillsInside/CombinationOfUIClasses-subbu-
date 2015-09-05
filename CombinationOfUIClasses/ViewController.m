//
//  ViewController.m
//  CombinationOfUIClasses
//
//  Created by Student on 05/09/15.
//  Copyright (c) 2015 Student. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _personalDetailsSwitchOutlet.on = NO;
    _professionalDetailsSwitchOutlet.on = NO;
    
    _x=30;
    _y=200;
    _w=300;
    _h=200;
    
    _a=30;
    _b=200;
    _c=300;
    _d=200;
    
    _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 200, 500, 600)];
    _scrollView.showsVerticalScrollIndicator = YES;
    _scrollView.contentSize = CGSizeMake(0, 2000);
    [self.view addSubview:_scrollView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)personalDetailsSwitchAction:(id)sender {
    
    if (_professionalDetailsSwitchOutlet.on == YES) {
        
        _y = _y+_b+10;

    }
//    else
//    {
//        _y=100;
//
//    }
//    
    
   if (_personalDetailsSwitchOutlet.on==YES) {
   
       
        _personalDetailsView = [[UIView alloc]initWithFrame:CGRectMake(_x, _y, _w, _h)];
       
        _personalDetailsView.backgroundColor = [UIColor greenColor];
       
        [self.scrollView addSubview:_personalDetailsView];
       
    }
    
    else
    {
        //NSLog(@" y value is :%i",_y);
        
        _y=200;
        
        _personalDetailsView.hidden = YES;
        
    }

    
}

- (IBAction)professionalDetailsSwitchAction:(id)sender {
    
    
    if (_personalDetailsSwitchOutlet.on == YES) {
        
        _b = _b+_y+10;
    }
//    else
//    {
//        _b=100;
//    }

    
    if (_professionalDetailsSwitchOutlet.on==YES) {
        
        
        _professionalDetailsView = [[UIView alloc]initWithFrame:CGRectMake(_a,_b, _c, _d)];
        //NSLog(@" b value is :%i",_b);
       _professionalDetailsView.backgroundColor = [UIColor blueColor];
        
        [self.scrollView addSubview:_professionalDetailsView];

    }
    else
    {
        _b=200;
        
       // NSLog(@" b value is :%i",_b);
        _professionalDetailsView.hidden=YES;
    }
    
}
@end
