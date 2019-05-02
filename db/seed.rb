# Parse the CSV and seed the database here! Run 'ruby db/seed' to execute this code.


require 'csv' path = "../daily_show_guests.csv"
csv_data = CSV.read(path)

csv_data.parse(csv, headers: true) do |row|
  db.execute "insert into users values ( ?, ? )", row.fields # equivalent to: [row['name'], row['age']]
end

db.execute( "select * from users" )
