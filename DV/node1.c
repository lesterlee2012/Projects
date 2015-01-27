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
} dt1;


/* students to write the following two routines, and maybe some others */
int linkcost10=1;
int linkcost12=1;

rtinit1() 
{
     dt1.costs[0][0]=999;
     dt1.costs[0][1]=999;
     dt1.costs[0][2]=999;
     dt1.costs[0][3]=999;
     dt1.costs[1][0]=1;
     dt1.costs[1][1]=0;
     dt1.costs[1][2]=1;
     dt1.costs[1][3]=999;
     dt1.costs[2][0]=999;
     dt1.costs[2][1]=999;
     dt1.costs[2][2]=999;
     dt1.costs[2][3]=999;
     dt1.costs[3][0]=999;
     dt1.costs[3][1]=999;
     dt1.costs[3][2]=999;
     dt1.costs[3][3]=999;
 
     //For each neighbor 0,2
    //Create a routing packet rtpkt
    struct rtpkt rtpkt1;
    struct rtpkt * initrtpkt;
    initrtpkt=&rtpkt1;
    
    //Setup the corresponding fields and Send the packets
    creatertpkt( initrtpkt, 1, 0, dt1.costs[1]);
    tolayer2(rtpkt1);
    creatertpkt( initrtpkt, 1, 2, dt1.costs[1]);
    tolayer2(rtpkt1);
}


rtupdate1(rcvdpkt)
  struct rtpkt *rcvdpkt;
  
{
 //receive DV
 dt1.costs[rcvdpkt->sourceid][0]=rcvdpkt->mincost[0];
 dt1.costs[rcvdpkt->sourceid][1]=rcvdpkt->mincost[1];
 dt1.costs[rcvdpkt->sourceid][2]=rcvdpkt->mincost[2];
 dt1.costs[rcvdpkt->sourceid][3]=rcvdpkt->mincost[3];
 
 //update own DV
 int change=0;
 int update[4];
 update[0]=min2(linkcost10+dt1.costs[0][0],linkcost12+dt1.costs[2][0]);
 update[1]=0;
 update[2]=min2(linkcost10+dt1.costs[0][2],linkcost12+dt1.costs[2][2]);
 update[3]=min2(linkcost10+dt1.costs[0][3],linkcost12+dt1.costs[2][3]);
 int i;
 //update DT
 for(i=0;i<4;i++)
 {
  if(dt1.costs[1][i]!=update[i])change=1;
  dt1.costs[1][i]=update[i];
 }
 
 //mincost change? notification
 if(change==1)
 {
 //For each neighbor 0,2
    //Create a routing packet rtpkt
    struct rtpkt rtpkt1;
    struct rtpkt * initrtpkt;
    initrtpkt=&rtpkt1;
    
    //Setup the corresponding fields and Send the packets
    creatertpkt( initrtpkt, 1, 0, dt1.costs[1]);
    tolayer2(rtpkt1);
    printf("\nDV1 sent to node0, contents: %3d %3d %3d %3d\n", 
              initrtpkt->mincost[0], initrtpkt->mincost[1],
              initrtpkt->mincost[2], initrtpkt->mincost[3]);
    creatertpkt( initrtpkt, 1, 2, dt1.costs[1]);
    tolayer2(rtpkt1);
    printf("DV1 sent to node2, contents: %3d %3d %3d %3d\n\n", 
              initrtpkt->mincost[0], initrtpkt->mincost[1],
              initrtpkt->mincost[2], initrtpkt->mincost[3]);
  }
 
 //printout DT
     struct distance_table *dtptr;
     dtptr=&dt1;
     printdt1(dtptr);
    
}


printdt1(dtptr)
  struct distance_table *dtptr;
  
{
  printf("             dest   \n");
  printf("   D1 |    0     1     2     3\n");
  printf("  ----|-----------------------\n");
  printf("via  0|  %3d   %3d   %3d   %3d\n",dtptr->costs[0][0], dtptr->costs[0][1],dtptr->costs[0][2],dtptr->costs[0][3]);
  printf("     1|  %3d   %3d   %3d   %3d\n",dtptr->costs[1][0], dtptr->costs[1][1],dtptr->costs[1][2],dtptr->costs[1][3]);
  printf("     2|  %3d   %3d   %3d   %3d\n\n",dtptr->costs[2][0], dtptr->costs[2][1],dtptr->costs[2][2],dtptr->costs[2][3]);

}



linkhandler1(linkid, newcost)   
int linkid, newcost;   
/* called when cost from 1 to linkid changes from current value to newcost*/
/* You can leave this routine empty if you're an undergrad. If you want */
/* to use this routine, you'll need to change the value of the LINKCHANGE */
/* constant definition in prog3.c from 0 to 1 */
	
{
    if(linkid==0)
    {  
         linkcost10=newcost;
         //update own DV
         int change=0;
         int update[4];
         update[0]=min2(linkcost10+dt1.costs[0][0],linkcost12+dt1.costs[2][0]);
         update[1]=0;
         update[2]=min2(linkcost10+dt1.costs[0][2],linkcost12+dt1.costs[2][2]);
         update[3]=min2(linkcost10+dt1.costs[0][3],linkcost12+dt1.costs[2][3]);
         int i;
         //update DT
         for(i=0;i<4;i++)
         {
          if(dt1.costs[1][i]!=update[i])change=1;
          dt1.costs[1][i]=update[i];
         }
         
         //mincost change? notification
         if(change==1)
         {
         //For each neighbor 0,2
            //Create a routing packet rtpkt
            struct rtpkt rtpkt1;
            struct rtpkt * initrtpkt;
            initrtpkt=&rtpkt1;
            
            //Setup the corresponding fields and Send the packets
            creatertpkt( initrtpkt, 1, 0, dt1.costs[1]);
            tolayer2(rtpkt1);
            printf("\nDV1 sent to node0, contents: %3d %3d %3d %3d\n", 
                      initrtpkt->mincost[0], initrtpkt->mincost[1],
                      initrtpkt->mincost[2], initrtpkt->mincost[3]);
            creatertpkt( initrtpkt, 1, 2, dt1.costs[1]);
            tolayer2(rtpkt1);
            printf("DV1 sent to node2, contents: %3d %3d %3d %3d\n\n", 
                      initrtpkt->mincost[0], initrtpkt->mincost[1],
                      initrtpkt->mincost[2], initrtpkt->mincost[3]);
          }
         
         //printout DT
             struct distance_table *dtptr;
             dtptr=&dt1;
             printdt1(dtptr);
      }
}


