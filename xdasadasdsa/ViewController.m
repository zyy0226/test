//
//  ViewController.m
//  xdasadasdsa
//

//

#import "ViewController.h"
#import <pthread.h>

@interface ViewController ()

@property (nonatomic,strong) NSThread *threadA;

@property (nonatomic,strong) NSThread *threadB;

@property (nonatomic,strong) NSThread *threadC;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _threadA = [[NSThread alloc] initWithTarget:self selector:@selector(saleTicket) object:nil];
    _threadB = [[NSThread alloc] initWithTarget:self selector:@selector(saleTicket) object:nil];
    _threadC = [[NSThread alloc] initWithTarget:self selector:@selector(saleTicket) object:nil];
//    pthread_t thread;
//
//    pthread_create(&thread, NULL, task, NULL);
//
//    pthread_t thread1;
//
//    pthread_create(&thread1, NULL, task, NULL);
//
//    NSThread *thread2 = [[NSThread alloc] initWithTarget:self selector:@selector(haha:) object:@"123"];
//
//    [thread2 start];
//
//    [NSThread detachNewThreadSelector:@selector(haha:)  toTarget:self withObject:@"xixi"];
    
}

- (void)saleTicket {
    
    
}

- (void)haha:(NSString *)str {
    
    NSLog(@"%@-------",[NSThread currentThread]);
}

void *task (void * para) {
    
    NSLog(@"%@--------",[NSThread currentThread]);
    return NULL;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
