input = io.open('./bible.txt', 'r') --change this to the name of the file you wanna use
text = input:read('*a')
t = text:upper()
input:close()
rep = {
	{ " ", "👏" }, --{ "word 1", "word 2" }, add as many into this as you want,
}
print(#rep .. ' words loaded')
for i = 1, #rep do
	local inp = rep[i]
	t = string.gsub( t, inp[1], inp[2] )
end
output = io.open('./modded-bible.txt', 'w') --change this to what you want the new file to be, set it to the input to overwrite that file
output:write(t)
output:close()
print("done")
