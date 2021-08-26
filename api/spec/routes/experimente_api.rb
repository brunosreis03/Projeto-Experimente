require "httparty"

class ExperimenteApi
    include HTTParty
    base_uri "https://qa.sereduc.com/ExperimenteAPI/rest/ApiExpoV1"  #propriedade do httparty q recebe a url da api
end