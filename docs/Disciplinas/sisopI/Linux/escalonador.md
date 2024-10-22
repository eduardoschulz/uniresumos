# Escalonador no Linux

O escalonador é responsável pela organização e balanceamentos das tarefas a serem
executadas pelo processador. São geralmente projetados para manter todo _hardware_ 
disponível ocupado e permitir que múltiplos usuários possam compartilhar os recursos
de sistemas sem conflitos. 

O escalonador deve varias dependendo do seu objetivo principal, alguns desses objetivos sendo: 
    - reduzir latência, como em _real time_
    - maximizar _throughput_

### Linux _Real Time_

Sistemas _real-time_ são geralmente utilizados em cenários onde a latência
não pode ultrapassar _deadlines_.Um exemplo é em sistemas industriais onde que se 
uma mensagem demora demais e ultrapassa o seu _deadline_ a informação deve ser descartada.

Ambos escalonadores FIFO e RR são considerados "_real-time_" pois implementam pois .
## Exemplos
### FIFO (_First In First Out_)

A técnica do FIFO é basicamente uma fila. Um processo entra em fila e quando chega sua vez ele é executado.

### RR (_Round Robin_)

Round Robin é uma variação da politica FIFO.

https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/6/html/performance_tuning_guide/ch04s02s02#idm140718705434320

https://docs.kernel.org/scheduler/sched-eevdf.html

https://docs.kernel.org/scheduler/sched-design-CFS.html
