input = io.open('./bible.txt', 'r')
text = input:read('*a')
t = text:upper()
input:close()
rep = {
	{ " ", "👏" },
}
print(#rep .. ' words loaded')
for i = 1, #rep do
	local inp = rep[i]
	t = string.gsub( t, inp[1], inp[2] )
end
output = io.open('./modded-bible.txt', 'w')
output:write(t)
output:close()
print("done")
