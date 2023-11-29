# Mariana
Mariana is an underwater exploration and metroidvania indie game. In this game you dropped into an unknown trench to explore. You will find fantastical creatures and rare artifacts. Fight bosses and mini-bosses in order to dive as deep as possible.



This the Orsis squid on the second level of Mariana. Moving through its tentacles pushes them out of the way.

https://github.com/whitefangalive/Mariana/assets/49380278/023dc30a-ca31-4fa3-a009-ff2b3d0257ca

This feature works by having multiple sections of tentacle, each tentacle knows what number it is and who its parent tentacle is. The origin of the tentacle is at its top. So in order to calculate its position it must use cosine and sine of the angle of the tentacle above and multiple by its length. (sin(angle) = x/sprite_height) and (cos(angle) = y/sprite_height).

The only thing left to do is rotate the tentacle away from the player. However you want to do this bassed on the players speed, so in order to find which direction the player is moving as well as speed you can find x pos - previous x pos.

If no one is pushing a tentacle they slowly rotate back down to have an angle of 0.


This is a work in progress gamemaker game. The sole programmer and composer is Kyle Gann however there are a few artists.

Sprite credit:
Phantom:
 - Diver
 - Ice fish
 - Boogley fish
 - Golden fish
 - Yerino boss
 - Shopkeeper Muro
Beab:
- Main menu Background sprite

All other sprites were drawn by Kyle Gann.
