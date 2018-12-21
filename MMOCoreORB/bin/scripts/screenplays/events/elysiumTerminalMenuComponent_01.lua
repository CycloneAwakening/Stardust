local ObjectManager = require("managers.object.object_manager")

elysiumTerminalMenuComponent_01 = {  }

function elysiumTerminalMenuComponent_01:fillObjectMenuResponse(pSceneObject, pMenuResponse, pPlayer)
	local response = LuaObjectMenuResponse(pMenuResponse)
	response:addRadialMenuItem(20, 3, "Touch the Crystal")	
	
end

function elysiumTerminalMenuComponent_01:handleObjectMenuSelect(pSceneObject, pPlayer, selectedID)
	if CreatureObject(pPlayer):isInCombat() or CreatureObject(pPlayer):isIncapacitated() or CreatureObject(pPlayer):isDead() then
		return 0
	end

	if not CreatureObject(pPlayer):isInRangeWithObject(pSceneObject, 6) then
		return 0
	end

	if selectedID == 20 then
	  
	  local sui = SuiMessageBox.new("elysiumTerminalMenuComponent_01", "handleTeleport")
    sui.setPrompt("As you touch the Crystal it begins to hum and you feel a strange pulling sensation in the force. It is not so strong that you could not back away from it now, but the pull grows stronger as you hold your hand on it's surface.  (This will transport you to another location.  Do you wish to proceed?)")
    sui.setTitle("Strange Crystal")
    sui.setCancelButtonText("Cancel") -- Cancel  
    sui.setOkButtonText("OK") -- OK   

    sui.sendTo(pPlayer)   	  		 	
    
	end

	return 0
end



function elysiumTerminalMenuComponent_01:handleTeleport(pPlayer, pSui, eventIndex, ...)
  if (pPlayer == nil) then
    return
  end

  local cancelPressed = (eventIndex == 1)
  local args = {...}
  
  local councilType = 1
  
  if (cancelPressed) then
    CreatureObject(pPlayer):sendSystemMessage("The crystal stops humming as you pull your hand away.")   
    return 
  elseif (eventIndex == 0) then -- Teleport
      createEvent(1000, "recruiterScreenplay", "handleGoOnLeave", pPlayer, "")
      CreatureObject(pPlayer):switchZone("elysium", 2606, 0, 2343, 0) -- x, z, y, cell
     
  end
end


