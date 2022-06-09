require 'tiny_tds'
server = '<Edhazuredbgbdev>.database.windows.net'
database = '<edhframeworksdb>'
username = '<sqldbdevuser_brewdat_maz_edh_rw>'
password = '<jvQN0WA3Pg9#njlfR0rB990ivhxcf>'
client = TinyTds::Client.new username: username, password: password, 
    host: server, port: 1433, database: database, azure: true

puts "Reading data from table"
tsql = "select top 10 * from ABI_BATCH_MD"
result = client.execute(tsql)
result.each do |row|
    puts row
end