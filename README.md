# omnetpp_tcp_simulation


Esta simulação visa apresentar a visualização do mecanismo do **controle de fluxo** do TCP, o uso da escala da **janela de recepção** (RFC 1323) e a **equidade** de utilização de banda presente no protocolo. Trabalho elaborado durante a realização da matéria EELT7002 - Rede de Comunicação de Dados - 2020.01 da Pós graduação em Engenharia Elétrica da Universidade Federal do Paraná. 

O arquivo *network.ned* apresenta duas topologias de rede que são utilizadas na execução da simulação pelo Omnet++. Sendo estas:

* *Network_two_clients*: topologia possui 3 roteadores e 2 elementos do tipo StandardHost como clientes e 1 como servidor. A rede apresenta dois canais de comunicação, o canal C1 de 1Gbps conecta os 2 roteadores centrais através da interface PPP e o C2 de menor velocidade (100Mbps) conecta os clientes aos respectivos nós na extremidade da rede. Esta topologia é utilizada na análise do gráfica do mecanismo de **controle de congestionamento** e da **equidade**.
* *Network_one_client*: possui praticamente a mesma topologia da *Network_two_clients*, porém retirou-se um cliente e adicionou-se um atraso de 20ms ao canal C2. Utilizado para analisar a uso da escala da **janela de recepção**.

Utilizando as redes acima, desenvolveu-se os seguintes cenários de simulação:

* *Config WS_disabled*: Cenário utilizado para a analisar graficamente o mecanismo do **controle de congestionamento** ([TCP congestion control](https://en.wikipedia.org/wiki/TCP_congestion_control)) através da *Network_two_clients*, o Omnet++ possui a variável de saída denominada *vector:cwnd*. Os valores do vetor cwnd podem ser exportados para o formato de .csv e analisados dados através do script tpc_cwnd_plot_omnetpp.py.
* *Config WS_enabled*: Mesma configuração de rede utilizada em *Config WS_disabled*, porém com o *tcp.windowScalingSupport* habilitado.
* *Config WS_enabled_one_client*: Através da *Network_one_client*, é utilizado para analizar a questão detalhada em [TCP window scale option](https://en.wikipedia.org/wiki/TCP_window_scale_option#:~:text=The%20TCP%20window%20scale%20option,long%20fat%20networks%20(LFNs).). Deve-se observar neste caso um ganho na utilização da capacidade do canal ao habilitar-se o *tcp.windowScalingSupport*, aumentando-se 100 vezes o tamanho da janela de recepção.
* *Config WS_disabled_one_client*: Oposto ao cenário *Config WS_enabled_one_client*, deve-se observar o pior desempenho na utilização do Cana C2.
* *Config two_clients_three_conections_fairness*: Adicionou-se uma conexão TCP ao *other_client* para observar-se a equidade disponibilizada pelo controle de fluxo do TCP. Estendeu-se o cenário *WS_enabled*. 
* *Config two_clients_four_conections_fairness*: Adicionou-se duas conexões TCP ao *other_client* para observa-se a equidade apresentada pelo equidade disponibilizada pelo controle de fluxo TCP. Estendeu-se o cenário *WS_enabled*. 




