class UserMailer < ApplicationMailer
  default from: 'no_reply@trouveunchat.com'

  def order_email(user)
    @user=user
    @url= 'https://boutiqueenlignethp.herokuapp.com/'

    mail(to:@user.email,subject: 'Commande validée! ')
  end

end
