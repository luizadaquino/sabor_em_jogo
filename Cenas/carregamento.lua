
local composer = require('composer')

local cena = composer.newScene()

function cena:create( event )
  local cenaCarregamento = self.view

  local x = display.contentWidth
  local y = display.contentHeight

  local fundo = display.newImageRect(cenaCarregamento, 'Cenas/Imagens/Background.png', x, y )
  fundo.x = x*0.5
  fundo.y = y*0.5

  local logo = display.newImageRect(cenaCarregamento, 'Cenas/Imagens/Logo.png', x*0.8, y*0.3 )
  logo.x = x*0.5
  logo.y = y*0.3

  
  local fundoBarra = display.newRoundedRect(cenaCarregamento, x*0.5, y*0.7, x*0.8, y*0.07, 100 )
  fundoBarra:setFillColor(0,0,0)

  local barra = display.newRoundedRect(cenaCarregamento, x*0.5, y*0.7, 0, y*0.05, 100 )

  transition.to( barra, {
    time = math.random( 5000, 10000 ),
    width = x*0.7,
    onComplete = function()
      composer.gotoScene( 'cenas.menu', {time = 300, effect = 'fade'} )
    end
  })



end
cena:addEventListener('create', cena)
return cena