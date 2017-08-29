//
//  ViewController.m
//  Demo
//
//  Created by cheyipai on 2017/8/25.
//  Copyright © 2017年 cheyipai. All rights reserved.
//

#import "ViewController.h"
#import "DefineBtn.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
    [self testHitTestV];
}
-(void)testHitTestV
{
    DefineBtn *button1 =  [[DefineBtn alloc]init];
    [button1 setTitle:@"button1" forState:UIControlStateNormal];
    [button1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button1 setFrame:CGRectMake(0,100,[UIScreen mainScreen].bounds.size.width,200)];
    [button1 addTarget:self action:@selector(btn1Click:) forControlEvents:UIControlEventTouchUpInside];
    [button1 setBackgroundColor:[UIColor brownColor]];
    [self.view addSubview:button1];
    
//    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    DefineBtn *button2 =  [[DefineBtn alloc]init];
    [button2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button2 setTitle:@"button2" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(btn2Click:) forControlEvents:UIControlEventTouchUpInside];
    [button2 setFrame:CGRectMake(0,300,[UIScreen mainScreen].bounds.size.width,200)];
    [button2 setBackgroundColor:[UIColor brownColor]];
    [self.view addSubview:button2];
    
//    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    DefineBtn *button3 =  [[DefineBtn alloc]init];
    [button3 setTitle:@"button3" forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(btn3Click:) forControlEvents:UIControlEventTouchUpInside];
    [button3 setBackgroundColor:[UIColor grayColor]];
    [button3 setFrame:CGRectMake(50,150,[UIScreen mainScreen].bounds.size.width - 100,300)];
    [self.view addSubview:button3];
}

-(void)btn1Click:(id)sender
{
    NSLog(@"button1");
}
-(void)btn2Click:(id)sender
{
    NSLog(@"button2");
}
-(void)btn3Click:(id)sender
{
    NSLog(@"button3");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
