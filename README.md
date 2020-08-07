# omnetpp_tcp_simulation


Esta simulação visa apresentar a visualização do mecânismo do **controle de fluxo** do TCP, o uso da escala da **janela de recepção** e a **equidade** de utização de banda presente no protocolo.


O arquivo *network.ned* apresenta duas topologias de rede que são utilizadas na execução da simulação pelo Omnet++. Sendo estas:

* Network_two_clients: topologia possui 3 roteadores e 2 elementos do tipo StandardHost como clientes e 1 como servidor. A rede apresenta dois canais de comunicação, o canal C1 de 1Gbps conecta os 2 roteadores centrais através da interface PPP e o C2
