require 'erb'
require 'jwt'

class Mailer
  def initialize(pedido)
    @pedido = pedido
  end

  def render_email
    template = File.join(File.dirname(__FILE__), 'email_template.html.erb')

    bind = binding
    bind.local_variable_set(:pedido, @pedido)
    bind.local_variable_set(:url, confirmation_url)
    binding.pry
    aedsf
    ERB.new(File.read(template)).result(bind)
  end

  private

  def confirmation_url
    app_url = ENV['APP_URL']
    token = encode_token

    "#{app_url}/confirm?t=#{token}"
  end

  def encode_token
    payload = { pedido: @pedido.id  }

    JWT.encode(payload, ENV['JWT_SECRET'])
  end
end
