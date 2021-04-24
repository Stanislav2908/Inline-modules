local cumwords = {"cum","cum","cum","cum","cum"}
local apps = inline.db.getstringset("cummator", {})

function _find(array, e)
	for n, v in pairs(array) do
		if v == e then
			return n
		end
	end
end

function cummator(text)
	for n, i in pairs(cumwords) do
		if text:find(i) then
			if _find(apps, inline.getpackage()) == nil then
				inline.settext(text:gsub(i, 'cum'))
			end
		end
	end
end

function cumoff()
	if not _find(apps, inline.getpackage()) then
		apps[#apps + 1] = inline.getpackage()
		inline.db.cummator = apps
	end
	return true
end

function cumon()
	apps[_find(apps, inline.getpackage())] = nil
	inline.db.cummator = apps
	return true
end

inline.watchers.cum = cummator
-- module by @vreply
