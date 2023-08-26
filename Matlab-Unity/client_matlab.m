% Matlab as client, unity as server
clc
clear all
tcpipClient = tcpip('127.0.0.1',55001,'NetworkRole','Client');
set(tcpipClient,'Timeout',30);
fopen(tcpipClient);
a='yah!! we could make it';
fwrite(tcpipClient,a);
fclose(tcpipClient);

% in each implementation the server should runs first before the client otherwise you will get the below error
% Connection refused:in Matlab or remote machine actively refuse the connection in unity 
