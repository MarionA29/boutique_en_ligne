class UserMailer < ApplicationMailer
  default from: 'no_reply@trouveunchat.com'

  def order_email(current_user)

    @user = User.find(current_user.user_id)
    #@url= 'https://boutiqueenlignethp.herokuapp.com/'

    mail(to:@user.email,subject: 'Commande validée! ')
  end

end
