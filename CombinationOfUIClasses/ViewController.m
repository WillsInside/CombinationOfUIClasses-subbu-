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
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)personalDetailsSwitchAction:(id)sender {
    
    
    if (_personalDetailsSwitchOutlet.on==YES) {
        
        _personalDetailsView = [[UIView alloc]initWithFrame:CGRectMake(0, 150, 100, 100)];
        
        _personalDetailsView.backgroundColor = [UIColor greenColor];
        
        [self.view addSubview:_personalDetailsView];
        
    }
    
    else
    {
        _personalDetailsView.hidden = YES;
        
    }
    
    
}

- (IBAction)professionalDetailsSwitchAction:(id)sender {
    
    
    if (_professionalDetailsSwitchOutlet.on==YES) {
        
        _professionalDetailsView = [[UIView alloc]initWithFrame:CGRectMake(0,300, 100, 100)];
        
       _professionalDetailsView.backgroundColor = [UIColor blueColor];
        
        [self.view addSubview:_professionalDetailsView];

    }
    else
    {
        _professionalDetailsView.hidden=YES;
    }
    
}
@end
