describe "POST /PostCriarAluno" do
  context "cadastro com sucesso" do
      before(:all) do #roda 1 vez para todos os contextos
          instituicao = "Uninabuco"
          payload = {Nome: Faker::Name.first_name, SobreNome: Faker::Name.last_name, Email: Faker::Internet.free_email, CPF: Faker::IDNumber.brazilian_citizen_number(formatted: true), Telefone: Faker::PhoneNumber.cell_phone, CursoInstituicao: "Creative Arts"}
          @result_cadastro = Signup.new.create(payload, instituicao)
      end

      it "valida status code" do
         expect(@result_cadastro.code).to eql 200
      end

      it "valida resposta da api" do
         @result_cadastro = (eval(@result_cadastro.parsed_response)).to_h #transformando o resultado que vem em string em um array com a função eval e dps em um hash
          puts @result_cadastro
          expect(@result_cadastro[:Sucess]).to be true   
        end
  end

  examples = Helpers::get_fixture("signup")

  examples.each do |e| # percorre 1 exemplo do array por vez
    context "#{e[:title]}" do # nome de cada titulo de acordo com os exemplos do array
      before(:all) do #roda 1 vez para todos os contextos
        @result = Signup.new.create(e[:payload], e[:instituicao])     #chama o resultado do exemplo
      end
    
      it "valida status code #{e[:code]}" do #interpolando para aparecer os códigos
        expect(@result.code).to eql e[:code] #validando o status code
      end
    
      it "valida resposta da api" do
        @result = (eval(@result.parsed_response)).to_h 
        puts @result
        expect(@result[:Error]).to eql e[:error] #validando a mensagem de erro q vem dos exemplos
      end
    end
  end

end 
