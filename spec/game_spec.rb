require 'rspec'
require_relative './../game'  # Assumes the game method is in a file called game.rb

RSpec.describe '#game' do
  let(:random_number) { 7 }
  before do
    allow_any_instance_of(Object).to receive(:rand).and_return(random_number)
  end

  it 'prompts for the player name' do
    expect do
      game
    end.to output(/por favor ingresa tu nombre/).to_stdout
  end

  it 'greets the player by name' do
    allow_any_instance_of(Object).to receive(:gets).and_return('Juan')
    expect do
      game
    end.to output(/Hola Juan, ¡preparate para jugar!/).to_stdout
  end

  context 'when the player guesses correctly' do
    before do
      allow_any_instance_of(Object).to receive(:gets).and_return('Juan', random_number.to_s)
    end

    it 'congratulates the player' do
      expect do
        game
      end.to output(/¡Buen trabajo, Juan!/).to_stdout
    end
  end

  context 'when the player guesses incorrectly' do
    before do
      allow_any_instance_of(Object).to receive(:gets).and_return('Juan', (random_number - 1).to_s, (random_number + 1).to_s)
    end

    it 'tells the player their guess was low' do
      expect do
        game
      end.to output(/Oops. Tu suposición fue BAJA/).to_stdout
    end

    it 'tells the player their guess was high' do
      expect do
        game
      end.to output(/Oops. Tu suposición fue ALTA/).to_stdout
    end
  end

  context 'when the player runs out of turns' do
    before do
      allow_any_instance_of(Object).to receive(:gets).and_return('Juan', *Array.new(10) { (random_number - 1).to_s })
    end

    it 'tells the player they did not guess the number' do
      expect do
        game
      end.to output(/Lo siento. No adivinaste mi número. Mi número fue #{random_number}/).to_stdout
    end
  end
end
