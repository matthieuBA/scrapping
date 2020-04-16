require 'csv'
require 'open-uri'
require 'pp'

tab=[]
n=0
last_name=""
first_name=""
string=[]

CSV.foreach((open('https://www.voxpublic.org/IMG/csv/fichier_deputes_commissions.csv')),headers: true) do |row|
    if row[0]!=nil
    string=row[0].split(' ')
    last_name=string[0]
    first_name=string[1]
    h=Hash.new
    h["first_name"]=first_name
    h["last_name"]=last_name
    h["email"]=row[9]
    tab << h
    end
    pp tab
  end






