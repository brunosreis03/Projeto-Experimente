describe "GET /GetCursoURL" do
  before(:all) do #roda 1 vez para todos os contextos
    @instituicao = "Uninabuco"
    payload = {Nome: Faker::Name.first_name, SobreNome: Faker::Name.last_name, Email: Faker::Internet.free_email, CPF: Faker::IDNumber.brazilian_citizen_number(formatted: true), Telefone: Faker::PhoneNumber.cell_phone, CursoInstituicao: "Biomedical Science"}
    puts
    puts payload
    puts
    @result= Signup.new.create(payload, @instituicao)
    @result_cadastro = (eval(@result.parsed_response)).to_h
  end

  before(:all) do #roda 1 vez para todos os contextos
    payload = {password: @result_cadastro[:Senha], username: @result_cadastro[:Email]}       
    puts payload
    puts
    @result = Login.new.login(payload, @instituicao)
    puts @result
    puts
  end
  
  context "login com sucesso" do
    before(:all) do #roda 1 vez para todos os contextos
      email = @result_cadastro[:Email]      #email = "usuarioteste1@gmail.com " 
      @result = Login.new.find_by_email(email)
    end

    it "valida status code" do
      expect(@result.code).to eql 200
    end

    it "valida resposta da api" do
      @result = (eval(@result.parsed_response)).to_h #transformando o resultado que vem em string em um array com a função eval e dps em um hash
      puts @result
      puts
      expect(@result[:Sucess]).to be true
      puts        
    end
  end

  examples = Helpers::get_fixture("get_login")

  examples.each do |e| # percorre 1 exemplo do array por vez
    context "#{e[:title]}" do # nome de cada titulo de acordo com os exemplos do array
      before(:all) do 
        @result = Login.new.find_by_email(e[:email]) #chama o resultado do exemplo
      end
    
      it "valida status code #{e[:code]}" do #interpolando para aparecer os códigos
        expect(@result.code).to eql e[:code] #validando o status code
      end
    
      it "valida resposta da api" do
        @result = (eval(@result.parsed_response)).to_h
        puts
        puts @result
        puts
        expect(@result[:Error]).to eql e[:error]
        end
      end
  end
end