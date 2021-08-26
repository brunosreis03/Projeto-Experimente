Dado('que esteja na página do Experimente') do
    @login_page.open
end

Dado("Login com:") do |table|
    @login_page.open
    user = table.hashes.first
    @login_page.with(user) 
end

Então('vejo a mensagem: {string}') do |alerta|
    expect(@login_page.erro).to eql alerta
end

Então('vejo se o curso foi salvo com sucesso e altero os status dos cursos') do
    @curso_page.record
    if @quantidade.to_i < 1
        expect(@curso_page.record).to eql (@quantidade.to_i + 1).to_s + " record"
    else
        expect(@curso_page.record).to eql (@quantidade.to_i + 1).to_s + " records"
    end
    @curso_page.ativo
end

  

