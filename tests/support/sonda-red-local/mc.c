#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#define G "239.255.77.77"
#define P 45877
static int rx(const char* ifip, int reuseport, const char* label){
  int fd=socket(AF_INET,SOCK_DGRAM,0); int one=1;
  setsockopt(fd,SOL_SOCKET,SO_REUSEADDR,&one,4);
  if(reuseport) setsockopt(fd,SOL_SOCKET,SO_REUSEPORT,&one,4);
  struct sockaddr_in a; memset(&a,0,sizeof a); a.sin_family=AF_INET; a.sin_port=htons(P); a.sin_addr.s_addr=htonl(INADDR_ANY);
  if(bind(fd,(void*)&a,sizeof a)<0){printf("%s bind: %s\n",label,strerror(errno));return -1;}
  struct ip_mreq m; inet_pton(AF_INET,G,&m.imr_multiaddr); inet_pton(AF_INET,ifip,&m.imr_interface);
  if(setsockopt(fd,IPPROTO_IP,IP_ADD_MEMBERSHIP,&m,sizeof m)<0){printf("%s join(%s): %s\n",label,ifip,strerror(errno));return -1;}
  struct timeval tv={1,0}; setsockopt(fd,SOL_SOCKET,SO_RCVTIMEO,&tv,sizeof tv);
  return fd;
}
static void tx(const char* ifip,const char*msg){
  int fd=socket(AF_INET,SOCK_DGRAM,0);
  struct in_addr i; inet_pton(AF_INET,ifip,&i);
  if(setsockopt(fd,IPPROTO_IP,IP_MULTICAST_IF,&i,sizeof i)<0) printf("tx IF %s: %s\n",ifip,strerror(errno));
  unsigned char loop=1; setsockopt(fd,IPPROTO_IP,IP_MULTICAST_LOOP,&loop,1);
  unsigned char ttl=1; setsockopt(fd,IPPROTO_IP,IP_MULTICAST_TTL,&ttl,1);
  struct sockaddr_in a; memset(&a,0,sizeof a); a.sin_family=AF_INET; a.sin_port=htons(P); inet_pton(AF_INET,G,&a.sin_addr);
  if(sendto(fd,msg,strlen(msg),0,(void*)&a,sizeof a)<0) printf("tx send: %s\n",strerror(errno));
  close(fd);
}
static void try_(const char* rxif,const char* txif,int rp){
  printf("== rx-join=%s tx-if=%s reuseport=%d\n",rxif,txif,rp);
  int a=rx(rxif,rp,"A"), b=rx(rxif,rp,"B"); if(a<0||b<0) {if(a>=0)close(a); if(b>=0)close(b); return;}
  tx(txif,"hola");
  char buf[64]; struct sockaddr_in from; socklen_t fl=sizeof from; ssize_t n;
  n=recvfrom(a,buf,63,0,(void*)&from,&fl); printf("A: n=%zd %s from %s\n",n,n<0?strerror(errno):"ok",n<0?"-":inet_ntoa(from.sin_addr));
  fl=sizeof from; n=recvfrom(b,buf,63,0,(void*)&from,&fl); printf("B: n=%zd %s from %s\n",n,n<0?strerror(errno):"ok",n<0?"-":inet_ntoa(from.sin_addr));
  close(a);close(b);
}
int main(){
  try_("172.31.17.109","172.31.17.109",1);
  try_("172.31.17.109","172.31.17.109",0);
  try_("127.0.0.1","127.0.0.1",1);
  try_("127.0.0.1","172.31.17.109",1);
  try_("172.31.17.109","127.0.0.1",1);
  try_("0.0.0.0","172.31.17.109",1);
  return 0;}
