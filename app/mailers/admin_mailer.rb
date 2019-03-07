class AdminMailer < ApplicationMailer
  default from: 'no_reply@trouveunchat.com'



  def order_email(current_user)
    #@url= 'https://boutiqueenlignethp.herokuapp.com/'
    @user = User.find(current_user.user_id)
    mail(to:"marionaudren@live.fr",subject: 'Commande validée! ')
  end
end
