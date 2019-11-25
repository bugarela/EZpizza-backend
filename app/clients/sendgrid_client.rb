require 'httparty'
require_relative '../mailer'

class SendgridClient
  def initialize
    @sendgrid_username = ENV['SENDGRID_USERNAME']
    @sendgrid_password = ENV['SENDGRID_PASSWORD']
  end

  def send_email(pedido)
    HTTParty.post('https://api.sendgrid.com/api/mail.send.json', body: email_params(pedido))
  end

  private

  def email_params(pedido)
    {
      api_key: @sendgrid_password,
      api_user: @sendgrid_username,
      from: 'contato@ezpizza.com.br',
      fromname: 'EZ-Pizza',
      html: ::Mailer.new(pedido).render_email,
      subject: 'Confirmação EZ-Pizza',
      to: pedido.email,
    }
  end
end
