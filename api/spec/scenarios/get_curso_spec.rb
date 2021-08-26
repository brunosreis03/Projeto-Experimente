describe "GET /GetCursoAll" do
    
  context "vinculado ao curso com sucesso" do
    before(:all) do #roda 1 vez para todos os contextos
      @instituicao = "Uninabuco"
      @result = Curso.new.find_cursos(@instituicao)
    end
  
    it "valida status code" do
      expect(@result.code).to eql 200
    end
  
    it "valida resposta da api" do
      @result = (eval(@result.parsed_response)).to_h #transformando o resultado que vem em string em um array com a função eval e dps em um hash
      puts @result
      expect(@result[:Success]).to eql "True"           
    end
  end
  
  examples = Helpers::get_fixture("get_curso_all")
  
  examples.each do |e| # percorre 1 exemplo do array por vez
    context "#{e[:title]}" do # nome de cada titulo de acordo com os exemplos do array
      before(:all) do 
        @result = Curso.new.find_cursos(e[:instituicao]) #chama o resultado do exemplo
      end
      
      it "valida status code #{e[:code]}" do #interpolando para aparecer os códigos
        expect(@result.code).to eql e[:code] #validando o status code
      end
      
      it "valida resposta da api" do
        @result = (eval(@result.parsed_response)).to_h
        puts @result
        expect(@result[:Error]).to eql e[:error]
      end
    end
  end
end