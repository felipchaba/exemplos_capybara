#Acessando o iFood e visualizando restaurantes
Given("Eu acesso o iFood") do
    visit "https://www.ifood.com.br"
  end
  
  When("Eu digito o CEP {string}") do |cep|
    find(id: "cep").set cep
    click_on(class: "buscarCep submitCep")
  end
  
  Then("Eu digito o numero do endereco {string}") do |numero|
    find(:css, '.field5.streetNumber').set numero
    click_on(class: "submit")
  end
  
  Then("Eu vejo os restaurantes disponiveis") do
    puts "Restaurantes"
  end

#Acessando o cardapio e realizando o pedido
  When("Eu acesso o primeiro restaurante") do
    page.all(:css, "name")[0].click
  end
  
  When("Eu vejo o cardapio") do
    puts "Cardapio"
  end
  
  Then("Eu seleciono o prato escondidinho") do
    find(id: "item-49210859")
    click_on(class: "btn-add btn-add-to-cart")

  end
  
  Then("Eu escolho a forma de pagamento") do
    click_on(class: "btn")
  end

  #Realizar cadastro para finalizar pedido
  When("Eu acesso o cadastro") do
    puts "Cadastro Acessado"
  end
  
  Then("Eu clico em cadastrar como facebook") do
    click_on(class: "facebook-access")
  end
  
  Then("Eu digito o ddd {string} e o telefone {string}") do |ddd, phone|
    find(id: "DDDFb").set ddd
    find(id: "phoneFb").set phone
  end
  
  Then("Eu aceito os termos de uso") do
    uncheck(id: "termosFb")
  end
  
  Then("Eu clico em cadastrar") do
    click_button(id: "cadastrarFB")
  end                                                           