class ParticipationMailer < ApplicationMailer
	  default from: 'no-reply@monsite.fr'
 
  def new_participation(participation)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @participation = participation 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://evening-shore-45925.herokuapp.com' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @participation.user.email, subject: 'Nouvelle Participation !') 
  end
end
