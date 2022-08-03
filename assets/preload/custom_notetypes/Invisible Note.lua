function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		for i = 0, setPropertyOnGroup('unspawnNotes', i, multAlpha,0) do
			if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Invisible Note' then
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Invisible Note' then
		-- put something here if you want
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Invisible Note' then
		-- put something here if you want
	end
end