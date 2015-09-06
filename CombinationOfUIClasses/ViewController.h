//
//  ViewController.h
//  CombinationOfUIClasses
//
//  Created by Student on 05/09/15.
//  Copyright (c) 2015 Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property int x,y,w,h;
@property int a,b,c,d;




- (IBAction)personalDetailsSwitchAction:(id)sender;
- (IBAction)professionalDetailsSwitchAction:(id)sender;
- (IBAction)educationalDetailsSwitchAction:(id)sender;
- (IBAction)contactDetailsSwitchAction:(id)sender;


@property (weak, nonatomic) IBOutlet UISwitch *personalDetailsSwitchOutlet;

@property (weak, nonatomic) IBOutlet UISwitch *professionalDetailsSwitchOutlet;
@property (weak, nonatomic) IBOutlet UISwitch *educationDetailsSwitchOutlet;
@property (weak, nonatomic) IBOutlet UISwitch *contactDetailsSwitchOutlet;

@property UIView * personalDetailsView;
@property UIView * professionalDetailsView;
@property UIView * educationalDetailsView;
@property UIView * contactDetailsView;
@property UIScrollView * scrollView;

@end

