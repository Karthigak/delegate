//
//  ViewController.m
//  TableViewText
//
//  Created by Sathish on 21/07/15.
//  Copyright (c) 2015 Optisol Business Solution. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"

@interface ViewController ()<customDelegate>
@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController
{
    NSMutableArray *dataList;
    NSMutableArray *imageList;
    secondViewController *obj;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    dataList=[NSMutableArray arrayWithObjects:@"Name",@"Socialmedia",@"calander", nil];
    imageList=[NSMutableArray arrayWithObjects:@"1426997380.jpg",@"accept_active.PNG",@"3d-arrow_small.jpg",nil
               ];
    obj=[self.storyboard instantiateViewControllerWithIdentifier:@"secondViewController"];
    obj.delegate=self;
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [dataList count];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier=@"simpleTableIdentifier";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if(cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    cell.textLabel.text=[dataList objectAtIndex:indexPath.row ];
    NSString *temp=[NSString stringWithFormat:@"%@",[imageList objectAtIndex:indexPath.row]];
    cell.imageView.image=[UIImage imageNamed:temp];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *value=[dataList objectAtIndex:indexPath.row];
    obj.value=value;
    obj.index=(int)indexPath.row;
    [self.navigationController pushViewController:obj
     animated:YES];
    
    
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
-(void)changeValue:(NSString *)letters atIndex:(int)indexed
{
    [dataList replaceObjectAtIndex:indexed withObject:letters];
    [self.tableView reloadData];
}
    @end
