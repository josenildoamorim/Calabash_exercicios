Dado(/^que estou na tela inicial$/) do
  element_exists("* text:'TrianguloApp'")
end

Quando(/^eu preencho os <lado(\d+)> <lado(\d+)> e <lado(\d+)>$/) do |table|
  criteria = table.rows_hash
  enter_text "* id:'txtLado1'", criteria['lado1']
  enter_text "* id:'txtLado2'", criteria['lado2']
  enter_text "* id:'txtLado3'", criteria['lado3']
end

Quando(/^eu calculo os lados$/) do
  touch("* id:'btnCalcular'")
end

Entao(/^a <mensagem> será exibida na tela$/) do |table|
  element_exists("* text:'#{table["mensagem"]}")
end
