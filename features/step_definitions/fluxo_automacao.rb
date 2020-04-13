require_relative '../helpers/TesteAutomacao.rb'



#-----------------------------------------------------------------------------------------------------------------#
# => WEB MOTORS (DESAFIO WEBMOTORS :: TI)
#-----------------------------------------------------------------------------------------------------------------#

Dado("estou na tela de login") do
  WebMotors::login(@browser, @url)
end

Quando("seleciono uma marca") do
  WebMotors::selecionar_Marca(@browser)
end

Quando("seleciono o modelo") do
  WebMotors::selecionar_Modelo(@browser)
end

Quando("seleciono a versao") do
  WebMotors::selecionar_Versao(@browser)
end

Então("seleciono o veiculo") do
  WebMotors::selecionar_Veiculo(@browser)
end


#---------------------------------------------#########----------------------------------------------------------#

