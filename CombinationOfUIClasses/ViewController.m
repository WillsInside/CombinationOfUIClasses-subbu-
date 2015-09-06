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
    _educationDetailsSwitchOutlet.on = NO;
    _contactDetailsSwitchOutlet.on = NO;
    
    _x=30;
    _y=0;
    _w=300;
    _h=200;
    
    _a=30;
    _b=0;
    _c=300;
    _d=200;
    
    _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 300, 500, 600)];
    _scrollView.showsVerticalScrollIndicator = YES;
    _scrollView.contentSize = CGSizeMake(0, 2000);
    [self.view addSubview:_scrollView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)personalDetailsSwitchAction:(id)sender {
    
    if ((_professionalDetailsSwitchOutlet.on == YES) || (_educationDetailsSwitchOutlet.on == YES)||(_contactDetailsSwitchOutlet.on == YES) ) {
        
        _y = _y+_b+_h+10;
        
       
        
    }

   if (_personalDetailsSwitchOutlet.on==YES) {
   
       
        _personalDetailsView = [[UIView alloc]initWithFrame:CGRectMake(_x, _y, _w, _h)];
       
       NSLog(@"y value : %i",_y);
       
        _personalDetailsView.backgroundColor = [UIColor greenColor];
       
        [self.scrollView addSubview:_personalDetailsView];
       
    }
    
    else
    {
        //NSLog(@" y value is :%i",_y);
        
        _y=_y-_h-10;
     
        _personalDetailsView.hidden = YES;

        
    }

    
}

- (IBAction)professionalDetailsSwitchAction:(id)sender {
    
    
    if ((_personalDetailsSwitchOutlet.on == YES) || (_educationDetailsSwitchOutlet.on == YES)||(_contactDetailsSwitchOutlet.on == YES)) {
        
        _y = _y+_h+10;
    }

    if (_professionalDetailsSwitchOutlet.on==YES) {
        
        
        _professionalDetailsView = [[UIView alloc]initWithFrame:CGRectMake(_x,_y, _w, _h)];
        //NSLog(@" b value is :%i",_b);
       _professionalDetailsView.backgroundColor = [UIColor blueColor];
        
        [self.scrollView addSubview:_professionalDetailsView];

    }
    else
    {
        
        _y=_y-_h-10;
        _professionalDetailsView.hidden=YES;
    }
    
}

- (IBAction)educationalDetailsSwitchAction:(id)sender {
    
    if ((_professionalDetailsSwitchOutlet.on == YES) || (_professionalDetailsSwitchOutlet.on == YES)||(_contactDetailsSwitchOutlet.on == YES)) {
        
        _y = _y+_h+10;
    }
    
    if (_educationDetailsSwitchOutlet.on==YES) {
        
        
        _educationalDetailsView = [[UIView alloc]initWithFrame:CGRectMake(_x,_y, _w, _h)];
        //NSLog(@" b value is :%i",_b);
        _educationalDetailsView.backgroundColor = [UIColor redColor];
        
        [self.scrollView addSubview:_educationalDetailsView];
        
    }
    else
    {
        //NSLog(@" y value is :%i",_y);
        
         _y=_y-_h-10;
        _educationalDetailsView.hidden = YES;
        
        
    }

    
}

- (IBAction)contactDetailsSwitchAction:(id)sender {
    
   if ((_professionalDetailsSwitchOutlet.on == YES) || (_educationDetailsSwitchOutlet.on == YES)||(_personalDetailsSwitchOutlet.on == YES))
   {
     _y = _y+_h+10;
   }
    
    if (_contactDetailsSwitchOutlet.on==YES) {
        
        
        _contactDetailsView = [[UIView alloc]initWithFrame:CGRectMake(_x,_y, _w, _h)];
        //NSLog(@" b value is :%i",_b);
        _contactDetailsView.backgroundColor = [UIColor orangeColor];
        
        [self.scrollView addSubview:_contactDetailsView];
        
    }
    else
    {
        //NSLog(@" y value is :%i",_y);
        
        _y=_y-_h-10;
        _contactDetailsView.hidden = YES;
        
        
    }

    
    
}
@end
