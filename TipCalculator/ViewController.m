//
//  ViewController.m
//  TipCalculator
//
//  Created by Jaewon Kim on 2017-08-04.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *billAmountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipCalculatedLabel;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentageTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.billAmountTextField.delegate = self;
    self.tipPercentageTextField.delegate = self;
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)calculateTip:(UIButton *)sender {
    
    NSString *percentageText = self.tipPercentageTextField.text;
    double percentageinteger = [percentageText floatValue];
    
    NSString *text = self.billAmountTextField.text;
    double integer = [text floatValue];
    
    double tip = integer * percentageinteger / 100;
    NSString *tipString = [NSString stringWithFormat:@"%.2lf$", tip];
    
    self.tipCalculatedLabel.text = tipString;
}

- (IBAction)backgroundWasTapped:(UITapGestureRecognizer *)sender {
    
    [self.view endEditing:YES];
}

@end
