class AdminMailer < ApplicationMailer
  default from: 'no_reply@trouveunchat.com'

  def order_email(admin)
    current_user=user
    #@url= 'https://boutiqueenlignethp.herokuapp.com/'

    mail(to:current_user.email,subject: 'Commande validée! ')
  end
end
