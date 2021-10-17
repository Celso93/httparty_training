Quando('solicitado o metodo {string} no recurso') do |method|
  case method
    when 'POST'   then $response = @startup.create_startup
    when 'GET'    then $response = @startup.get_all_startup
    when 'DELETE' then $response = @startup.delete_startup
  end
end
  
Entao('a API deve me retornar o status {string}') do |status|
  expect($response.code) == (status)
end

Entao('verifico a tipagem da startup criado') do
  # for i in $response do
  #   begin
  #     i == String
  #   rescue => e
  #     puts "#{e}"
  #   end
  # end
  puts $response["data"].class == String
  puts $response["nome"].class == String
  puts $response["conta"].class == String
  puts $response["cidade"].class == String
  puts $response["id"].class == String
  puts $postid = $response["id"]
end