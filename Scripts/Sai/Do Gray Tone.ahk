;Pre-select areas to NOT shade
;Invert selection
;Contract
;Add folder
;Add shade layer
;Fill with black
;Change opacity to like 25%
;Add blush layer
;Add hilight layer

#Include ./SaiToolkit.ahk
#Include .\Gdip.ahk
#Include .\Gdip_ImageSearch.ahk
coordMode,pixel
focusSai()

sleep 200
invertSelection()
erodeSelection()
newFolder()
renameLayer("Tone")
newLayer()
renameLayer("Gray")
fillLayer()
imageSearchc(fx,fy,0,0,a_screenWidth,a_screenHeight,"..\..\Resources\OpacitySlider.png")
MouseClick, left,  fx+110, fy+20
newLayer()
renameLayer("Blush")
newLayer()
renameLayer("Hilights")