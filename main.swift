import Foundation

// enum tipos de mensagem
enum TipoMensagem {
    case promocao // mensagens de promoção
    case lembrete // mensagens de lembrete
    case alerta // mensagens de alerta
}

// struct para representar uma mensagem
/// struct que contém os detalhes de uma mensagem, como o tipo e o conteúdo.
struct Mensagem {
    let tipo: TipoMensagem // tipo da mensagem (ex: promoção, lembrete, alerta)
    let conteudo: String // conteúdo da mensagem
}

// protocolo notificavel
/// protocolo que define os métodos necessários para enviar uma notificação.
protocol Notificavel {
    var mensagem: Mensagem { get }  // propriedade que contém a mensagem a ser enviada
    func enviarNotificacao() // método para enviar a notificação
}

// protocolo extension com implementação padrão
extension Notificavel {
    func enviarNotificacao() {
        print("Enviando notificação...") // mensagem genérica de envio
    }
}

// struct para envio por email
struct Email: Notificavel {
    let enderecoEmail: String // endereço de email do destinatário
    let mensagem: Mensagem 

    /// método sobrescrito do envio de notificação por email
    func enviarNotificacao() {
        print("Enviando email para \(enderecoEmail): \(mensagem.conteudo)")
    }
}

// struct para envio por sms
struct SMS: Notificavel {
    let numeroTelefone: String // número de telefone do destinatário
    let mensagem: Mensagem

    /// método sobrescrito do envio de notificação por sms
    func enviarNotificacao() {
        print("Enviando SMS para \(numeroTelefone): \(mensagem.conteudo)")
    }
}

// struct para envio por push notification
struct PushNotification: Notificavel {
    let tokenDispositivo: String // token do dispositivo para enviar a notificação
    let mensagem: Mensagem

    /// método sobrescrito do envio de notificação por push 
    func enviarNotificacao() {
        print("Enviando push para dispositivo \(tokenDispositivo): \(mensagem.conteudo)")
    }
}

// criando instâncias de mensagens
let mensagemPromocao = Mensagem(tipo: .promocao, conteudo: "Desconto de 20% em todos os produtos!") 
let mensagemAlerta = Mensagem(tipo: .alerta, conteudo: "Seu pagamento está pendente")
let mensagemLembrete = Mensagem(tipo: .lembrete, conteudo: "Consulta médica amanhã às 10h")

// criando instâncias de canais de notificação
let email = Email(enderecoEmail: "cliente@exemplo.com", mensagem: mensagemPromocao) // notificação por email
let sms = SMS(numeroTelefone: "+5511999999999", mensagem: mensagemAlerta) // notificação por sms
let push = PushNotification(tokenDispositivo: "device_abc123", mensagem: mensagemLembrete) // notificação por push notification

// array de notificações
let canaisNotificacao: [Notificavel] = [email, sms, push]

// enviando notificações
for canal in canaisNotificacao {
    canal.enviarNotificacao() // chama o método de envio de cada notificação
}