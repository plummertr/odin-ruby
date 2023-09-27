require 'spec_helper'
require_relative '../lib/caesar_cipher'

RSpec.describe 'Caesar Cipher' do

  describe "rotations" do 
    it 'Aa by 1 returns Bb' do
      expect(caesar_cipher('Aa', 1)).to eq('Bb')
    end

    it 'Aa by 27 returns Bb' do
      expect(caesar_cipher('Aa', 27)).to eq('Bb')
    end

    it 'Bb by -1 returns Aa' do
      expect(caesar_cipher('Bb', -1)).to eq('Aa')
    end

    it 'Bb by -27 returns Aa' do
      expect(caesar_cipher('Bb', -27)).to eq('Aa')
    end
  end

  describe 'wrapping' do
    it 'Zz by 1 returns Aa' do
      expect(caesar_cipher('Zz', 1)).to eq('Aa')
    end
  end

  describe 'non-letter characters are ignored' do
    it '"!@#$%^ *&" by 1 returns "!@#$%^ *&"' do
      expect(caesar_cipher('!@#$%^ *&', 1)).to eq('!@#$%^ *&')
    end
  end

  describe 'words' do
    it '"Hello" by 1 returns "Ifmmp"' do
      expect(caesar_cipher('Hello', 1)).to eq('Ifmmp')
    end

    it '"Hello" by -1 returns "Gdkkn"' do
      expect(caesar_cipher('Hello', -1)).to eq('Gdkkn')
    end

    it '"Zoo" by 1 returns "App"' do
      expect(caesar_cipher('Zoo', 1)).to eq('App')
    end
  end

  describe 'words with non-letter chars' do
    it '"What a string!" by 5 returns "Bmfy f xywnsl!"' do
      expect(caesar_cipher('What a string!', 5)).to eq('Bmfy f xywnsl!')
    end

    it '"What a string!" by 31 returns "Bmfy f xywnsl!"' do
      expect(caesar_cipher('What a string!', 31)).to eq('Bmfy f xywnsl!')
    end

    it '"What a string!" by -5 returns "Rcvo v nomdib!"' do
      expect(caesar_cipher('What a string!', -5)).to eq('Rcvo v nomdib!')
    end

  end

  describe 'empty string' do
    it 'returns ""' do
      expect(caesar_cipher("", 3)).to eq('')
    end
  end
end