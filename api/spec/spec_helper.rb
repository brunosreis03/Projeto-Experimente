require_relative "routes/login"
require_relative "routes/signup"
require_relative "routes/curso"
require_relative "helpers"

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  # config.before(:suite) do
  #   users = [
  #     {Nome: Faker::Name.first_name, SobreNome: Faker::Name.last_name, Email: Faker::Internet.free_email, CPF: Faker::IDNumber.brazilian_citizen_number(formatted: true), Telefone: Faker::PhoneNumber.cell_phone, CursoInstituicao: "Curso Faculdade Uninabuco"}

  #   ]
  # end
end
