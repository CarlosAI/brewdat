telefono = "3313324542"
token = "EAAHKn4KzMvoBAFCjIitsvG1pa72O6ScGn1Jjs7IZAvmV0pbkXCGtbfbDLTVN2F4ZA3atvhgnne5JGmd9PjOsMPiTG3rNd06E9xzapVbugZCx5q0lS66D32aED00qqxfeXeBClMZCSXaxf9188KuhYknZAVijlvQZBEN7uYpwtVbjDkIZCFpbI3eXYhPGZAgYyfZBiw75N7p1v7uCQRsSJCeBCOXegdSjynLUZD"
url_base  = "https://graph.facebook.com/v13.0/102703869124295/messages"
header    = {"Content-Type" => "application/json" , "Accept" => "application/json", "x-format-new"=>"true", "Authorization" => "Bearer #{token}"}
parametros = { 
                "messaging_product"=> "whatsapp", "to"=> "52#{telefono}", "type"=> "template", 
                "template"=> 
                  { 
                    "name"=> "hello_world", 
                    "language"=> 
                      { 
                        "code"=> "en_US" 
                      } 
                  } 
              }
for i in 1..100
response = HTTParty.post("#{url_base}", :body => parametros.to_json, :headers =>header)
end


se_pudo = true
begin
response = RestClient::Request.execute(method: :get, url: url_base, headers: header)
rescue RestClient::ExceptionWithResponse => err
  se_pudo = false
  puts "Error de servidor ML"
