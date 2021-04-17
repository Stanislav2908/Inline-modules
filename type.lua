function type(text)
	all = ''
	text:gsub(".", function(c)
    	all = all .. c
		inline.settext(all)
	end)
end
-- module by @vreply