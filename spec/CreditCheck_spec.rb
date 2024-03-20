require "./lib/CreditCheck"

RSpec.describe CreditCheck do
      it "should assign a credit card number" do
        card_number = "1234567812345678"  # Example card number
        limit = 1000  # Example limit
        credit_check = CreditCheck.new(card_number, limit)
  
        expect(credit_check.card_number).to eq(card_number)
      end

      it 'it should have 16 digits' do
        credit_check = CreditCheck.new("5541808923795240", "5000")
        expect(credit_check.card_number.length).to eq(16)
      end

      it 'should not have any letters' do
        credit_check = CreditCheck.new("5541808923795240", "5000")
        expect(credit_check.card_number).to match(/^\d+$/)
      end
end