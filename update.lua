curversion = {}
curversion[1] = 1
curversion[2] = 1
curversion[3] = 1
newurl = {}
newurl[1] = 'https://cdn.discordapp.com/attachments/698251592876687553/741793454174240838/colours.lua'
newurl[2] = 'https://cdn.discordapp.com/attachments/698251592876687553/741793457252597820/sprite.lua'
newurl[3] = 'https://raw.githubusercontent.com/yea-idk/random-rubbish/master/update.lua'
newname = {}
newname[1] = 'ux0:/data/phoenix/abyss/colours.lua'
newname[2] = 'ux0:/data/phoenix/abyss/sprite.lua'
newname[3] = 'ux0:/data/phoenix/abyss/update.lua'
tmp = 1
if (updateall == 0) then
	for i = 1, #curversion do
		if (curversion[tmp] ~= version[tmp]) then
			Network.downloadFile(newurl[tmp], newname[tmp])
		end
	end
else
	for i = 1, #curversion do
		Network.downloadFile(newurl[tmp], newname[tmp])
	end
end