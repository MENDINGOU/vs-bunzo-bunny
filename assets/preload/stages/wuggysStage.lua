local modchart = true
local charsloaded = 6;
local xx = 550
local yy = -50
local xx2 = 550
local yy2 = 500
local xx3 = 400
local yy3 = -50
local ofs = 40
local followchars = true
local camSpeed = 4;
local camInt = 1;
function onCreate()

	makeLuaSprite('theStagemusic','stagemusic',-1200,-1100)
	addLuaSprite('theStagemusic',false)
	setLuaSpriteScrollFactor('theStagemusic', 1.0, 1.0)
end

function onBeatHit()

	if mustHitSection then
		setProperty('defaultCamZoom',0.7);
	else
		setProperty('defaultCamZoom',0.4);
	end
end

function onStepHit()

end

function onUpdate(elapsed)

	if modchart == true then
		for i = 0,3 do
			setPropertyFromGroup('strumLineNotes', i, 'alpha', 0)
		end
	end

	if followchars == true then
		if mustHitSection == false then
			if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
				triggerEvent('Camera Follow Pos',xx-ofs,yy)
			end
			if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
				triggerEvent('Camera Follow Pos',xx+ofs,yy)
			end
			if getProperty('dad.animation.curAnim.name') == 'singUP' then
				triggerEvent('Camera Follow Pos',xx,yy-ofs)
			end
			if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
				triggerEvent('Camera Follow Pos',xx,yy+ofs)
			end
			if getProperty('dad.animation.curAnim.name') == 'idle' then
				triggerEvent('Camera Follow Pos',xx,yy)
			end
		else
	
			if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
				triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
			end
			if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
				triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
			end
			if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
				triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
			end
			if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
				triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
			end
			if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
				triggerEvent('Camera Follow Pos',xx2,yy2)
			end
		end
	end
end

function onGameOver()
	modchart = false
	return Function_Continue;
end