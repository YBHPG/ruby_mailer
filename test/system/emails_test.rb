require "application_system_test_case"

class EmailsTest < ApplicationSystemTestCase
  test "form_check" do
    visit emails_path
    click_on 'Написать новое письмо'

    fill_in 'Адрес отправителя', with: 'testmail@test.com'
    fill_in 'Адрес получателя', with: 'testrecipient@test.com'
    fill_in 'Тема', with: 'A test letter'
    fill_in 'Текст письма', with: 'What do you think about these tests?'
    take_screenshot

    click_on "Отправить"
    take_screenshot
  end

  test "all_emails_check" do
    visit emails_path
    click_on 'Просмотреть отправленные'
    take_screenshot

    click_on 'Назад'
  end
end
