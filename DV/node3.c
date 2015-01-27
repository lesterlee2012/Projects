#include <stdio.h>

extern struct rtpkt {
  int sourceid;       /* id of sending router sending this pkt */
  int destid;         /* id of router to which pkt being sent 
                         (must be an immediate neighbor) */
  int mincost[4];    /* min cost to node 0 ... 3 */
};

extern int TRACE;
extern int YES;
extern int NO;
extern float clocktime;

struct distance_table 
{
  int costs[4][4];
} dt3;

/* students to write the following two routines, and maybe some others */
int linkcost30=7;
int linkcost32=2;

void rtinit3() 
{
 dt3.costs[0][0]=999;
 dt3.costs[0][1]=999;
 dt3.costs[0][2]=999;
 dt3.costs[0][3]=999;
 dt3.costs[1][0]=999;
 dt3.costs[1][1]=999;
 dt3.costs[1][2]=999;
 dt3.costs[1][3]=999;
 dt3.costs[2][0]=999;
 dt3.costs[2][1]=999;
 dt3.costs[2][2]=999;
 dt3.costs[2][3]=999;
 dt3.costs[3][0]=7;
 dt3.costs[3][1]=999;
 dt3.costs[3][2]=2;
 dt3.costs[3][3]=0;
 
 //For each neighbor 0,2
    //Create a routing packet rtpkt
    struct rtpkt rtpkt3;
    struct rtpkt * initrtpkt;
    initrtpkt=&rtpkt3;
    
    //Setup the corresponding fields and Send the packets
    creatertpkt( initrtpkt, 3, 0, dt3.costs[3]);
    tolayer2(rtpkt3);
    creatertpkt( initrtpkt, 3, 2, dt3.costs[3]);
    tolayer2(rtpkt3);
}


void rtupdate3(rcvdpkt)
  struct rtpkt *rcvdpkt;
  
{
//update DT
 //receive DV
 dt3.costs[rcvdpkt->sourceid][0]=rcvdpkt->mincost[0];
 dt3.costs[rcvdpkt->sourceid][1]=rcvdpkt->mincost[1];
 dt3.costs[rcvdpkt->sourceid][2]=rcvdpkt->mincost[2];
 dt3.costs[rcvdpkt->sourceid][3]=rcvdpkt->mincost[3];
 
 //update own DV
 int change=0;
 int update[4];
 update[0]=min2(linkcost30+dt3.costs[0][0],linkcost32+dt3.costs[2][0]);
 update[1]=min2(linkcost30+dt3.costs[0][1],linkcost32+dt3.costs[2][1]);
 update[2]=min2(linkcost30+dt3.costs[0][2],linkcost32+dt3.costs[2][2]);
 update[3]=0;
 int i;
 for(i=0;i<4;i++)
 {
  if(dt3.costs[3][i]!=update[i])change=1;
  dt3.costs[3][i]=update[i];
 }
 
 //mincost change? notification
 if(change==1)
 {
 //For each neighbor 0,2
    //Create a routing packet rtpkt
    struct rtpkt rtpkt3;
    struct rtpkt * initrtpkt;
    initrtpkt=&rtpkt3;
    
    //Setup the corresponding fields and Send the packets
    creatertpkt( initrtpkt, 3, 0, dt3.costs[3]);
    tolayer2(rtpkt3);
    printf("\nDV3 sent to node0, contents: %3d %3d %3d %3d\n", 
              initrtpkt->mincost[0], initrtpkt->mincost[1],
              initrtpkt->mincost[2], initrtpkt->mincost[3]);
    creatertpkt( initrtpkt, 3, 2, dt3.costs[3]);
    tolayer2(rtpkt3);
    printf("DV3 sent to node2, contents: %3d %3d %3d %3d\n\n", 
              initrtpkt->mincost[0], initrtpkt->mincost[1],
              initrtpkt->mincost[2], initrtpkt->mincost[3]);
  }
  
  //printout DT
     struct distance_table *dtptr;
     dtptr=&dt3;
     printdt3(dtptr);

}


printdt3(dtptr)
  struct distance_table *dtptr;
  
{
  printf("             dest   \n");
  printf("   D3 |    0     1     2     3\n");
  printf("  ----|-----------------------\n");
  printf("via  0|  %3d   %3d   %3d   %3d\n",dtptr->costs[0][0], dtptr->costs[0][1],dtptr->costs[0][2],dtptr->costs[0][3]);
  printf("     2|  %3d   %3d   %3d   %3d\n",dtptr->costs[2][0], dtptr->costs[2][1],dtptr->costs[2][2],dtptr->costs[2][3]);
  printf("     3|  %3d   %3d   %3d   %3d\n\n",dtptr->costs[3][0], dtptr->costs[3][1],dtptr->costs[3][2],dtptr->costs[3][3]);

}







