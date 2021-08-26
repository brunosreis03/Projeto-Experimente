Quando('submeto minhas credenciais com:') do |table|
    @user = table.rows_hash   
    @login_page.with(@user)
end

Então('vejo o dashboard') do
    expect(@home_page.logado).to be true
end

Então('que eu deslogue da minha conta') do
    @home_page.function                                   
    @home_page.logout
end                                                                          
                                                                               
Então('vejo a página de login') do                                           
    expect(@login_page.deslogado).to be true
end

