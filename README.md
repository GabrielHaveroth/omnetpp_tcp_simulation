# omnetpp_tcp_simulation


Esta simulação visa apresentar a visualização do mecânismo do **controle de fluxo** do TCP, o uso da escala da **janela de recepção** e a **equidade** de utização de banda presente no protocolo.


O arquivo *network.ned* apresenta duas topologias de rede que são utilizadas na execução da simulação pelo Omnet++. Sendo estas:

* *Network_two_clients*: topologia possui 3 roteadores e 2 elementos do tipo StandardHost como clientes e 1 como servidor. A rede apresenta dois canais de comunicação, o canal C1 de 1Gbps conecta os 2 roteadores centrais através da interface PPP e o C2 de menor velocidade (100Mbps) conecta os clientes aos respectivos nós na extremidade da rede. Esta topologia é utilizada na analise do gráfica do mecânismo de **controle de fluxo** e da **equidade**.
* *Network_one_client*: possui praticamente a mesma topologia da *Network_two_clients*, porém retirou-se um cliente e adicionou-se um atraso de 20ms ao canal C2. Utilizado para analisar a uso da escala da **janela de recepção**.

Utilizando as redes acima, desenvolvou-se os seguintes cenários de simulação:

* *Config WS_disabled*:
* *Config WS_enabled*:
* *Config two_clients_four_conections_fairness*:
* *Config two_clients_four_conections_fairness*:


