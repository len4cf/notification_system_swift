## Somativo: Projeto Swift
Aluna: Helena Carvalho Ferreira

1.	Protocolo Notificavel:
- Defina um protocolo chamado Notificavel com as seguintes propriedades:
    - mensagem: String (a mensagem a ser enviada)
- O protocolo deve ter um método chamado enviarNotificacao().

![image](https://github.com/user-attachments/assets/b6f63e0d-f939-4cac-b48c-1c927e40057c)

2.	Tipos Conformantes:
- Crie structs para representar diferentes tipos de canais de notificação:
    - Email: Deve ter uma propriedade enderecoEmail: String.
    - SMS: Deve ter uma propriedade numeroTelefone: String.
    - PushNotification: Deve ter uma propriedade tokenDispositivo: String.
- Cada struct deve conformar ao protocolo Notificavel e implementar o método enviarNotificacao(). A implementação de cada método deve simular o envio da notificação (apenas imprimir uma mensagem no console).

![image](https://github.com/user-attachments/assets/9a878c62-d101-42e5-b0bb-88f0e5405e08)

3.	Protocol Extensions:
- Crie uma protocol extension para Notificavel que forneça uma implementação padrão para o método enviarNotificacao(). Esta implementação padrão deve apenas imprimir uma mensagem genérica no console ("Enviando notificação...").
- Sobrescreva a implementação padrão em cada struct para imprimir uma mensagem mais específica (ex: "Enviando email para [enderecoEmail]: [mensagem]").

![image](https://github.com/user-attachments/assets/e0f5e8bb-f346-4aa3-87fe-d9c58f427e29)

4.	Agrupamento de Canais (Array com Protocol Composition):
- Crie um array que possa armazenar objetos de diferentes tipos (Email, SMS, PushNotification), desde que todos conformem ao protocolo Notificavel.
- Itere sobre o array e chame o método enviarNotificacao() de cada objeto.

![image](https://github.com/user-attachments/assets/bda478b8-54da-4dac-a6e8-83e220e5f9ce)

5.	Sistema de Mensagens:
- Crie um enum TipoMensagem que possua casos como promocao, lembrete, alerta.
- Crie um struct Mensagem que possua um tipo TipoMensagem e um conteudo: String
- Modifique o protocolo Modificavel para usar o struct Mensagem.

![image](https://github.com/user-attachments/assets/455de069-0047-40f7-9d84-60d2e55faad1)
![image](https://github.com/user-attachments/assets/3d7ead1c-c35f-4e0f-a84f-a616b9bf455e)
![image](https://github.com/user-attachments/assets/91f5edb9-49a2-4d0b-a345-283aea1316a8)

6.	Lógica Principal:
- O programa deve criar instâncias de diferentes tipos de canais de notificação e adicioná-los ao array.
- O programa deve iterar sobre o array e enviar as notificações para cada canal, exibindo as mensagens apropriadas no console.
- O programa deve possibilitar a criação de mensagens (estruturas) e atribuí-las aos canais

![image](https://github.com/user-attachments/assets/6996e772-9c74-4719-a790-043b4584917b)


