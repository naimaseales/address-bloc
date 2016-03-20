require_relative '../models/address_book'

class MenuController
  attr_accessor :address_book

  def initialize
    @address_book = AddressBook.new
  end

  def main_menu
    puts "Main Menu - #{address_book.entries.count} entries"
    puts "1 - View all entries"
    puts "2 - Create an entry"
    puts "3 - Search for an entry"
    puts "4 - Import entries from a CSV"
    puts "5 - Exit"
    # Give users the ability to view a specific entry by number
    puts "0 - View Entry Number n"
    print "Enter your selection: "

    selection = gets.to_i

    case selection
    when 1
      system "clear"
      view_all_entries
      main_menu
    when 2
      system "clear"
      create_entry
      main_menu
    when 3
      system "clear"
      search_entries
      main_menu
    when 4
      system "clear"
      read_csv
      main_menu
    when 5
      puts "Good-bye!"
      exit(0)
    when 0 # assignment 20 - View specific entry by number
      system "clear"
      view_entry_num
      main_menu
    else
      system "clear"
      puts "Sorry, that is not a valid input"
    end
  end

  def view_all_entries
    address_book.entries.each do |entry|
        system "clear"
        puts entry.to_s
        entry_submenu(entry)
    end
  end

  def view_entry_num
    entry_count = address_book.entries.count
    if entry_count < 1
      puts "No entries to view"
    elsif entry_count > 0
      print "Pick an entry to view between 1 - #{entry_count}): "
      selection = gets.to_i
      if (1..entry_count).include?(selection)
          puts address_book.entries[selection - 1].to_s
      else
        puts "Sorry, that is not a valid selction."
      end
    end
  end

  def create_entry
    system "clear"
    puts "New AddressBloc Entry"
    print "Name: "
    name = gets.chomp
    print "Phone number: "
    phone = gets.chomp
    print "Email: "
    email = gets.chomp

    address_book.add_entry(name, phone, email)
    system "clear"
    puts "New entry created"
  end

  def search_entries

  end

  def read_csv

  end

end

def entry_submenu(entry)
  puts "n - next entry"
  puts "d - delete entry"
  puts "e - edit this entry"
  puts "m - return to main menu"

  selection = gets.chomp

  case selection
  when "n"
  when "d"
  when "e"
  when "m"
    system "clear"
    main_menu
  else
    system "clear"
    puts "#{selection} is not a valid input"
    entry_submenu(entry)
  end
end
