//
//  ViewController.h
//  CombinationOfUIClasses
//
//  Created by Student on 05/09/15.
//  Copyright (c) 2015 Student. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)personalDetailsSwitchAction:(id)sender;

- (IBAction)professionalDetailsSwitchAction:(id)sender;

@property (weak, nonatomic) IBOutlet UISwitch *personalDetailsSwitchOutlet;

@property (weak, nonatomic) IBOutlet UISwitch *professionalDetailsSwitchOutlet;

@property UIView * personalDetailsView;
@property UIView * professionalDetailsView;

@end

