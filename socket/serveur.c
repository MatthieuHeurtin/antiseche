#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h> /* Consultez NOTES */
#include <sys/socket.h> 
#include <sys/socket.h>
#include <netinet/in.h>
#include <netinet/ip.h> 


int main (int argc, char ** argv)
{
char phrase[255];
printf("ok\n");
    socklen_t len = sizeof(struct sockaddr_in);
//on CONFIG notre socket
struct sockaddr_in addr ; //le struc qui représente l'adresse de nous
addr.sin_family = AF_INET; /* Protocole internet */ 
addr.sin_addr.s_addr = inet_addr("127.0.0.1"); //l'ip
addr.sin_port = htons(5678);//le port

//On cree la socket
int sock = socket(AF_INET, SOCK_STREAM, 0); // on cree une socket TCP
if(sock == -1)
{
	printf("fuck\n");
}
bind(sock, (struct sockaddr *) &addr, sizeof(struct sockaddr));
listen(sock,10);
struct sockaddr_in Appelant;
int new = accept(sock, (struct sockaddr *) &Appelant, &len);
printf("ok\n");
    printf ("Connexion accepté\n");
while (strcmp(phrase, "EXIT") != 0)
{
recv(new,phrase,255 , 0);
printf("%s\n", phrase);

}

}
