class ConfirmationController < ApplicationController
  def confirm
    token = params[:t]

    payload = JWT.decode(token, ENV['JWT_SECRET'])

    Pedido.find(payload.first['pedido']).update!(confirmado: true)

    redirect_to "#{ENV['FRONTEND_URL']}/#/confirmacao"
  end
end
