require_relative '../models/entry'

#  #1
RSpec.describe Entry do
#  #2
# Why does the video use "context" and the code use "describe"
  describe "attributes" do
    # #3
    let(:entry) { Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com') }
    it "responds to name" do
    #   entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      # entry = Entry.new
      # #4
      expect(entry).to respond_to(:name)
    end

    it "reports its name" do
      # entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      expect(entry.name).to eq('Ada Lovelace')
    end

    it "responds to phone number" do
      # entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      # entry = Entry.new
      expect(entry).to respond_to(:phone_number)
    end

    it "reports its phone number" do
      # entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      expect(entry.phone_number).to eq('010.012.1815')
    end

    it "responds to email" do
      # entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      # entry = Entry.new
      expect(entry).to respond_to(:email)
    end

    it "reports its email" do
      # entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      expect(entry.email).to eq('augusta.king@lovelace.com')
    end
  end

  # #5
  describe "#to_s" do
    it "prints an entry as a string" do
      entry = Entry.new('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
     expected_string = "Name: Ada Lovelace\nPhone Number: 010.012.1815\nEmail: augusta.king@lovelace.com"
# #6
     expect(entry.to_s).to eq(expected_string) 
    end
  end
end
