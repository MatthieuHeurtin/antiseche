#include <sys/socket.h>
#include <netinet/in.h>
#include <stdio.h>
#include <errno.h>
#include <stdlib.h>
#include <string.h>
 
int main() {
 
    char phrase[255];
 
    struct sockaddr_in informations;
 
    informations.sin_family = AF_INET;
    informations.sin_port = htons(5678);
    informations.sin_addr.s_addr = inet_addr("127.0.0.1");
 
 
    int socketID = socket(AF_INET, SOCK_STREAM, 0);
 
    if (socketID == -1) {
        perror("socket");
        exit (-1);
    }
 
 
 
    if ((connect(socketID, (struct sockaddr*) &informations, sizeof(struct sockaddr_in))) == -1) {
printf("vut pas se co\n");
        exit (-1);
    }
 
printf("Entrez une phrase\n");
scanf("%s", phrase);
send(socketID,phrase,strlen(phrase),0); 

    shutdown(socketID, SHUT_RDWR);
 
    return 0;
 
}
