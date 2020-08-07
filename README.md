# omnetpp_tcp_simulation


Esta simulação visa apresentar a visualização do mecânismo do **controle de fluxo** do TCP, o uso da escala da **janela de recepção** e a **equidade** de utização de banda presente no protocolo e foi elaborada durante a realização da materia EELT7002 - Rede de Comunicação de Dados - 2020.01 da Pós graduação em Engenharia Elétrica da Universidade Federal do Paraná. 


O arquivo *network.ned* apresenta duas topologias de rede que são utilizadas na execução da simulação pelo Omnet++. Sendo estas:

* *Network_two_clients*: topologia possui 3 roteadores e 2 elementos do tipo StandardHost como clientes e 1 como servidor. A rede apresenta dois canais de comunicação, o canal C1 de 1Gbps conecta os 2 roteadores centrais através da interface PPP e o C2 de menor velocidade (100Mbps) conecta os clientes aos respectivos nós na extremidade da rede. Esta topologia é utilizada na analise do gráfica do mecânismo de **controle de congestionamento** e da **equidade**.
* *Network_one_client*: possui praticamente a mesma topologia da *Network_two_clients*, porém retirou-se um cliente e adicionou-se um atraso de 20ms ao canal C2. Utilizado para analisar a uso da escala da **janela de recepção**.

Utilizando as redes acima, desenvolvou-se os seguintes cenários de simulação:

* *Config WS_disabled*: Cenário utilizado para a analisar graficamente o mecânismo do **controle de congestinamento** através da *Network_two_clients*, o Omnet++ possui a variável de saída denomenada *vector:cwnd*. Os valores do vetor cwnd podem ser exportados para o formato de .csv e analizadodados através do script tpc_cwnd_plot_omnetpp.py.
* *Config WS_enabled*: Mesma configuração de rede utilizada em *Config WS_disabled*, porém com o *tcp.windowScalingSupport* habilitado.
* *WS_disabled_one_client*: Utilizado para analizar a questão detalhada em [GitHub Pages](https://pages.github.com/).


* *Config two_clients_four_conections_fairness*: 
* *Config two_clients_four_conections_fairness*:


