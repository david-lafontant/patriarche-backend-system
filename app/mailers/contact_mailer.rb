class ContactMailer < ApplicationMailer
  default to: 'lafontant.david@gmail.com',
          from: 'contact@patriarche.com'

  def simple_message(first_name, last_name, email, message)
    mail(
      'reply-to': email_address_with_name(email, "#{first_name} #{last_name}"),
      cc: email,
      subject: 'Nouveau message du public',
      body: message
    )
  end
end
