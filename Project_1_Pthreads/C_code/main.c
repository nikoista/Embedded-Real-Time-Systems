/*
 *	File	: pc.c
 *
 *	Title	: Demo Producer/Consumer.
 *
 *	Short	: A solution to the producer consumer problem using
 *		pthreads.
 *
 *	Long 	:
 *
 *	Author	: Andrae Muys
 *
 *	Date	: 18 September 1997
 *
 *	Revised	:
 */

#include <pthread.h>
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>
#include <sys/time.h>

#define QUEUESIZE 500
#define LOOP 3000
#define numberOfProd 2
#define numberOfCons 2
#define N 5


long int time1_counter=0;
long int time2_counter=0;
int counter1=0;
int counter2=0;
double F[N];


void *producer (void *args);
void *consumer (void *args);


typedef struct{
  void * (*work)(void *);
  void * arg;

}workFunction;

typedef struct {
  workFunction buf[QUEUESIZE];
  long head, tail;
  int full, empty;
  pthread_mutex_t *mut;
  pthread_cond_t *notFull, *notEmpty;
} queue;

queue *queueInit (void);
void queueDelete (queue *q);
void queueAdd (queue *q, workFunction in);
void queueDel (queue *q, workFunction *out);

int main ()
{

  int i;
  queue *fifo;
  pthread_t pro[numberOfProd], con[numberOfCons];

  fifo = queueInit ();
  if (fifo ==  NULL) {
    fprintf (stderr, "main: Queue Init failed.\n");
    exit (1);
  }
    for (i=0; i<numberOfCons; i++){
    pthread_create (&con[i], NULL, consumer, fifo);
    }
    for (i=0; i<numberOfProd; i++){
    pthread_create (&pro[i], NULL, producer, fifo);
    }
    for (i=0; i<numberOfProd; i++){
    if(i<=numberOfCons)
    {
        pthread_join (con[i], NULL);
        pthread_join (pro[i], NULL);
    }
    else{
    pthread_join (pro[i], NULL);
    }
    }
  queueDelete (fifo);
  return 0;
}

void *work(void * w){
    int arg;
    arg=(int*)w;
    F[0]=cos(arg);
    F[1]=sin(arg);
    F[2]=cosh(arg);
    F[3]=tan(arg);
    F[4]=sinh(arg);


}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void *producer (void *q)
{

  struct timeval tv;
  time_t timer;
  int i,angle,choise;
  queue *fifo;
  fifo = (queue *)q;


  for (i = 0; i < LOOP; i++) {
    pthread_mutex_lock (fifo->mut);
    while (fifo->full) {
      printf ("producer: queue FULL.\n");
      pthread_cond_wait (fifo->notFull, fifo->mut);
    }
    //////////////////////////
    workFunction readyWorkFun;
    srand(time(NULL));
    angle=rand() % 10;
    choise=rand() % 5;

    readyWorkFun.arg=angle;
    work(readyWorkFun.arg);
    readyWorkFun.arg=choise;

    gettimeofday(&tv, NULL);
    timer=tv.tv_usec;
    ////////////////////////////
    queueAdd (fifo,readyWorkFun);
    counter1=counter1 +1;
    time1_counter=time1_counter + timer;
    //////////////
    pthread_mutex_unlock (fifo->mut);
    pthread_cond_signal (fifo->notEmpty);
  }
  return (NULL);
}
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void *consumer (void *q)
{
  struct timeval tv;
  time_t timer;
  int index;
  queue *fifo;
  fifo = (queue *)q;

  while(1) {
    if(counter1!=0){
        gettimeofday(&tv, NULL);
        timer=tv.tv_usec;
        counter2=counter2 +1;
        time2_counter=time2_counter + timer;
            }
//////////////////////////////////////////
    pthread_mutex_lock (fifo->mut);
    while (fifo->empty) {
            if(counter1!=0){
                printf ("consumer: queue EMPTY.\n");

            }
      //////////////
                if (counter2>=LOOP*numberOfProd ){
                    printf ("TIME OF PRODUCER - TIME OF CONSUMER = %ld IN MICROSECONDS\n",abs(time1_counter-time2_counter));
                    printf("NUMBER OF TIMES -- %d\n",LOOP*numberOfProd);
                    printf("OVERALL WAITING TIME IS %ld IN MICROSECONDS\n",abs(time1_counter-time2_counter)/counter2);
                     printf("OVERALL WAITING TIME IS %0.3f IN MILLIESECONDS\n",(float)(abs(time1_counter-time2_counter)/counter2)/1000);
                    pthread_cancel(producer);
                    exit(1);
                }
      //////////////
            pthread_cond_wait (fifo->notEmpty, fifo->mut);
            }
    //////////////////////////////////////////
            workFunction delWorkFun;
            delWorkFun=fifo->buf[fifo->head];
            index=delWorkFun.arg;
            printf("THE PACKAGE %d HAD THE VALUE %lf STORED \n",counter2+1,F[index]);
    //////////////////////////////////////////
            queueDel (fifo, &delWorkFun);
            pthread_mutex_unlock (fifo->mut);
            pthread_cond_signal (fifo->notFull);
    }

  return (NULL);
}



queue *queueInit (void)
{
  queue *q;

  q = (queue *)malloc (sizeof (queue));
  if (q == NULL) return (NULL);

  q->empty = 1;
  q->full = 0;
  q->head = 0;
  q->tail = 0;
  q->mut = (pthread_mutex_t *) malloc (sizeof (pthread_mutex_t));
  pthread_mutex_init (q->mut, NULL);
  q->notFull = (pthread_cond_t *) malloc (sizeof (pthread_cond_t));
  pthread_cond_init (q->notFull, NULL);
  q->notEmpty = (pthread_cond_t *) malloc (sizeof (pthread_cond_t));
  pthread_cond_init (q->notEmpty, NULL);

  return (q);
}

void queueDelete (queue *q)
{
  pthread_mutex_destroy (q->mut);
  free (q->mut);
  pthread_cond_destroy (q->notFull);
  free (q->notFull);
  pthread_cond_destroy (q->notEmpty);
  free (q->notEmpty);
  free (q);
}

void queueAdd (queue *q, workFunction in)
{
  q->buf[q->tail] = in;
  q->tail++;
  if (q->tail == QUEUESIZE)
    q->tail = 0;
  if (q->tail == q->head)
    q->full = 1;
  q->empty = 0;

  return;
}

void queueDel (queue *q, workFunction *out)
{
  *out = q->buf[q->head];

  q->head++;
  if (q->head == QUEUESIZE)
    q->head = 0;
  if (q->head == q->tail)
    q->empty = 1;
  q->full = 0;

  return;
}
