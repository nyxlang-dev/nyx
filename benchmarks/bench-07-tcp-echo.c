#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <arpa/inet.h>

int main() {
    int server = socket(AF_INET, SOCK_STREAM, 0);
    int opt = 1;
    setsockopt(server, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt));

    struct sockaddr_in addr = {
        .sin_family = AF_INET,
        .sin_port = htons(9200),
        .sin_addr.s_addr = INADDR_ANY
    };
    bind(server, (struct sockaddr*)&addr, sizeof(addr));
    listen(server, 128);
    printf("TCP echo listening on port 9200\n");

    char buf[4096];
    int count = 0;
    while (count < 10000) {
        int client = accept(server, NULL, NULL);
        if (client >= 0) {
            int n = read(client, buf, sizeof(buf));
            if (n > 0) write(client, buf, n);
            close(client);
            count++;
        }
    }
    close(server);
    printf("handled: %d\n", count);
    return 0;
}
