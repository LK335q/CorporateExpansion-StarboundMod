-- Silver Sokolova#3576
function sb_techType() root.sbTechType = root.techType root.techType = function(t) return root.techConfig(t).sb_effect and "Suit" or root.sbTechType(t) end end
function sb_assetmissing(a,b) return (root.nonEmptyRegion(a)~=nil) and a or b end
function sb_itemexists(a) return root.itemConfig(a)~=nil end
function sb_pathtoimage(a,b,c) return (type(a)=="table" and sb_pathtoimage(a[c and #a or 1].image,b)) or a:sub(0,1)~="/" and b..a or a end
--function sb_pathtoimage(a,b,c) a=a or "/assetmissing.png" return (type(a)=="table" and sb_pathtoimage(a[c and #a or 1].image,b)) or a:sub(0,1)~="/" and b..a or a end
