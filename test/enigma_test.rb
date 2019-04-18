require './test/test_helper'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_enigma_class_exists
    enigma = Enigma.new
    assert_instance_of Enigma, enigma
  end

  def test_encryption
    expected = {
      encryption: 'keder ohulw',
      key: '02715',
      date: '040895'
    }
    actual = @enigma.encrypt('hello world', '02715', '040895')
    assert_equal expected, actual
  end

  def test_it_encrypts_a_message_with_a_key_and_date
    enigma = Enigma.new
    encryption = enigma.encrypt('hello world', '02715', '040895')
    assert_equal 'keder ohulw', encryption[:encryption]
  end

  def test_decrypt
    expected = {
      decryption: 'hello world',
      key: '02715',
      date: '040895'
    }
    actual = @enigma.decrypt('keder ohulw', '02715', '040895')
    assert_equal expected, actual
  end

  def test_decrypt_ciphert_works
    shifts = [3, 27, 73, 20]
    message = 'keder ohulw'
    expected = 'hello world'
    assert_equal expected, @enigma.decrypt_cipher(message, shifts)
  end

  def test_encrypt_without_date
    message = 'hello'
    key = '02715'
    assert_instance_of Hash, @enigma.encrypt(message, key)
  end

  def test_decrypt_to_todays_date
    message = 'hello'
    key = '02715'
    assert_instance_of Hash, @enigma.decrypt(message, key)
  end

  def test_encrypt_with_random_number_and_todays_date
    message = 'Hello'
    assert_instance_of Hash, @enigma.encrypt(message)
  end

  def test_it_creates_cipher
    shifts = [3, 27, 73, 20]
    message = 'hello world!'
    expected = 'keder ohulw!'
    assert_equal expected, @enigma.create_cipher(message, shifts)
  end
end
