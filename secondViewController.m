//
//  secondViewController.m
//  TableViewText
//
//  Created by Sathish on 21/07/15.
//  Copyright (c) 2015 Optisol Business Solution. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()<UITextFieldDelegate>
{
    UITextField *textField;
}
@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     
    // Do any additional setup after loading the view.
}
-(void)viewDidAppear:(BOOL)animated
{
   
        textField=[[UITextField alloc] initWithFrame: CGRectMake(20,100,280,30)];
        textField.borderStyle=UITextBorderStyleRoundedRect;
    textField.text=self.value;
        [self.view addSubview:textField];
        textField.delegate=self;
        
    UIButton *roundRectButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [roundRectButton setFrame:CGRectMake(60, 200, 200, 40)];
    
    [roundRectButton setTitle:@"Click" forState:
     UIControlStateNormal];
    [roundRectButton addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:roundRectButton];
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textFields
{
    [textFields resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)click:(id)sender
{
    [self.delegate changeValue:textField.text atIndex:self.index];
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
