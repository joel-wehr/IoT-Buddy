//
//  FlipsideViewController.m
//  IoT Buddy
//
//  Created by Joel Wehr on 7/13/13.
//  Copyright (c) 2013 Joel Wehr. All rights reserved.
//

#import "FlipsideViewController.h"
#import "TPKeyboardAvoidingScrollView.h"

@interface FlipsideViewController ()

@end

@implementation FlipsideViewController

@synthesize urlTextField, buttonOneNameTextField, buttonOneValueTextField, buttonTwoNameTextField,
buttonTwoValueTextField, switchOneNameTextField, switchOneOnValueTextField, switchOneOffValueTextField,
switchTwoNameTextField, switchTwoOnValueTextField, switchTwoOffValueTextField;

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self loadUserEnteredInfo];
}
- (void)saveUserInfo {
    // save any values inputed from the user
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    [defaults setObject:self.urlTextField.text forKey:@"IMP URL"];
    [defaults setObject:self.buttonOneNameTextField.text forKey:@"Button One Name"];
    [defaults setObject:self.buttonOneValueTextField.text forKey:@"Button One Value"];
    [defaults setObject:self.buttonTwoNameTextField.text forKey:@"Button Two Name"];
    [defaults setObject:self.buttonTwoValueTextField.text forKey:@"Button Two Value"];
    [defaults setObject:self.switchOneNameTextField.text forKey:@"Switch One Name"];
    [defaults setObject:self.switchOneOnValueTextField.text forKey:@"Switch One On Value"];
    [defaults setObject:self.switchOneOffValueTextField.text forKey:@"Switch One Off Value"];
    [defaults setObject:self.switchTwoNameTextField.text forKey:@"Switch Two Name"];
    [defaults setObject:self.switchTwoOnValueTextField.text forKey:@"Switch Two On Value"];
    [defaults setObject:self.switchTwoOffValueTextField.text forKey:@"Switch Two Off Value"];
    [defaults synchronize];
}

- (void)loadUserEnteredInfo {
    // load any values previously inputed from the user
    NSUserDefaults *defaults=[NSUserDefaults standardUserDefaults];
    self.urlTextField.text = [defaults objectForKey:@"IMP URL"];
    self.buttonOneNameTextField.text = [defaults objectForKey:@"Button One Name"];
    self.buttonOneValueTextField.text = [defaults objectForKey:@"Button One Value"];
    self.buttonTwoNameTextField.text = [defaults objectForKey:@"Button Two Name"];
    self.buttonTwoValueTextField.text = [defaults objectForKey:@"Button Two Value"];
    self.switchOneNameTextField.text = [defaults objectForKey:@"Switch One Name"];
    self.switchOneOnValueTextField.text = [defaults objectForKey:@"Switch One On Value"];
    self.switchOneOffValueTextField.text = [defaults objectForKey:@"Switch One Off Value"];
    self.switchTwoNameTextField.text = [defaults objectForKey:@"Switch Two Name"];
    self.switchTwoOnValueTextField.text = [defaults objectForKey:@"Switch Two On Value"];
    self.switchTwoOffValueTextField.text = [defaults objectForKey:@"Switch Two Off Value"];
}

- (void)viewWillAppear:(BOOL)animated {
    [self loadUserEnteredInfo];
}

- (void)viewWillDisappear:(BOOL)animated {
    [self saveUserInfo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Actions

- (IBAction)done:(id)sender
{
    [self.delegate flipsideViewControllerDidFinish:self];
}

@end
