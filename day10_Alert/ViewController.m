//
//  ViewController.m
//  day10_Alert
//
//  Created by Student P_04 on 15/09/17.
//  Copyright © 2017 felix. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)AlertButton:(id)sender
{
    [self showAlertWithTitleButton:self.textTitle.text andMessage:self.textMessage.text];
}
-(void)showAlertWithTitleButton:(NSString *)title andMessage:(NSString *)message
{
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okaction=[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
    
    UIAlertAction *Cancelaction=[UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:okaction];
    [alert addAction:Cancelaction];
   [self presentViewController:alert animated:YES completion:nil];
    
}
@end
