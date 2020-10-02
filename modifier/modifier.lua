local M = {}

local letters = {}

local unicode = require "main.modifierToArab.unicode"
local rev = require "main.modifierToArab.reverse"

local format = string.format
local byte   = string.byte
local char   = string.char

function toHex(str)
	return (str:gsub('.', function (c)
		return format('%02X', byte(c))
	end))
end

function fromHex(str)
	return (str:gsub('..', function (cc)
		return char(tonumber(cc, 16))
	end))
end

function addToTable(str)
    k = 1
    for c in string.gmatch(str, "[%z\1-\127\194-\244][\128-\191]*") do
		letters[k] = tostring(string.lower(toHex(c)))
        k = k + 1
    end
end

function M.modifierToArab(str)
    local hex = ""
    addToTable(str)
    for k, l in pairs(letters) do
        for  u in pairs(unicode.hex) do
           if tostring( u ) ==  l then 
               if k == 1 or letters[k-1] == unicode.space then
                    letters[k] = unicode.hex[u]["first"]
                    --letters[k] = "first"
               elseif letters[k+1] ~= unicode.space and  letters[k-1] ~= unicode.space and letters[k+1] ~= nil then
                   letters[k] = unicode.hex[u]["middle"]
                   --letters[k] = "middle"
               elseif letters[k+1] == unicode.space or letters[k+1] == nil then
                    letters[k] = unicode.hex[u]["last"]
                    --letters[k] = "last"
               end
               for _,b in pairs(unicode.breakWord) do
                    if letters[k-1] == b and letters[k+1] ~= unicode.space then
                        letters[k] = unicode.hex[u]["first"]
                    elseif letters[k-1] == b and letters[k+1] == b or letters[k-1] == b and letters[k+1] == unicode.space then
                        letters[k] = unicode.hex[u]["last"]
                    elseif letters[k-1] == b and letters[k+1] == b then
                        letters[k] = unicode.hex[u]["isolated"]
                    end
                end
                for _,s in pairs(unicode.symbols) do
                    if letters[k-1] == s and letters[k+1] ~= s then
                        letters[k] = unicode.hex[u]["first"]
                    elseif letters[k-1] == s and letters[k+1] == s then
                        letters[k] = unicode.hex[u]["isolated"]
                    elseif letters[k+1] == s and letters[k-1] ~= s then
                        letters[k] = unicode.hex[u]["last"]
                    end
                end
           end
        end 
    end
    for _, l in pairs(letters) do
        hex = hex..l
    end
    letters = {}
    local Text = rev.utf8reverse(fromHex(tostring(hex)))

    return Text
end

return M
