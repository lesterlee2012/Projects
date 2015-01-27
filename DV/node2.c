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
} dt2;


/* students to write the following two routines, and maybe some others */
int linkcost21=1;
int linkcost20=3;
int linkcost23=2;

void rtinit2() 
{
 dt2.costs[0][0]=999;
 dt2.costs[0][1]=999;
 dt2.costs[0][2]=999;
 dt2.costs[0][3]=999;
 dt2.costs[1][0]=999;
 dt2.costs[1][1]=999;
 dt2.costs[1][2]=999;
 dt2.costs[1][3]=999;
 dt2.costs[2][0]=3;
 dt2.costs[2][1]=1;
 dt2.costs[2][2]=0;
 dt2.costs[2][3]=2;
 dt2.costs[3][0]=999;
 dt2.costs[3][1]=999;
 dt2.costs[3][2]=999;
 dt2.costs[3][3]=999;
 
 //For each neighbor 1,0,3
//Create a routing packet rtpkt
struct rtpkt rtpkt2;
struct rtpkt * initrtpkt;
initrtpkt=&rtpkt2;

//Setup the corresponding fields and Send the packets
creatertpkt( initrtpkt, 2, 1, dt2.costs[2]);
tolayer2(rtpkt2);
creatertpkt( initrtpkt, 2, 0, dt2.costs[2]);
tolayer2(rtpkt2);
creatertpkt( initrtpkt, 2, 3, dt2.costs[2]);
tolayer2(rtpkt2);
}


void rtupdate2(rcvdpkt)
  struct rtpkt *rcvdpkt;
  
{
//update DT
 //receive DV
 dt2.costs[rcvdpkt->sourceid][0]=rcvdpkt->mincost[0];
 dt2.costs[rcvdpkt->sourceid][1]=rcvdpkt->mincost[1];
 dt2.costs[rcvdpkt->sourceid][2]=rcvdpkt->mincost[2];
 dt2.costs[rcvdpkt->sourceid][3]=rcvdpkt->mincost[3];
 
 //update own DV
 int change=0;
 int update[4];
 update[0]=min3(linkcost21+dt2.costs[1][0],linkcost20+dt2.costs[0][0],linkcost23+dt2.costs[3][0]);
 update[1]=min3(linkcost21+dt2.costs[1][1],linkcost20+dt2.costs[0][1],linkcost23+dt2.costs[3][1]);
 update[2]=0;
 update[3]=min3(linkcost21+dt2.costs[1][3],linkcost20+dt2.costs[0][3],linkcost23+dt2.costs[3][3]);
 int i;
 for(i=0;i<4;i++)
 {
  if(dt2.costs[2][i]!=update[i])change=1;
  dt2.costs[2][i]=update[i];
 }
 
 //mincost change? notification
 if(change==1)
 {
  //For each neighbor 1,0,3
    //Create a routing packet rtpkt
    struct rtpkt rtpkt2;
    struct rtpkt * initrtpkt;
    initrtpkt=&rtpkt2;
    
    //Setup the corresponding fields and Send the packets
    creatertpkt( initrtpkt, 2, 1, dt2.costs[2]);
    tolayer2(rtpkt2);
    printf("\nDV2 sent to node1, contents: %3d %3d %3d %3d\n", 
              initrtpkt->mincost[0], initrtpkt->mincost[1],
              initrtpkt->mincost[2], initrtpkt->mincost[3]);
    creatertpkt( initrtpkt, 2, 0, dt2.costs[2]);
    tolayer2(rtpkt2);
    printf("DV2 sent to node0, contents: %3d %3d %3d %3d\n", 
              initrtpkt->mincost[0], initrtpkt->mincost[1],
              initrtpkt->mincost[2], initrtpkt->mincost[3]);
    creatertpkt( initrtpkt, 2, 3, dt2.costs[2]);
    tolayer2(rtpkt2);
    printf("DV2 sent to node3, contents: %3d %3d %3d %3d\n\n", 
              initrtpkt->mincost[0], initrtpkt->mincost[1],
              initrtpkt->mincost[2], initrtpkt->mincost[3]);
  }
  
  //printout DT
     struct distance_table *dtptr;
     dtptr=&dt2;
     printdt2(dtptr);
    
}


printdt2(dtptr)
  struct distance_table *dtptr;
  
{
  printf("                dest     \n");
  printf("   D2 |    0    1     2    3 \n");
  printf("  ----|----------------------\n");
  printf("     0|  %3d  %3d   %3d  %3d\n",dtptr->costs[0][0],dtptr->costs[0][1],
	 dtptr->costs[0][2],dtptr->costs[0][3]);
  printf("via  1|  %3d  %3d   %3d  %3d\n",dtptr->costs[1][0],dtptr->costs[1][1],
	 dtptr->costs[1][2],dtptr->costs[1][3]);
  printf("     2|  %3d  %3d   %3d  %3d\n",dtptr->costs[2][0],dtptr->costs[2][1],
	 dtptr->costs[2][2],dtptr->costs[2][3]);
  printf("     3|  %3d  %3d   %3d  %3d\n\n",dtptr->costs[3][0],dtptr->costs[3][1],
	 dtptr->costs[3][2],dtptr->costs[3][3]);
}







