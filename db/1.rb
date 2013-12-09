require 'csv'
require 'sequel'
DB = Sequel.connect('sqlite://development.sqlite3')
CSV.open('1.csv', 'w'){|f|
  f << DB[:users]
}