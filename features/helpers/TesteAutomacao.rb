#Aqui ficaram os métodos relacionados a Automação da Web Motors
#Autor: Diego Spinucci
module WebMotors 


# Esse método e para logar na página da Web Motors

    def WebMotors.login(browser, url)
        browser.goto("https://login.webmotors.com.br/?&r=https://www.webmotors.com.br&inst=header:webmotors::logar-ou-cadastrar")
        sleep 1
        browser.text_field(id: "email").set "diego_spinucci@hotmail.com"
        browser.text_field(id: "senha").set "testewebmotors"
        browser.button(id: "btnEntrar").click
        sleep 3
    end

# Esse método e para selecionar a Marca do veículo na página da Web Motors
    def WebMotors.selecionar_Marca(browser)
        browser.text_field(id: "searchBar").set "Honda"
        browser.div(class: "SearchBar__results__result__name").click
        sleep 3
    end

# Esse Método e para selecionar o Modelo do veículo na página da Web Motors
    def WebMotors.selecionar_Modelo(browser)
        browser.div(class: "Filters__line Filters__line--gray Filters__line--icon Filters__line--icon--right").click
        sleep 2    
        browser.div(class: "Filters__container__group").browser.a(text: "CITY").click
        sleep 2
    end

# Esse Método e para selecionar a versão do veículo na página da Web Motors
def WebMotors.selecionar_Versao(browser)
    browser.div(class: "Filters__line Filters__line--icon Filters__line--icon Filters__line--icon--right Filters__line--gray").click
    sleep 2   
    browser.div(class: "Filters__container__group Filters__container__group--no-border").browser.a(text: "1.5 DX 16V FLEX 4P AUTOMÁTICO").click
    sleep 2
end

# Esse Método e para selecionar o veículo na página da Web Motors
def WebMotors.selecionar_Veiculo(browser)
    browser.div(class: "sc-cJSrbW kJegXq").click
    sleep 5   
  #  browser.div(class: "Filters__container__group Filters__container__group--no-border").browser.a(text: "1.5 DX 16V FLEX 4P AUTOMÁTICO").click
   # sleep 2
end



end
