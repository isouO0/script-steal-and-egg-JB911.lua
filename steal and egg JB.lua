--[[ Protected by Lua Guard ]]

( function (...) local _IlIIIIllll = "\104\116\116\112\115\058\047\047\114\097\119\046\103\105\116\104\117\098\117\115\101\114\099\111\110\116\101\110\116\046\099\111\109\047\105\115\111\117\079\048\047\117\105\103\045\106\098\047\109\097\105\110\047\117\105\103\106\098\057\049\049\046\108\117\097" local function _llllIllIlI(url) if type(request) == "\102\117\110\099\116\105\111\110" then local _llllIIlllI, req = pcall(request, { Url = url, Method = "\071\069\084" }) if _llllIIlllI and type(req) == "\116\097\098\108\101" and req.StatusCode == 0xC8 and type(req.Body) == "\115\116\114\105\110\103" and #req.Body >= 0xC350 then return req.Body end
 end
 local _llllIIlllI, src = pcall(game.HttpGet, game, url) if _llllIIlllI and type(src) == "\115\116\114\105\110\103" and #src >= 0xC350 then return src end
 return nil end
 local _lIIIlIlIll = _llllIllIlI(_IlIIIIllll) if not _lIIIlIlIll then error("\091\074\066\057\049\049\093\032\1601\1588\1604\032\1578\1581\1605\1610\1604\032\1575\1604\1605\1603\1578\1576\1577\046") end
 local _lIIIIlIlII, libCompileErr = loadstring(_lIIIlIlIll) if not _lIIIIlIlII then error("\091\074\066\057\049\049\093\032\1582\1591\1571\032\1601\1610\032\1578\1580\1605\1610\1593\032\1575\1604\1605\1603\1578\1576\1577\058\032" .. tostring(libCompileErr)) end
 local _llllIIlllI, Library = pcall(_lIIIIlIlII) if not _llllIIlllI or type(Library) ~= "\116\097\098\108\101" or type(Library.CreateWindow) ~= "\102\117\110\099\116\105\111\110" then error("\091\074\066\057\049\049\093\032\1575\1604\1605\1603\1578\1576\1577\032\1594\1610\1585\032\1589\1575\1604\1581\1577\046") end
 print("\091\074\066\057\049\049\093\032\076\105\098\114\097\114\121\032\118" .. tostring(Library.Version or "\063") .. "\032\114\101\097\100\121\046") do local _llIlIllllI = _G.OxideStealAnEgg if _llIlIllllI and type(_llIlIllllI.Unload) == "\102\117\110\099\116\105\111\110" then pcall(_llIlIllllI.Unload) end
 end
 local _IIlIIIIIIl = { conns = {}, drawings = {}, highlights = {}, dead = false } _G.OxideStealAnEgg = _IIlIIIIIIl local function _IIllIIIIll(conn) table.insert(_IIlIIIIIIl.conns, conn); return conn end
 local function _IIlIllIIII(_llIllIlIII) if _llIllIlIII then table.insert(_IIlIIIIIIl.drawings, _llIllIlIII) end
 ; return _llIllIlIII end
 local _lIIlIlIlIl = Library:CreateWindow({ Name = "\074\066\057\049\049\045\072\085\066\032\124\032\069\105\110\032\069\105\032\115\116\101\104\108\101\110", LoadingAnimation = true, LoadingText = "\074\066\057\049\049", LoadingDuration = 5.0, }) local _lIIlIIllII = type(Library.SaveConfig) == "\102\117\110\099\116\105\111\110" and type(Library.LoadConfig) == "\102\117\110\099\116\105\111\110" and type(Library.ListConfigs) == "\102\117\110\099\116\105\111\110" local _IlllIIlIll = "\115\116\101\097\108\097\110\101\103\103" local _lllIllIIll = {} local function _llIIlIlllI(handle, applyFn) if handle and applyFn then table.insert(_lllIllIIll, function () applyFn(handle:Get()) end
 ) end
 end
 local function _lIlIIlllll() for _lllIllIlIl, fn in ipairs(_lllIllIIll) do pcall(fn) end
 end
 local Players = game:GetService("\080\108\097\121\101\114\115") local _lIlIIIIIIl = game:GetService("\082\101\112\108\105\099\097\116\101\100\083\116\111\114\097\103\101") local ReplicatedStorage = _lIlIIIIIIl local RunService = game:GetService("\082\117\110\083\101\114\118\105\099\101") local UserInputService = game:GetService("\085\115\101\114\073\110\112\117\116\083\101\114\118\105\099\101") local _lIllIlIIII = game:GetService("\087\111\114\107\115\112\097\099\101") local Lighting = game:GetService("\076\105\103\104\116\105\110\103") local TeleportService = game:GetService("\084\101\108\101\112\111\114\116\083\101\114\118\105\099\101") local _lIllllIlIl = game:GetService("\086\105\114\116\117\097\108\085\115\101\114") local _llIlIllIII = Players.LocalPlayer local _llllllIllI = _llIlIllIII local function _IlIlIlIIIl() return _lIllIlIIII.CurrentCamera or _lIllIlIIII:FindFirstChildOfClass("\067\097\109\101\114\097") end
 pcall( function () local _IlIIIIIllI = game:GetService("\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116\083\101\114\118\105\099\101") _IIllIIIIll(_IlIIIIIllI.PromptButtonHoldBegan:Connect( function (_lllllllIII, player) if player == _llIlIllIII and tostring(_lllllllIII) == "\067\097\114\114\121\065\114\101\097\069\103\103" then _lllllllIII.HoldDuration = 0x0 end
 end
 )) end
 ) pcall( function () local _IlllllIIll = game:GetService("\067\111\114\101\071\117\105") _IIllIIIIll(_IlllllIIll.ChildAdded:Connect( function (child) if child.Name == "\080\117\114\099\104\097\115\101\080\114\111\109\112\116" then task.wait(0.04) pcall( function () local _IIllllllIl = child:FindFirstChild("\067\097\110\099\101\108\066\117\116\116\111\110", true) if _IIllllllIl and typeof(_IIllllllIl) == "\073\110\115\116\097\110\099\101" and _IIllllllIl:IsA("\071\117\105\066\117\116\116\111\110") then pcall( function () _IIllllllIl.MouseButton1Click:Fire() end
 ) end
 end
 ) end
 end
 )) end
 ) local function _IlIllIIIII(title, content, kind, dur) return end
 local function _lIIIIIlIlI(fn) return function (...) local _llllIIlllI, err = pcall(fn, ...) if not _llllIIlllI then pcall(_IlIllIIIII, "\074\066\057\049\049\045\072\085\066", "\069\114\114\111\114\058\032" .. tostring(err), "\069\114\114\111\114", 0x4) end
 end
 end
 local function _IIIlIlIlll() if typeof(filtergc) ~= "\102\117\110\099\116\105\111\110" or typeof(debug) ~= "\116\097\098\108\101" or typeof(debug.getupvalues) ~= "\102\117\110\099\116\105\111\110" then return false, "\110\111\032\102\105\108\116\101\114\103\099" end
 local _llllIIlllI, fn = pcall( function () return filtergc("\102\117\110\099\116\105\111\110", { Constants = { "\103\109\097\116\099\104", "\071\101\116\070\117\108\108\078\097\109\101" } }, true) end
 ) if not _llllIIlllI or type(fn) ~= "\102\117\110\099\116\105\111\110" then return false, "\102\105\108\116\101\114\032\109\105\115\115" end
 local _Illlllllll = (typeof(setrawmetatable) == "\102\117\110\099\116\105\111\110" and setrawmetatable) or (typeof(setmetatable) == "\102\117\110\099\116\105\111\110" and setmetatable) if not _Illlllllll then return false, "\110\111\032\115\101\116\109\101\116\097" end
 local _IIlIlIllIl = 0x0 local _IlIIIlllll, ups = pcall(debug.getupvalues, fn) if not _IlIIIlllll or type(ups) ~= "\116\097\098\108\101" then return false, "\110\111\032\117\112\118\097\108\117\101\115" end
 for _lllIllIlIl, tbl in pairs(ups) do if typeof(tbl) == "\116\097\098\108\101" then local _IllllIllll = pcall(_Illlllllll, tbl, { __newindex = function () end
 }) if _IllllIllll then _IIlIlIllIl = _IIlIlIllIl + 0x1 end
 end
 end
 return _IIlIlIllIl > 0x0, _IIlIlIllIl end
 pcall(_IIIlIlIlll) local function _llIIlIIllI(_IlIlllIllI, perChunk) local _llllIIIllI = getgc or (debug and debug.getgc) if type(_llllIIIllI) ~= "\102\117\110\099\116\105\111\110" then return end
 local _llllIIlllI, objects = pcall(_llllIIIllI, true) if not _llllIIlllI or type(objects) ~= "\116\097\098\108\101" then return end
 perChunk = perChunk or 0x190 for i = 0x1, #objects do local _llIIlllIIl = objects[i] objects[i] = nil local _llIlIllIll, stop = pcall(_IlIlllIllI, _llIIlllIIl) if _llIlIllIll and stop == true then return end
 if i % perChunk == 0x0 then task.wait() end
 end
 end
 local _llIIIlIIlI = {} do function _llIIIlIIlI.FreezeTables() local _IllIllllll = setrawmetatable or setmetatable local _lIIllIIlIl = getrawmetatable or getmetatable if not _IllIllllll then return end
 _llIIlIIllI( function (_llIIlllIIl) if typeof(_llIIlllIIl) ~= "\116\097\098\108\101" or (_lIIllIIlIl and _lIIllIIlIl(_llIIlllIIl)) then return end
 local _IIIIIIIIll = false for _lllIllIlIl, v in pairs(_llIIlllIIl) do if v == _llIIlllIIl then _IIIIIIIIll = true; break end
 end
 if not _IIIIIIIIll then return end
 for _lllIllIlIl, v in pairs(_llIIlllIIl) do if typeof(v) == "\110\117\109\098\101\114" and v >= 0x1 and v <= 0x3 and _llIIlllIIl[v] == nil then pcall(_IllIllllll, _llIIlllIIl, { __newindex = function () end
 }) break end
 end
 end
 ) end
 function _llIIIlIIlI.WipeUGI() local _IIllllIIII = _IIllllIIII or (debug and debug.getconstants) local _IlllIlllII = _IlllIlllII or (debug and debug.setconstant) local _lIIlIlIllI = _lIIlIlIllI or function (Function) return not pcall(setfenv, getfenv(Function)) end
 if not (_IIllllIIII and _IlllIlllII and debug and debug.info) then return end
 _llIIlIIllI( function (Function) if typeof(Function) ~= "\102\117\110\099\116\105\111\110" or not _lIIlIlIllI(Function) then return end
 local _llllIIlllI, Source = pcall(debug.info, Function, "\115") if not _llllIIlllI or type(Source) ~= "\115\116\114\105\110\103" then return end
 if not Source:find("\082\101\112\108\105\099\097\116\101\100\070\105\114\115\116", 0x1, true) or not Source:find("\085\071\073", 0x1, true) then return end
 local _lIlIIlllll, Constants = pcall(_IIllllIIII, Function) if not _lIlIIlllll or type(Constants) ~= "\116\097\098\108\101" then return end
 for Index, Constant in next, Constants do if type(Constant) == "\115\116\114\105\110\103" and Constant == "\072\117\109\097\110\111\105\100" then pcall(_IlllIlllII, Function, Index, "") end
 end
 end
 ) end
 function _llIIIlIIlI.ScrubX14() local _IIllllIIII = _IIllllIIII or (debug and debug.getconstants) local _lIIlIlIllI = _lIIlIlIllI or function (fn) return not pcall(setfenv, getfenv(fn)) end
 local _IIIlIlIlll = hookfunction or replaceclosure or hookfunc if not (_IIllllIIII and _IIIlIlIlll and debug and debug.getstack and debug.setstack) then return end
 _llIIlIIllI( function (fn) if typeof(fn) ~= "\102\117\110\099\116\105\111\110" or not _lIIlIlIllI(fn) then return end
 local _llllIIlllI, consts = pcall(_IIllllIIII, fn) if not _llllIIlllI or type(consts) ~= "\116\097\098\108\101" or not table.find(consts, "\088\045\049\052") then return end
 local _IIlllIIllI = nil pcall( function () _IIlllIIllI = _IIIlIlIlll(fn, function (...) local _IIIlIllIll = debug.getstack(0x1) if type(_IIIlIllIll) == "\116\097\098\108\101" then for idx, val in pairs(_IIIlIllIll) do if val == "\088\045\049\052" then pcall(debug.setstack, 0x1, idx, nil) end
 end
 end
 if _IIlllIIllI then return _IIlllIIllI(...) end
 end
 ) end
 ) end
 ) end
 function _llIIIlIIlI.SanitizeState() local _lIIlIlIllI = _lIIlIlIllI or function (v) return not pcall(setfenv, getfenv(v)) end
 local _lIIIlIllll = _lIIIlIllll or (debug and debug.getupvalues) local _lIlIlIIIII = _lIlIlIIIII or (debug and debug.getupvalue) local _IIlIlIlllI = _IIlIlIlllI or (debug and debug.setupvalue) local _IIlIIlllII = _IIlIIlllII or function (_IIllIlIIIl) return function (...) return _IIllIlIIIl(...) end
 end
 if not (_lIIIlIllll and _lIlIlIIIII and _IIlIlIlllI) then return end
 _llIIlIIllI( function (v) if typeof(v) ~= "\102\117\110\099\116\105\111\110" or not _lIIlIlIllI(v) then return end
 local _llllIIlllI, upvs = pcall(_lIIIlIllll, v) if not _llllIIlllI or type(upvs) ~= "\116\097\098\108\101" or #upvs ~= 0x13 then return end
 local _IlIIIIIllI, u2 = pcall(_lIlIlIIIII, v, 0x2) if not _IlIIIIIllI or typeof(u2) ~= "\102\117\110\099\116\105\111\110" then return end
 local _IIIllllIll = _IIlIIlllII(u2) pcall(_IIlIlIlllI, v, 0x2, function (_llIIIIllII, b) if b and typeof(b) == "\116\097\098\108\101" then pcall(setmetatable, b, {}) end
 return _IIIllllIll(_llIIIIllII, b) end
 ) end
 ) end
 end
 task.spawn( function () pcall(_llIIIlIIlI.FreezeTables) task.wait() pcall(_llIIIlIIlI.WipeUGI) task.wait() pcall(_llIIIlIIlI.ScrubX14) task.wait() pcall(_llIIIlIIlI.SanitizeState) end
 ) local function _lIIlIlllIl() return _llIlIllIII.Character end
 local function _IIlIlllIII() local _IIllIllllI = _llIlIllIII.Character return _IIllIllllI and _IIllIllllI:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") end
 local function _IlIlIlIlIl() local _IIllIllllI = _llIlIllIII.Character return _IIllIllllI and (_IIllIllllI:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") or _IIllIllllI.PrimaryPart or _IIllIllllI:FindFirstChildWhichIsA("\066\097\115\101\080\097\114\116")) end
 local _IlllllllII = _lIIlIlllIl local _IIIIllIlll = _IIlIlllIII local _IlIllIIIlI = _IlIlIlIlIl local function _llIIIllIll() local _llllIlIlII = _IlIlIlIlIl() return _llllIlIlII and _llllIlIlII.CFrame end
 local _llIIlIlIll = bit32.bxor local unpack = table.unpack local function _llIIllllll(_lllIIIIlII) return #_lllIIIIlII==0x24 and _lllIIIIlII:sub(0x9,0x9)=="\045" and _lllIIIIlII:sub(0xE,0xE)=="\045" and _lllIIIIlII:sub(0x13,0x13)=="\045" and _lllIIIIlII:sub(0x18,0x18)=="\045" and _lllIIIIlII:gsub("\045",""):match("\094\037\120\043\036")~=nil end
 local _IIIIlIIllI, anyRemote = {}, nil local function _IIllIIIIlI() for _lllIllIlIl, s in ipairs(game:GetChildren()) do local _llllIIlllI, list = pcall(s.GetDescendants, s) if _llllIIlllI and list then for _lllIllIlIl, _llIIIIIlll in ipairs(list) do if _llIIIIIlll:IsA("\082\101\109\111\116\101\069\118\101\110\116") and _llIIllllll(_llIIIIIlll.Name) then _IIIIlIIllI[_llIIIIIlll] = true anyRemote = anyRemote or _llIIIIIlll end
 end
 end
 end
 end
 _IIllIIIIlI() local function _IIlllIllIl(v) if type(v) ~= "\115\116\114\105\110\103" then return end
 local _lllIIIIlII = v:match("\094\088\037\045\040\037\100\043\041\036") return _lllIIIIlII and tonumber(_lllIIIIlII) end
 local function _llIIlIlIll(t, _lllIIlIlll) if type(t) ~= "\116\097\098\108\101" then return false end
 local _IIllIIIIIl, hM = false, false local _llllIIlllI = pcall( function () for _lllIllIlIl, v in pairs(t) do if v == _lllIIlIlll then _IIllIIIIIl = true elseif type(v) == "\115\116\114\105\110\103" and v:match("\094\088\037\045\037\100\043\036") then hM = true end
 end
 end
 ) return _llllIIlllI and _IIllIIIIIl and hM end
 local function _lIIllIIIII(_lllIIlIlll) for l=0x2,0x18 do local _lllIllIlIl, fn = pcall(debug.info, l, "\102") if type(fn) == "\102\117\110\099\116\105\111\110" then local _lllIllIlIl, ups = pcall(debug.getupvalues, fn) if type(ups) == "\116\097\098\108\101" then for _lllIllIlIl, v in pairs(ups) do if _llIIlIlIll(v, _lllIIlIlll) then return v end
 if type(v) == "\116\097\098\108\101" then local _lllIIlllll pcall( function () for _lllIllIlIl, x in pairs(v) do if _llIIlIlIll(x, _lllIIlIlll) then _lllIIlllll = x; return end
 end
 end
 ) if _lllIIlllll then return _lllIIlllll end
 end
 end
 end
 end
 end
 end
 local function _IlIIllllIl(_llllIIIIlI, _IIllIIIllI, a2) local _IlllllIlll = {} for k, v in pairs(_llllIIIIlI) do if type(v) == "\115\116\114\105\110\103" then if v:match("\094\088\037\045\037\100\043\036") then _IlllllIlll.marker = _IlllllIlll.marker or k elseif _IIllIIIllI and v == _IIllIIIllI then _IlllllIlll.arg1 = _IlllllIlll.arg1 or k elseif a2 and v == a2 then _IlllllIlll.arg2 = _IlllllIlll.arg2 or k end
 end
 end
 return _IlllllIlll end
 local _llIlIlllll = nil local function _llIllllIII(_lllIIIIlII) _lllIIIIlII = _lllIIIIlII % 0x3E8 return math.floor(_lllIIIIlII/0x64), math.floor(_lllIIIIlII/0xA)%0xA, _lllIIIIlII%0xA end
 local function _IlIllllllI(_IlllllIlll, _IIIIllIlll) local _IlllIlIIll, d2, d3 = _llIllllIII(_IIIIllIlll) return _IlllllIlll.prefix .. string.char(_llIIlIlIll(_IlllIlIIll, _IlllllIlll.k1), _llIIlIlIll(d2, _IlllllIlll.k2), _llIIlIlIll(d3, _IlllllIlll.k3)) end
 local function _IIIIIIlIII(_lllIIlIlll, _IIllIIIllI, a2) local _llllIIIIlI = _lIIllIIIII(_lllIIlIlll) if not _llllIIIIlI then return end
 local _IlIllllIll = _IlIIllllIl(_llllIIIIlI, _IIllIIIllI, a2) if not _IlIllllIll.marker then return end
 local _IIIIllIlll = _IIlllIllIl(rawget(_llllIIIIlI, _IlIllllIll.marker)) if not _IIIIllIlll then return end
 local _IlllIlIIll, d2, d3 = _llIllllIII(_IIIIllIlll) local _IlllllIlll = { _llIIlIllIl = _llllIIIIlI, _IlIllllIll = _IlIllllIll, remote = _lllIIlIlll, prefix = _IIllIIIllI:sub(0x1, 0x9), k1 = _llIIlIlIll(_IIllIIIllI:byte(0xA), _IlllIlIIll), k2 = _llIIlIlIll(_IIllIIIllI:byte(0xB), d2), k3 = _llIIlIlIll(_IIllIIIllI:byte(0xC), d3), _IIlIIIlllI = _IIIIllIlll - os.time(), arg2 = a2 } if _IlIllllllI(_IlllllIlll, _IIIIllIlll) == _IIllIIIllI then return _IlllllIlll end
 end
 local function _lIIIIlllII(_IlllllIlll) if _IlllllIlll.state and _IlllllIlll.map.marker then local _lllIllIlIl, raw = pcall(rawget, _IlllllIlll.state, _IlllllIlll.map.marker) local _IIIIllIlll = _IIlllIllIl(raw) if _IIIIllIlll and math.abs((_IIIIllIlll - os.time()) - _IlllllIlll.offset) <= 0x5 then return _IIIIllIlll end
 end
 return os.time() + _IlllllIlll.offset end
 local function _IIlIIlIIIl(_IlllllIlll) if _IlllllIlll.state and _IlllllIlll.map.arg2 then local _lllIllIlIl, v = pcall(rawget, _IlllllIlll.state, _IlllllIlll.map.arg2) if type(v) == "\115\116\114\105\110\103" then _IlllllIlll.arg2 = v end
 end
 return _IlllllIlll.arg2 end
 local _IIIlIlIlll = hookfunction or replaceclosure or hookfunc or detour_function if anyRemote and _IIIlIlIlll then local _IIllIIllIl _IIllIIllIl = _IIIlIlIlll(anyRemote.FireServer, function (self, ...) local _IIIlIlIIll = table.pack(...) if not _IIIIlIIllI[self] then return _IIllIIllIl(self, unpack(_IIIlIlIIll, 0x1, _IIIlIlIIll.n)) end
 local _IIllIIIllI = _IIIlIlIIll[0x1] if type(_IIllIIIllI) == "\115\116\114\105\110\103" and #_IIllIIIllI == 0xC then if not _llIlIlllll then _llIlIlllll = _IIIIIIlIII(self, _IIllIIIllI, _IIIlIlIIll[0x2]) else local _IIIIllIlll = _IIlllIllIl(rawget(_llIlIlllll.state, _llIlIlllll.map.marker)) if _IIIIllIlll and _IlIllllllI(_llIlIlllll, _IIIIllIlll) ~= _IIllIIIllI then local _IlllllIlll = _IIIIIIlIII(self, _IIllIIIllI, _IIIlIlIIll[0x2]) if _IlllllIlll then _IlllllIlll.spoofed = _llIlIlllll.spoofed; _llIlIlllll = _IlllllIlll end
 end
 end
 return _IIllIIllIl(self, unpack(_IIIlIlIIll, 0x1, _IIIlIlIIll.n)) end
 if _llIlIlllll and type(_IIllIIIllI) == "\115\116\114\105\110\103" and #_IIllIIIllI == 0x4 then local _IIIIllIlll = _lIIIIlllII(_llIlIlllll) _IIIlIlIIll[0x1] = _IlIllllllI(_llIlIlllll, _IIIIllIlll) _IIIlIlIIll[0x2] = _IIlIIlIIIl(_llIlIlllll) _llIlIlllll.spoofed = (_llIlIlllll.spoofed or 0x0) + 0x1 return _IIllIIllIl(self, unpack(_IIIlIlIIll, 0x1, math.max(_IIIlIlIIll.n, 0x2))) end
 return _IIllIIllIl(self, unpack(_IIIlIlIIll, 0x1, _IIIlIlIIll.n)) end
 ) end
 task.spawn( function () while not _IIlIIIIIIl.dead do task.wait(0xA) local _llIllIlIIl = false for _lllIIlIlll in pairs(_IIIIlIIllI) do if _lllIIlIlll:IsDescendantOf(game) then _llIllIlIIl = true; break end
 end
 if not _llIllIlIIl then table.clear(_IIIIlIIllI) anyRemote = nil _llIlIlllll = nil _IIllIIIIlI() end
 end
 end
 ) task.spawn( function () if not (getgc or (debug and debug.getgc)) then return end
 local _llllIIIIlI = nil local _IIlllllIlI = 0x0 local function _lIllIlIIll() local _lIIlIIlllI = nil _llIIlIIllI( function (_llIIIIIlll) if _lIIlIIlllI then return true end
 if type(_llIIIIIlll) ~= "\116\097\098\108\101" then return end
 local _IIllIIIIII = false pcall( function () _IIllIIIIII = (rawget(_llIIIIIlll, "\086\097\108\105\100\097\116\105\111\110\076\111\099\107\101\100") ~= nil and rawget(_llIIIIIlll, "\069\118\105\100\101\110\099\101") ~= nil) or (rawget(_llIIIIIlll, "\084\104\114\101\097\116\076\101\118\101\108") ~= nil and rawget(_llIIIIIlll, "\076\097\115\116\079\098\115\101\114\118\101\100\083\097\109\112\108\101") ~= nil) end
 ) if _IIllIIIIII then _lIIlIIlllI = _llIIIIIlll; return true end
 end
 , 0xFA) return _lIIlIIlllI end
 _IIllIIIIll(_llIlIllIII.CharacterAdded:Connect( function () task.wait(0x1) _llllIIIIlI = _lIllIlIIll() end
 )) while not _IIlIIIIIIl.dead do if not _llllIIIIlI then _llllIIIIlI = _lIllIlIIll() if not _llllIIIIlI then _IIlllllIlI = _IIlllllIlI + 0x1 local _lIlllIlIII = math.min(0x5 * (0x2 ^ math.min(_IIlllllIlI - 0x1, 0x3)), 0x1E) local _lIIIlIllII = 0x0 while _lIIIlIllII < _lIlllIlIII and not _IIlIIIIIIl.dead do task.wait(0.5) _lIIIlIllII = _lIIIlIllII + 0.5 end
 elseif _IIlllllIlI > 0x0 then _IIlllllIlI = 0x0 end
 end
 if _llllIIIIlI then pcall( function () local _lllIIlIIlI = rawget(_llllIIIIlI, "\069\118\105\100\101\110\099\101") if type(_lllIIlIIlI) == "\116\097\098\108\101" then if (tonumber(_lllIIlIIlI.Speed) or 0x0) > 0x0 then rawset(_lllIIlIIlI, "\083\112\101\101\100", 0x0) end
 if (tonumber(_lllIIlIIlI.Teleport) or 0x0) > 0x0 then rawset(_lllIIlIIlI, "\084\101\108\101\112\111\114\116", 0x0) end
 if (tonumber(_lllIIlIIlI.Flight) or 0x0) > 0x0 then rawset(_lllIIlIIlI, "\070\108\105\103\104\116", 0x0) end
 end
 if rawget(_llllIIIIlI, "\084\104\114\101\097\116\076\101\118\101\108") ~= "\084\114\117\115\116\101\100" then rawset(_llllIIIIlI, "\084\104\114\101\097\116\076\101\118\101\108", "\084\114\117\115\116\101\100") end
 if rawget(_llllIIIIlI, "\086\097\108\105\100\097\116\105\111\110\076\111\099\107\101\100") == true then rawset(_llllIIIIlI, "\086\097\108\105\100\097\116\105\111\110\076\111\099\107\101\100", false) end
 if rawget(_llllIIIIlI, "\070\105\114\115\116\083\117\115\112\105\099\105\111\117\115\065\116") ~= nil then rawset(_llllIIIIlI, "\070\105\114\115\116\083\117\115\112\105\099\105\111\117\115\065\116", nil) end
 if rawget(_llllIIIIlI, "\075\105\099\107\081\117\101\117\101\100") == true then rawset(_llllIIIIlI, "\075\105\099\107\081\117\101\117\101\100", false) end
 if rawget(_llllIIIIlI, "\084\097\109\112\101\114\083\099\111\114\101") ~= nil then rawset(_llllIIIIlI, "\084\097\109\112\101\114\083\099\111\114\101", 0x0) end
 if rawget(_llllIIIIlI, "\073\110\118\097\108\105\100\072\101\097\114\116\098\101\097\116\067\111\117\110\116") ~= nil then rawset(_llllIIIIlI, "\073\110\118\097\108\105\100\072\101\097\114\116\098\101\097\116\067\111\117\110\116", 0x0) end
 local _IIlIIIllII = rawget(_llllIIIIlI, "\076\097\115\116\079\098\115\101\114\118\101\100\083\097\109\112\108\101") if _IIlIIIllII ~= nil then if rawget(_llllIIIIlI, "\076\097\115\116\071\097\109\101\112\108\097\121\084\114\117\115\116\101\100\083\097\109\112\108\101") == nil then rawset(_llllIIIIlI, "\076\097\115\116\071\097\109\101\112\108\097\121\084\114\117\115\116\101\100\083\097\109\112\108\101", _IIlIIIllII) end
 if rawget(_llllIIIIlI, "\076\097\115\116\086\097\108\105\100\097\116\101\100\083\097\109\112\108\101") == nil then rawset(_llllIIIIlI, "\076\097\115\116\086\097\108\105\100\097\116\101\100\083\097\109\112\108\101", _IIlIIIllII) end
 if rawget(_llllIIIIlI, "\076\097\115\116\086\097\108\105\100\097\116\101\100\071\114\111\117\110\100\101\100\083\097\109\112\108\101") == nil then rawset(_llllIIIIlI, "\076\097\115\116\086\097\108\105\100\097\116\101\100\071\114\111\117\110\100\101\100\083\097\109\112\108\101", _IIlIIIllII) end
 if rawget(_llllIIIIlI, "\076\097\115\116\067\111\110\102\105\114\109\101\100\071\114\111\117\110\100\083\097\109\112\108\101") == nil then rawset(_llllIIIIlI, "\076\097\115\116\067\111\110\102\105\114\109\101\100\071\114\111\117\110\100\083\097\109\112\108\101", _IIlIIIllII) end
 if rawget(_llllIIIIlI, "\076\097\115\116\071\111\111\100\083\097\109\112\108\101") == nil then rawset(_llllIIIIlI, "\076\097\115\116\071\111\111\100\083\097\109\112\108\101", _IIlIIIllII) end
 end
 end
 ) end
 task.wait(0.2) end
 end
 ) local _IIllIIlIIl, PlotState, AreasData, RarityData, AssetsData, EggToolDisplay, AreaEggSlotIdentity pcall( function () _IIllIIlIIl = require(_lIlIIIIIIl.Client.EggState) end
 ) pcall( function () PlotState = require(_lIlIIIIIIl.Client.PlotState) end
 ) pcall( function () AreasData = require(_lIlIIIIIIl.Data.Areas) end
 ) pcall( function () RarityData = require(_lIlIIIIIIl.Data.Rarity) end
 ) pcall( function () AssetsData = require(_lIlIIIIIIl.Data.Assets) end
 ) local _IllIllIIlI pcall( function () _IllIllIIlI = require(_lIlIIIIIIl.Shared.Save) end
 ) pcall( function () EggToolDisplay = require(_lIlIIIIIIl.Shared.Shared.Eggs.EggToolDisplay) end
 ) pcall( function () AreaEggSlotIdentity = (_lIlIIIIIIl:FindFirstChild("\083\104\097\114\101\100") and _lIlIIIIIIl.Shared:FindFirstChild("\085\116\105\108") and require(_lIlIIIIIIl.Shared.Util.AreaEggSlotIdentity)) or (_lIlIIIIIIl:FindFirstChild("\085\116\105\108") and require(_lIlIIIIIIl.Util.AreaEggSlotIdentity)) or (_lIlIIIIIIl:FindFirstChild("\083\104\097\114\101\100") and _lIlIIIIIIl.Shared:FindFirstChild("\085\116\105\108\115") and require(_lIlIIIIIIl.Shared.Utils.AreaEggSlotIdentity)) end
 ) local function _IlllIIIIII(_lIIlIlIIII) local _IlllIlllll = _lIlIIIIIIl:FindFirstChild("\080\097\099\107\097\103\101\115") and _lIlIIIIIIl.Packages:FindFirstChild("\078\101\116\119\111\114\107\105\110\103") return _IlllIlllll and _IlllIlllll:FindFirstChild(_lIIlIlIIII) end
 local function _IIIlllIlll() if PlotState and PlotState.ResolveLocalSlot then local _llllIIlllI, slot = pcall(PlotState.ResolveLocalSlot) if _llllIIlllI and slot then return slot end
 end
 return 0x1 end
 local function _llllllllIl() local _IIIllIIIII = PlotState and PlotState.ResolvePlot and PlotState.ResolvePlot() local _IllllllIlI = _IIIllIIIII and _IIIllIIIII.CenterPoint and (typeof(_IIIllIIIII.CenterPoint) == "\086\101\099\116\111\114\051" and _IIIllIIIII.CenterPoint or (_IIIllIIIII.CenterPoint:IsA("\066\097\115\101\080\097\114\116") and _IIIllIIIII.CenterPoint.Position)) if _IllllllIlI then return Vector3.new(_IllllllIlI.X, math.max(_IllllllIlI.Y, 70.4), _IllllllIlI.Z), CFrame.new(_IllllllIlI.X, math.max(_IllllllIlI.Y, 70.4), _IllllllIlI.Z) end
 return Vector3.new(464.7, 70.4, -364.0), CFrame.new(464.7, 70.4, -364.0) end
 local _IIlllIllll = -364.5 local _llIllllIll = "\084\119\101\101\110\032\071\108\105\100\101" local _IIIIIlllIl = true local _lIlIIllIll = { autoJoin = false, autoMastery = false, _IllllIllIl = {}, arenaReady = false } local function _IIlIlIlllI(_IlllIlIllI) local _llIlIlIlIl = _IlIlIlIlIl() if not _llIlIlIlIl or not _IlllIlIllI then return false end
 _llIlIlIlIl.CFrame = CFrame.new(_IlllIlIllI.X, math.max(_IlllIlIllI.Y, 70.0), _IlllIlIllI.Z) _llIlIlIlIl.AssemblyLinearVelocity = Vector3.zero _llIlIlIlIl.AssemblyAngularVelocity = Vector3.zero return true end
 local function _lIIIlIIlll() local _IIllIlIIII = _lIllIlIIII:FindFirstChild("\095\095\068\069\066\082\073\083") if not _IIllIlIIII then return end
 for _lllIllIlIl, _llIllIlIII in ipairs(_IIllIlIIII:GetChildren()) do if _llIllIlIII.Name == "\080\108\097\121\101\114\084\114\097\112" and _llIllIlIII:GetAttribute("\079\119\110\101\114") ~= _llIlIllIII.Name then if _llIllIlIII:IsA("\066\097\115\101\080\097\114\116") then _llIllIlIII.CanTouch = false _llIllIlIII.CanQuery = false end
 for _lllIllIlIl, _IIIIllIlll in ipairs(_llIllIlIII:GetChildren()) do if _IIIIllIlll:IsA("\066\097\115\101\080\097\114\116") then _IIIIllIlll.CanTouch = false _IIIIllIlll.CanQuery = false if _IIIIllIlll.Name == "\072\105\116\098\111\120" then _IIIIllIlll.CFrame = CFrame.new(0x0, -0x3E7, 0x0) end
 end
 end
 local _IlIlIIIlII = _llIllIlIII:FindFirstChildWhichIsA("\084\111\117\099\104\084\114\097\110\115\109\105\116\116\101\114", true) if _IlIlIIIlII then pcall( function () _IlIlIIIlII:Destroy() end
 ) end
 end
 end
 end
 local function _IIIlIIlIlI(_lIllllIlll, _IllllIllIl, easeOut) local _llllIlIlII = _IlIlIlIlIl() if not _llllIlIlII or not _lIllllIlll then return false end
 local _IIllIIlIIl = _llllIlIlII.Position local _IlIlIllIII = (_lIllllIlll - _IIllIIlIIl).Magnitude if _IlIlIllIII < 1.0 then _llllIlIlII.CFrame = CFrame.new(_lIllllIlll.X, math.max(_lIllllIlll.Y, 70.0), _lIllllIlll.Z) _llllIlIlII.AssemblyLinearVelocity = Vector3.zero _llllIlIlII.AssemblyAngularVelocity = Vector3.zero return true end
 _IllllIllIl = math.clamp(tonumber(_IllllIllIl) or tonumber(_IIllIlllll) or 0x2EE, 0x32, 0x2710) local _IllllllIII = os.clock() local _IlllIIlIlI = _IlIlIllIII while not _IIlIIIIIIl.dead do local _llllIlIllI = RunService.Heartbeat:Wait() local _IlIlIIIIII = _llllIlIlII.Position local _llIIIlIIII = _lIllllIlll - _IlIlIIIIII local _IIIIlllIll = _llIIIlIIII.Magnitude if _IIIIlllIll < 1.0 then break end
 local _IlllIIlIIl = _IllllIllIl if easeOut then local _IIllIIIIlI = 0x1 - math.clamp(_IIIIlllIll / _IlllIIlIlI, 0x0, 0x1) _IlllIIlIIl = math.max(_IllllIllIl * (0x1 - _IIllIIIIlI * 0.8), 0x23) end
 local _IlIlllIllI = math.min(_IlllIIlIIl * _llllIlIllI, _IIIIlllIll) local _IIlllIllIl = _llIIIlIIII.Unit local _lllllIIIll = _IlIlIIIIII + _IIlllIllIl * _IlIlllIllI _llllIlIlII.CFrame = CFrame.lookAt(_lllllIIIll, _lllllIIIll + _IIlllIllIl) _llllIlIlII.AssemblyLinearVelocity = Vector3.zero _llllIlIlII.AssemblyAngularVelocity = Vector3.zero if os.clock() - _IllllllIII > (_IlllIIlIlI / 0x32 + 0x5) then break end
 end
 _llllIlIlII.CFrame = CFrame.new(_lIllllIlll.X, math.max(_lIllllIlll.Y, 70.0), _lIllllIlll.Z) _llllIlIlII.AssemblyLinearVelocity = Vector3.zero _llllIlIlII.AssemblyAngularVelocity = Vector3.zero return true end
 local function _IIllllIlIl(_lIllllIlll, _IllllIllIl, easeOut) local _llllIlIlII = _IlIlIlIlIl() if not _llllIlIlII or not _lIllllIlll then return false end
 local _IIllIIlIIl = _llllIlIlII.Position local _IlIlIllIII = (_lIllllIlll - _IIllIIlIIl).Magnitude if _IlIlIllIII < 1.0 then _llllIlIlII.CFrame = CFrame.new(_lIllllIlll.X, math.max(_lIllllIlll.Y, 70.0), _lIllllIlll.Z) _llllIlIlII.AssemblyLinearVelocity = Vector3.zero _llllIlIlII.AssemblyAngularVelocity = Vector3.zero return true end
 _IllllIllIl = math.clamp(tonumber(_IllllIllIl) or tonumber(_IIllIlllll) or 0x2EE, 0x32, 0x2710) local _IIlIIlllII = math.max(_IlIlIllIII / _IllllIllIl, 0.02) if easeOut then _IIlIIlllII = _IIlIIlllII * 1.25 end
 local _IllllllIII = os.clock() local _llIIIIIlII = _lIllllIlll - _IIllIIlIIl local _IIlllIllIl = _llIIIIIlII.Magnitude > 0.001 and _llIIIIIlII.Unit or Vector3.new(0x1, 0x0, 0x0) while os.clock() - _IllllllIII < _IIlIIlllII and not _IIlIIIIIIl.dead do local _llllIlIllI = RunService.Heartbeat:Wait() local _IllIllIIll = math.clamp((os.clock() - _IllllllIII) / _IIlIIlllII, 0x0, 0x1) local _llIIIIllII = _IllIllIIll if easeOut then _llIIIIllII = math.sin(_IllIllIIll * (math.pi / 0x2)) end
 local _IlIlIllllI = _IIllIIlIIl:Lerp(_lIllllIlll, _llIIIIllII) _llllIlIlII.CFrame = CFrame.lookAt(_IlIlIllllI, _IlIlIllllI + _IIlllIllIl) local _IlIllIIIll = _IllllIllIl if easeOut then _IlIllIIIll = math.max(_IllllIllIl * (0x1 - _IllIllIIll * 0.8), 0x23) end
 _llllIlIlII.AssemblyLinearVelocity = Vector3.new(_IIlllIllIl.X * _IlIllIIIll, math.clamp(_IIlllIllIl.Y * _IlIllIIIll, -0xF, 0x96), _IIlllIllIl.Z * _IlIllIIIll) _llllIlIlII.AssemblyAngularVelocity = Vector3.zero end
 _llllIlIlII.CFrame = CFrame.new(_lIllllIlll.X, math.max(_lIllllIlll.Y, 70.0), _lIllllIlll.Z) _llllIlIlII.AssemblyLinearVelocity = Vector3.zero _llllIlIlII.AssemblyAngularVelocity = Vector3.zero return true end
 local _llllIlIllI = 0x244 local _IlIIIllIll = 0xF5 local function _lllIIIllll(_IlllIlIllI, _IllllIllIl, isApproach) local _llllIlIlII = _IlIlIlIlIl() if not _llllIlIlII or not _IlllIlIllI then return false end
 if _IIIIIlllIl then pcall(_lIIIlIIlll) end
 local _lIIIlIlllI = _llllIlIlII.Position local _lIIIllllll = math.max(_lIIIlIlllI.Y, _IlllIlIllI.Y, 70.4) local _IIIlIlllIl = (_IlllIlIllI.X < 0x230) if _IIIlIlllIl and _lIIIlIlllI.X > _llllIlIllI then local _lIllllIlIl = Vector3.new(_lIIIlIlllI.X, _lIIIllllll, _IIlllIllll) _IIIlIIlIlI(_lIllllIlIl, _IllllIllIl, false) local _llIlIlllIl = Vector3.new(_llllIlIllI, _lIIIllllll, _IIlllIllll) _IIIlIIlIlI(_llIlIlllIl, _IllllIllIl, false) local _IlIIIIllIl = Vector3.new(_IlllIlIllI.X, _lIIIllllll, _IIlllIllll) _IIIlIIlIlI(_IlIIIIllIl, _IlIIIllIll, false) local _IlIIlIlIll = _IlllIlIllI + Vector3.new(0x0, 1.2, 0x0) _IIIlIIlIlI(_IlIIlIlIll, _IlIIIllIll, isApproach == true) return true else local _lIllllIlIl = Vector3.new(_lIIIlIlllI.X, _lIIIllllll, _IIlllIllll) local _lIlIlIlIIl = Vector3.new(_IlllIlIllI.X, _lIIIllllll, _IIlllIllll) local _llIIIIlIII = _IlllIlIllI + Vector3.new(0x0, 1.2, 0x0) _IIIlIIlIlI(_lIllllIlIl, _IllllIllIl, false) _IIIlIIlIlI(_lIlIlIlIIl, _IllllIllIl, false) _IIIlIIlIlI(_llIIIIlIII, _IllllIllIl, isApproach == true) return true end
 end
 local function _IIIIlIlIll(_IlllIlIllI, _IllllIllIl, isApproach) local _llllIlIlII = _IlIlIlIlIl() if not _llllIlIlII or not _IlllIlIllI then return false end
 if _IIIIIlllIl then pcall(_lIIIlIIlll) end
 local _lIIIlIlllI = _llllIlIlII.Position local _IIIlIlllIl = (_IlllIlIllI.X < 0x230) local _IIIlIIlIII = math.max(_lIIIlIlllI.Y, _IlllIlIllI.Y, 70.4) + 0x1C if _IIIlIlllIl and _lIIIlIlllI.X > _llllIlIllI then local _lIIIlIllIl = Vector3.new(_lIIIlIlllI.X, _IIIlIIlIII, _lIIIlIlllI.Z) local _IIllllIIll = Vector3.new(_llllIlIllI, _IIIlIIlIII, _IIlllIllll) _IIllllIlIl(_lIIIlIllIl, _IllllIllIl, false) _IIllllIlIl(_IIllllIIll, _IllllIllIl, false) local _lIlIllllIl = Vector3.new(_llllIlIllI, 70.4, _IIlllIllll) _IIllllIlIl(_lIlIllllIl, _IlIIIllIll, false) local _IlIIIIllIl = Vector3.new(_IlllIlIllI.X, 70.4, _IIlllIllll) _IIIlIIlIlI(_IlIIIIllIl, _IlIIIllIll, false) local _IlIIlIlIll = _IlllIlIllI + Vector3.new(0x0, 1.2, 0x0) _IIIlIIlIlI(_IlIIlIlIll, _IlIIIllIll, isApproach == true) return true else local _IlllIIlIlI = (_IlllIlIllI - _lIIIlIlllI).Magnitude if _IlllIIlIlI < 0x19 then _IIllllIlIl(Vector3.new(_IlllIlIllI.X, math.max(_IlllIlIllI.Y, 70.0) + 1.2, _IlllIlIllI.Z), _IllllIllIl, isApproach == true) return true end
 local _lIIIlIllIl = Vector3.new(_lIIIlIlllI.X, _IIIlIIlIII, _lIIIlIlllI.Z) local _IlllllIlIl = Vector3.new(_IlllIlIllI.X, _IIIlIIlIII, _IlllIlIllI.Z) local _llIllIIIll = Vector3.new(_IlllIlIllI.X, math.max(_IlllIlIllI.Y, 70.0) + 1.2, _IlllIlIllI.Z) _IIllllIlIl(_lIIIlIllIl, _IllllIllIl, false) _IIllllIlIl(_IlllllIlIl, _IllllIllIl, false) _IIllllIlIl(_llIllIIIll, _IllllIllIl, isApproach == true) return true end
 end
 local function _lllIlIIllI(_IlllIlIllI) local _IIIllIIlII = _IIlIlllIII() local _llllIlIlII = _IlIlIlIlIl() if not _IIIllIIlII or not _llllIlIlII or not _IlllIlIllI then return false end
 if _IIIIIlllIl then pcall(_lIIIlIIlll) end
 local _lIIIlIlllI = _llllIlIlII.Position local _lIllllIlIl = Vector3.new(_lIIIlIlllI.X, _lIIIlIlllI.Y, _IIlllIllll) local _lIlIlIlIIl = Vector3.new(_IlllIlIllI.X, _IlllIlIllI.Y, _IIlllIllll) local _llIIIIlIII = _IlllIlIllI + Vector3.new(0x0, 1.2, 0x0) for _lllIllIlIl, _IllllllIlI in ipairs({ _lIllllIlIl, _lIlIlIlIIl, _llIIIIlIII }) do if _IIlIIIIIIl.dead then break end
 _IIIllIIlII:MoveTo(_IllllllIlI) local _IllllllIII = os.clock() while (_llllIlIlII.Position - _IllllllIlI).Magnitude > 4.5 and os.clock() - _IllllllIII < 0x5 and not _IIlIIIIIIl.dead do task.wait(0.05) end
 end
 return true end
 local function _IllllIIIll(_IlllIlIllI, _IllllIllIl, isApproach) if _llIllllIll == "\070\108\121\032\071\108\105\100\101" then return _IIIIlIlIll(_IlllIlIllI, _IllllIllIl, isApproach) elseif _llIllllIll == "\083\097\102\101\032\087\097\108\107" then return _lllIlIIllI(_IlllIlIllI) else return _lllIIIllll(_IlllIlIllI, _IllllIllIl, isApproach) end
 end
 local _lIIIlllIIl = { ["\076\105\103\104\116\068\097\114\107"] = 0x514, ["\076\105\103\104\116\032\038\032\068\097\114\107"] = 0x514, ["\084\105\116\097\110"] = 0x44C, ["\068\105\118\105\110\101"] = 0x3E8, ["\084\114\097\110\115\099\101\110\100\101\110\116"] = 0x3E8, ["\083\117\112\101\114\105\111\114"] = 0x3E8, ["\069\116\101\114\110\097\108"] = 0x384, ["\076\105\109\105\116\101\100"] = 0x384, ["\083\101\099\114\101\116"] = 0x320, ["\069\120\111\116\105\099"] = 0x320, ["\067\111\115\109\105\099"] = 0x2BC, ["\069\120\099\108\117\115\105\118\101"] = 0x2BC, ["\065\100\109\105\110"] = 0x2BC, ["\077\121\116\104\105\099"] = 0x258, ["\077\121\116\104\105\099\097\108"] = 0x258, ["\080\114\105\115\109\097\116\105\099"] = 0x258, ["\082\097\105\110\098\111\119"] = 0x258, ["\083\113\117\105\115\104\121\032\071\111\100"] = 0x258, ["\066\114\097\105\110\114\111\116\071\111\100"] = 0x258, ["\076\101\103\101\110\100\097\114\121"] = 0x1F4, ["\069\112\105\099"] = 0x190, ["\082\097\114\101"] = 0x12C, ["\083\117\112\101\114\082\097\114\101"] = 0xC8, ["\067\101\108\101\115\116\105\097\108"] = 0xC8, ["\085\110\099\111\109\109\111\110"] = 0xC8, ["\066\097\115\105\099"] = 0x64, ["\067\111\109\109\111\110"] = 0x64, } local _lIIIIIIIll = { ["\066\097\115\101\032\047\032\080\108\111\116"] = Vector3.new(491.7, 70.4, -364.4), ["\083\116\097\110\100\115\032\038\032\083\104\111\112\115"] = Vector3.new(539.5, 68.0, -364.5), ["\070\111\114\101\115\116"] = Vector3.new(596.0, 68.0, -328.0), ["\076\097\107\101"] = Vector3.new(744.0, 68.5, -408.0), ["\068\101\115\101\114\116"] = Vector3.new(948.0, 69.5, -323.0), ["\074\117\110\103\108\101"] = Vector3.new(1188.0, 68.5, -408.0), ["\083\110\111\119"] = Vector3.new(1492.0, 69.0, -315.0), ["\086\111\108\099\097\110\111"] = Vector3.new(1882.0, 68.0, -398.0), ["\065\098\121\115\115\032\079\099\101\097\110"] = Vector3.new(2280.0, 68.0, -326.0), ["\080\114\101\104\105\115\116\111\114\105\099"] = Vector3.new(2812.0, 69.0, -398.0), ["\067\111\115\109\105\099"] = Vector3.new(3390.0, 68.0, -324.0), ["\067\104\101\114\114\121\032\066\108\111\115\115\111\109"] = Vector3.new(4028.0, 68.5, -396.0), ["\084\105\116\097\110\032\084\101\109\112\108\101"] = Vector3.new(4796.0, 69.5, -328.0), ["\076\105\103\104\116\032\068\097\114\107"] = Vector3.new(5660.0, 70.0, -331.0), ["\068\114\097\103\111\110\032\069\118\101\110\116"] = Vector3.new(539.5, 68.0, -318.0), } local _IIlIIIIIlI = { "\070\111\114\101\115\116", "\076\097\107\101", "\068\101\115\101\114\116", "\074\117\110\103\108\101", "\083\110\111\119", "\086\111\108\099\097\110\111", "\065\098\121\115\115\032\079\099\101\097\110", "\080\114\101\104\105\115\116\111\114\105\099", "\067\111\115\109\105\099", "\067\104\101\114\114\121\032\066\108\111\115\115\111\109", "\084\105\116\097\110\032\084\101\109\112\108\101", "\076\105\103\104\116\032\068\097\114\107", "\065\110\103\101\108\115\032\038\032\068\101\109\111\110\115", } local _lIIlIlIIll = { "\076\105\103\104\116\032\038\032\068\097\114\107", "\084\105\116\097\110", "\068\105\118\105\110\101", "\083\117\112\101\114\105\111\114", "\069\116\101\114\110\097\108", "\076\105\109\105\116\101\100", "\083\101\099\114\101\116", "\069\120\111\116\105\099", "\067\111\115\109\105\099", "\069\120\099\108\117\115\105\118\101", "\077\121\116\104\105\099", "\082\097\105\110\098\111\119", "\083\113\117\105\115\104\121\032\071\111\100", "\067\101\108\101\115\116\105\097\108", "\076\101\103\101\110\100\097\114\121", "\069\112\105\099", "\082\097\114\101", "\083\117\112\101\114\082\097\114\101", "\085\110\099\111\109\109\111\110", "\067\111\109\109\111\110" } local _llIlIlIlll = { "\078\111\114\109\097\108\032\079\110\108\121", "\077\117\116\097\116\101\100\032\079\110\108\121", "\080\097\114\097\115\105\116\101\032\047\032\073\110\102\101\115\116\101\100", "\082\097\105\110\098\111\119\032\079\110\108\121", "\071\111\108\100\032\079\110\108\121", "\083\105\108\118\101\114\032\079\110\108\121", "\077\111\110\115\116\114\111\117\115" } local _IlIIlIlIlI = { ["\082\097\105\110\098\111\119"] = Color3.fromRGB(0xFF, 0x64, 0xC8), ["\071\111\108\100"] = Color3.fromRGB(0xFF, 0xC8, 0x32), ["\071\111\108\100\101\110"] = Color3.fromRGB(0xFF, 0xC8, 0x32), ["\083\105\108\118\101\114"] = Color3.fromRGB(0xC8, 0xC8, 0xDC), ["\080\097\114\097\115\105\116\101"] = Color3.fromRGB(0x78, 0xFF, 0x78), ["\077\111\110\115\116\114\111\117\115"] = Color3.fromRGB(0xC8, 0x50, 0x50), ["\076\101\103\101\110\100\097\114\121"] = Color3.fromRGB(0xFF, 0xA5, 0x0), ["\082\097\114\101"] = Color3.fromRGB(0x50, 0xB4, 0xFF), ["\067\111\115\109\105\099"] = Color3.fromRGB(0xA0, 0x50, 0xFF), ["\069\112\105\099"] = Color3.fromRGB(0xB4, 0x50, 0xDC), ["\077\121\116\104\105\099"] = Color3.fromRGB(0xFF, 0x3C, 0x3C), ["\068\105\118\105\110\101"] = Color3.fromRGB(0xFF, 0xFF, 0xB4), ["\078\111\114\109\097\108"] = Color3.fromRGB(0xC8, 0xC8, 0xC8), } local function _llIIIlIllI(mutationName) return _IlIIlIlIlI[mutationName] or Color3.fromRGB(0xFF, 0x64, 0xDC) end
 local _IIlllllIIl = { "\065\098\121\115\115\032\079\118\101\114\108\111\114\100", "\065\098\121\115\115\032\083\104\097\114\107", "\065\101\116\104\101\114\111\110", "\065\110\107\121\108\111\115\097\117\114\117\115", "\065\114\099\104\065\110\103\101\108", "\065\114\099\104\100\101\109\111\110\032\068\114\097\103\111\110", "\065\120\111\108\111\116\108", "\066\097\098\121\032\065\117\114\111\114\097\032\068\114\097\103\111\110", "\066\097\108\114\111\103", "\066\097\110\097\110\116\097\032\068\111\108\112\104\105\110\116\097", "\066\101\097\114", "\066\101\108\117\103\097\032\087\104\097\108\101", "\066\101\108\117\108\097\032\066\101\108\117\103\097", "\066\105\114\100", "\066\108\097\100\101\104\105\100\101", "\066\111\109\098\111\032\067\114\111\099\111", "\066\114\111\110\116\111", "\066\114\114\032\066\114\114\032\080\097\116\097\112\105\109", "\066\117\114\114\111\119\105\110\103\032\079\119\108", "\067\097\109\101\108", "\067\097\116\102\105\115\104", "\067\101\110\116\097\112\101\100\101", "\067\101\110\116\097\117\114", "\067\101\114\098\101\114\117\115", "\067\104\105\099\107\101\110", "\067\104\105\108\108\105\110\032\067\104\105\108\108\105", "\067\104\105\109\112\097\110\122\101\101", "\067\111\115\109\105\099\032\068\114\097\103\111\110", "\067\111\115\109\105\099\032\071\101\099\107\111", "\067\111\115\109\105\099\032\071\111\114\105\108\108\097", "\067\111\115\109\105\099\032\083\107\101\108\101\116\111\110\032\066\111\115\115", "\067\114\097\110\101", "\067\114\097\119\108\101\114", "\067\114\111\099\111\100\105\108\101", "\067\114\111\099\111\100\111\110", "\067\114\117\115\116\097\099\105\097", "\067\116\104\117\108\104\117", "\068\101\109\111\110\032\072\111\117\110\100", "\068\101\109\111\110\032\073\109\112", "\068\101\112\116\104\115\032\082\105\112\116\105\100\101\032\079\099\116\111\112\117\115", "\068\111\100\111", "\068\111\103", "\068\114\101\097\100\099\108\097\119", "\068\114\101\097\100\115\099\097\108\101", "\068\114\105\108\108\097", "\068\117\099\107\108\105\110\103", "\069\108\032\077\097\106\097", "\069\108\101\099\116\114\105\099\032\069\101\108", "\069\109\098\101\114\032\068\114\097\103\111\110", "\069\113\117\105\110\111\120", "\069\116\101\114\110\097\108\032\076\117\110\097\114\032\068\114\097\103\111\110", "\070\101\110\110\101\099", "\070\108\097\109\101\032\083\112\114\105\116\101", "\070\108\097\109\105\110\103\032\066\117\108\108", "\070\111\120", "\070\114\111\103", "\070\114\111\103\103\111", "\071\097\114\103\111\121\108\101", "\071\111\114\105\108\108\097", "\071\111\114\105\108\108\097\032\075\105\110\103", "\072\101\108\108\104\111\117\110\100", "\072\111\108\121\032\080\101\097\099\111\099\107", "\073\099\101\032\068\114\097\103\111\110", "\073\109\112", "\074\101\114\098\111\097", "\075\105\110\103\032\077\097\109\109\111\116\104", "\075\105\110\103\032\083\110\097\107\101", "\075\105\116\115\117\110\101", "\075\111\105", "\075\114\097\107\101\110", "\075\114\097\107\101\110\111\105\100", "\076\097\032\086\097\099\099\097\032\083\097\116\117\114\110\111\032\083\097\116\117\114\110\105\116\097", "\076\097\118\097\032\068\114\097\103\111\110", "\076\097\118\097\032\102\114\111\103", "\076\097\118\097\032\071\101\099\107\111", "\076\097\118\097\032\073\103\117\097\110\097", "\076\101\118\105\097\116\104\097\110", "\076\105\103\104\116\032\068\111\118\101", "\076\117\109\105\110\111\117\115\032\065\098\121\115\115\032\083\104\097\114\107", "\076\117\109\105\110\111\117\115\032\067\116\104\117\108\104\117", "\076\117\109\105\110\111\117\115\032\069\108\101\099\116\114\105\099\032\069\101\108", "\076\117\109\105\110\111\117\115\032\083\112\105\107\101", "\076\117\109\105\110\111\117\115\032\083\112\105\114\105\116\032\077\097\110\116\097", "\076\117\109\105\110\111\117\115\032\084\101\114\114\097\032\083\110\097\112\112\101\114", "\077\097\109\109\111\116\104", "\077\097\110\103\111\108\105\110\105\032\080\097\114\114\111\099\104\105\110\105", "\077\097\110\116\097\114\105\115", "\077\097\119\098\114\101\097\107\101\114", "\077\101\099\104\097\032\067\114\097\119\108\101\114", "\077\101\099\104\097\032\067\114\111\099\111\100\111\110", "\077\101\099\104\097\032\068\114\101\097\100\115\099\097\108\101", "\077\101\099\104\097\032\070\114\111\103\103\111", "\077\101\099\104\097\032\075\114\097\107\101\110\111\105\100", "\077\101\099\104\097\032\083\099\111\114\112\105\111", "\077\111\115\097\115\097\117\114\117\115", "\077\117\116\097\110\116\032\083\104\097\114\107", "\078\105\103\104\116\102\108\097\109\101", "\079\110\105\032\084\105\103\101\114", "\079\114\097\110\103\117\116\105\110\105\032\065\110\097\110\097\115\115\105\110\105", "\079\114\099\097", "\080\097\114\114\111\116\102\105\115\104", "\080\101\103\097\115\117\115", "\080\101\110\103\117\105\110", "\080\104\111\101\110\105\120", "\080\111\108\097\114\032\066\101\097\114", "\080\116\101\114\111\100\097\099\116\121\108", "\080\117\114\101\032\074\101\108\108\121\102\105\115\104", "\082\097\099\099\111\111\110", "\082\097\122\111\114\070\097\110\103", "\082\101\100\032\080\097\110\100\097", "\082\104\105\110\111\116\097\117\114", "\082\105\102\116\032\069\121\101", "\082\105\102\116\119\105\110\103", "\082\105\110\103\032\071\117\097\114\100", "\082\105\110\103\108\111\114\100", "\082\105\112\116\105\100\101\032\079\099\116\111\112\117\115", "\082\111\121\097\108\032\083\112\104\105\110\120", "\083\097\098\101\114\116\111\111\116\104\032\084\105\103\101\114", "\083\097\099\114\101\100\032\077\111\116\104", "\083\097\108\097\109\097\110\100\101\114", "\083\097\110\100\032\083\112\105\100\101\114", "\083\099\111\114\099\104\101\100\032\068\114\097\103\111\110", "\083\099\111\114\112\105\111", "\083\099\111\114\112\105\111\110", "\083\104\097\100\111\119\032\068\114\097\103\111\110", "\083\104\097\114\100\108\105\110\103", "\083\104\097\114\100\119\105\110\103", "\083\104\097\114\107", "\083\104\097\116\116\101\114\101\100\032\067\111\108\111\115\115\117\115", "\083\104\097\116\116\101\114\101\100\032\068\114\097\107\101", "\083\104\097\116\116\101\114\101\100\032\082\097\109", "\083\107\101\108\101\116\111\110\032\072\111\114\115\101", "\083\110\097\107\101", "\083\110\111\119\121\032\079\119\108", "\083\112\105\100\101\114", "\083\112\105\100\101\114\111\110", "\083\112\105\107\101", "\083\112\105\114\105\116\032\077\097\110\116\097", "\083\116\097\103", "\083\116\114\097\119\098\101\114\114\121\032\069\108\101\112\104\097\110\116", "\083\119\097\110", "\083\119\111\114\100\102\105\115\104", "\084\101\114\114\097\032\083\110\097\112\112\101\114", "\084\105\103\101\114", "\084\111\098\032\084\111\098\032\084\111\098\032\084\111\098", "\084\111\114\111", "\084\111\117\099\097\110", "\084\114\097\108\097\108\101\100\111\110", "\084\082\101\120", "\084\114\105\099\101\114\097\116\111\112\115", "\084\114\117\108\105\109\101\114\111\032\084\114\117\108\105\099\105\110\097", "\084\117\110\103\032\084\117\110\103\032\083\097\104\117\114", "\084\117\114\116\108\101", "\085\110\105\099\111\114\110", "\086\101\110\116\105\110\097\108", "\086\111\105\100\032\065\110\103\108\101\114", "\086\111\105\100\032\068\114\097\103\111\110", "\086\111\105\100\032\083\101\114\112\101\110\116", "\086\111\105\100\109\097\119", "\087\097\108\114\117\115", "\087\101\110\100\105\103\111", "\087\104\097\108\101\032\083\104\097\114\107", "\087\105\110\103\101\100\032\076\097\109\098", "\087\111\114\108\100\032\066\117\114\110\101\114", "\087\111\114\108\100\032\069\097\116\101\114", "\089\101\116\105", } local _lIlIIllIlI = false local _lIIIlllIlI = true local _IIIlIlIIlI = false local _llllllllII = {} local _IIIllllIlI = {} local _IlIlIllIII = {} local _lIIIlIIIll = nil local _llIIlIIIIl = nil local _IIlIIIIIll = false local _IIllllllII = false local _lIIIllIIll = 0.5 local _IIllIlllll = 0x3E8 local _IIIlIlllII = {} local _lllllIlIlI = nil local _lIllIIIllI = false local _IlIlllIllI = false local _llllIIIIlI = false local _IIllllIlll = false local _lIIIIlIlII = false local _llllIlllll = 0.5 local _lIIIlIlIlI = false local _lIIIllllIl = false local _llIllIlIll = false local _IIIIlIlIll = false local _lIIIlIlIlI = false local _IlllIIIllI = false local _IlIlllIlIl = false local _IIllIlIIll = false local _IIlllIIIII = {} local _lllIIIIIIl = {} local _lIllIIlIII = { ["\067\111\109\109\111\110"] = true, ["\085\110\099\111\109\109\111\110"] = true, ["\082\097\114\101"] = true, ["\069\112\105\099"] = true, ["\076\101\103\101\110\100\097\114\121"] = true, ["\077\121\116\104\105\099"] = true, } local _llIlIllIlI = 0.1 local function _IIlIllIlIl(selected) if not selected or next(selected) == nil then return _lIllIIlIII end
 return selected end
 local _IIIlIllIlI = true local _IIlIIIIlIl = false local _lIIIlIIIlI = 0x14 local _lIllllIIlI = 0.2 local _IlIlIIllll = true local function _lIllIlllll(egg) if not egg then return "\067\111\109\109\111\110", 0x64 end
 if egg.Rarity then local _lllIIlIlll = egg.Rarity local _lIIlIlIIII = type(_lllIIlIlll) == "\116\097\098\108\101" and (_lllIIlIlll.DisplayName or _lllIIlIlll._id or _lllIIlIlll.Name) or tostring(_lllIIlIlll) local _lIlllIlIlI = _lIIIlllIIl[_lIIlIlIIII] or (type(_lllIIlIlll) == "\116\097\098\108\101" and tonumber(_lllIIlIlll.RarityNumber) and _lllIIlIlll.RarityNumber * 0x64) or 0x64 return _lIIlIlIIII, _lIlllIlIlI end
 local _lIllIIIIII = egg.AssetCategory or egg.Category or egg.Name if _lIllIIIIII and AssetsData then local _IIllIlllll = AssetsData.Directory or AssetsData local _IlIIIIIllI = _IIllIlllll[_lIllIIIIII] if _IlIIIIIllI and _IlIIIIIllI.Rarity then local _lllIIlIlll = _IlIIIIIllI.Rarity local _lIIlIlIIII = type(_lllIIlIlll) == "\116\097\098\108\101" and (_lllIIlIlll.DisplayName or _lllIIlIlll._id or _lllIIlIlll.Name) or tostring(_lllIIlIlll) local _lIlllIlIlI = _lIIIlllIIl[_lIIlIlIIII] or (type(_lllIIlIlll) == "\116\097\098\108\101" and tonumber(_lllIIlIlll.RarityNumber) and _lllIIlIlll.RarityNumber * 0x64) or 0x64 return _lIIlIlIIII, _lIlllIlIlI end
 end
 local _IIIIIIIIIl = AreasData and (AreasData.Directory or AreasData) and (AreasData.Directory or AreasData)[egg.AreaId] local _IIIllIlllI = _IIIIIIIIIl and _IIIIIIIIIl.Rarity local _IIIIllIllI = (type(_IIIllIlllI) == "\116\097\098\108\101" and (_IIIllIlllI._id or _IIIllIlllI.DisplayName or _IIIllIlllI.Name)) or (type(_IIIllIlllI) == "\115\116\114\105\110\103" and _IIIllIlllI) or "\067\111\109\109\111\110" local _IlIlIlIIIl = RarityData and (RarityData.Rarities or RarityData) or {} local _IlIllIIllI = _IlIlIlIIIl[_IIIIllIllI] or {} local _llllIIIlll = (type(_IlIllIIllI) == "\116\097\098\108\101" and (_IlIllIIllI.DisplayName or _IlIllIIllI._id)) or (type(_IIIllIlllI) == "\116\097\098\108\101" and _IIIllIlllI.DisplayName) or _IIIIllIllI or "\067\111\109\109\111\110" local _IIIIlllIII = _lIIIlllIIl[_llllIIIlll] or _lIIIlllIIl[_IIIIllIllI] or (type(_IIIllIlllI) == "\116\097\098\108\101" and tonumber(_IIIllIlllI.RarityNumber) and _IIIllIlllI.RarityNumber * 0x64) or 0x64 return _llllIIIlll, _IIIIlllIII end
 local function _IlllIllIll(_IIllIllIll, filter) if not filter or type(filter) ~= "\116\097\098\108\101" then return true end
 local _lllllIIlIl = 0x0 for _lllIllIlIl in pairs(filter) do _lllllIIlIl = _lllllIIlIl + 0x1 end
 if _lllllIIlIl == 0x0 then return true end
 if filter[_IIllIllIll] == true then return true end
 local _IllIIIllll = string.lower(tostring(_IIllIllIll)) for k, v in pairs(filter) do if type(v) == "\115\116\114\105\110\103" and string.lower(v) == _IllIIIllll then return true elseif type(k) == "\115\116\114\105\110\103" and string.lower(k) == _IllIIIllll and v == true then return true end
 end
 return false end
 local function _llllIIIIlI(_lIIlIlIIII) local _IIlllIllIl = AreasData and AreasData.Directory if type(_IIlllIllIl) ~= "\116\097\098\108\101" then return tostring(_lIIlIlIIII) end
 local _lIlllIlIll = string.lower(tostring(_lIIlIlIIII)) for id, info in pairs(_IIlllIllIl) do if string.lower(tostring(id)) == _lIlllIlIll then return id end
 if type(info) == "\116\097\098\108\101" and info.DisplayName and string.lower(tostring(info.DisplayName)) == _lIlllIlIll then return id end
 end
 return tostring(_lIIlIlIIII) end
 local function _lIIllIIIII(areaId, filter) if not filter or type(filter) ~= "\116\097\098\108\101" then return true end
 local _lllllIIlIl = 0x0 for _lllIllIlIl in pairs(filter) do _lllllIIlIl = _lllllIIlIl + 0x1 end
 if _lllllIIlIl == 0x0 then return true end
 if filter[areaId] == true then return true end
 local _lIlIlIIlll = string.lower(tostring(areaId)) for k, v in pairs(filter) do if type(v) == "\115\116\114\105\110\103" and (string.lower(v) == _lIlIlIIlll or string.lower(tostring(_llllIIIIlI(v))) == _lIlIlIIlll) then return true elseif type(k) == "\115\116\114\105\110\103" and string.lower(k) == _lIlIlIIlll and v == true then return true end
 end
 return false end
 local function _lllllIIIlI(_IIlIIlIIlI, _lllIlIIIll, filter) local _llIIIlIIII = (_lllIlIIIll and _lllIlIIIll.HasParasite == true) or (type(_IIlIIlIIlI) == "\116\097\098\108\101" and (table.find(_IIlIIlIIlI, "\080\097\114\097\115\105\116\101") or table.find(_IIlIIlIIlI, "\077\111\110\115\116\114\111\117\115"))) or (_lllIlIIIll and (_lllIlIIIll.BaseMutation == "\080\097\114\097\115\105\116\101" or _lllIlIIIll.BaseMutation == "\077\111\110\115\116\114\111\117\115")) if not filter or type(filter) ~= "\116\097\098\108\101" then return true end
 local _lllllIIlIl = 0x0 for _lllIllIlIl in pairs(filter) do _lllllIIlIl = _lllllIIlIl + 0x1 end
 if _lllllIIlIl == 0x0 then return true end
 local _IIlIlIIIII = type(_IIlIIlIIlI) == "\116\097\098\108\101" and #_IIlIIlIIlI > 0x0 local _IlIlllllII = false for _lllIllIlIl, opt in pairs(filter) do if type(opt) == "\115\116\114\105\110\103" then if opt == "\078\111\114\109\097\108\032\079\110\108\121" and not _IIlIlIIIII and not _llIIIlIIII then _IlIlllllII = true elseif opt == "\077\117\116\097\116\101\100\032\079\110\108\121" and (_IIlIlIIIII or _llIIIlIIII) then _IlIlllllII = true elseif (opt == "\080\097\114\097\115\105\116\101\032\047\032\073\110\102\101\115\116\101\100" or opt == "\077\111\110\115\116\114\111\117\115") and _llIIIlIIII then _IlIlllllII = true elseif opt == "\083\105\108\118\101\114\032\079\110\108\121" and type(_IIlIIlIIlI) == "\116\097\098\108\101" and table.find(_IIlIIlIIlI, "\083\105\108\118\101\114") then _IlIlllllII = true elseif opt == "\071\111\108\100\032\079\110\108\121" and type(_IIlIIlIIlI) == "\116\097\098\108\101" and (table.find(_IIlIIlIIlI, "\071\111\108\100") or table.find(_IIlIIlIIlI, "\071\111\108\100\101\110")) then _IlIlllllII = true elseif opt == "\082\097\105\110\098\111\119\032\079\110\108\121" and type(_IIlIIlIIlI) == "\116\097\098\108\101" and table.find(_IIlIIlIIlI, "\082\097\105\110\098\111\119") then _IlIlllllII = true end
 end
 end
 return _IlIlllllII end
 local function _IIIlIllllI(_lllIlIIIll) if not _lllIlIIIll then return false end
 local _lIllllllII = tonumber(_lllIlIIIll.AssetScale) or 0x1 local _lIIIIIIlII = tonumber(_lllIlIIIll.NestScale) or 0x1 return _lIllllllII >= 1.35 or _lIIIIIIlII >= 1.0 end
 local function _lIlllllIll(areasFilter, raritiesFilter, mutationsFilter, petFilter) if not _IIllIIlIIl or not _IIllIIlIIl.ReadFieldEggs then return {} end
 local _llllIIlllI, snapshot = pcall(_IIllIIlIIl.ReadFieldEggs) if not _llllIIlllI or not snapshot or not snapshot.Records then return {} end
 local _IIIIIIIIIl = {} for _lllIllIlIl, _lllIlIIIll in ipairs(snapshot.Records) do if _lllIlIIIll.State == "\083\108\111\116" and _lllIlIIIll.BoundsCFrame then local _IlIIlllIII = _IIIlIlllII[_lllIlIIIll.Uid] and (os.clock() - _IIIlIlllII[_lllIlIIIll.Uid] < 2.5) if not _IlIIlllIII and ( not _IIIlIlIIlI or _IIIlIllllI(_lllIlIIIll)) then local _IlIlllIlIl = _lIIllIIIII(_lllIlIIIll.AreaId, areasFilter) local _IIllIllIll, _IIIIlllIII = _lIllIlllll(_lllIlIIIll) local _lIIIlIlIII = _IlllIllIll(_IIllIllIll, raritiesFilter) local _IIlIIlIIlI = _lllIlIIIll.Mutations or {} local _IIlIlIIIlI = _lllllIIIlI(_IIlIIlIIlI, _lllIlIIIll, mutationsFilter) local _IIIIIlIlII = true if petFilter and petFilter ~= "" then local _IIIlIllIIl = tostring(_lllIlIIIll.AssetCategory or _lllIlIIIll.Category or _lllIlIIIll.Name or "") local _lllIIlIIll = "" if AssetsData then local _IIlllIllIl = AssetsData.Directory or AssetsData local _IlIIIIIllI = _IIlllIllIl and _IIlllIllIl[_IIIlIllIIl] if _IlIIIIIllI then _lllIIlIIll = tostring(_IlIIIIIllI.DisplayName or _IlIIIIIllI.Name or "") end
 end
 local _lIllllIlll = string.lower(tostring(petFilter)) _IIIIIlIlII = (string.lower(_IIIlIllIIl) == _lIllllIlll) or (string.lower(_lllIIlIIll) == _lIllllIlll) end
 if _IlIlllIlIl and _lIIIlIlIII and _IIlIlIIIlI and _IIIIIlIlII then local _llIlIIlIIl = 0x0 for _lllIllIlIl, _IlllllIlll in ipairs(_IIlIIlIIlI) do if _IlllllIlll == "\082\097\105\110\098\111\119" then _llIlIIlIIl = _llIlIIlIIl + 0x23 elseif _IlllllIlll == "\071\111\108\100" or _IlllllIlll == "\071\111\108\100\101\110" then _llIlIIlIIl = _llIlIIlIIl + 0x14 elseif _IlllllIlll == "\083\105\108\118\101\114" then _llIlIIlIIl = _llIlIIlIIl + 0xA end
 end
 if _lllIlIIIll.HasParasite == true or (type(_IIlIIlIIlI) == "\116\097\098\108\101" and (table.find(_IIlIIlIIlI, "\080\097\114\097\115\105\116\101") or table.find(_IIlIIlIIlI, "\077\111\110\115\116\114\111\117\115"))) then _llIlIIlIIl = _llIlIIlIIl + 0x320 end
 if _IIIlIllllI(_lllIlIIIll) then _llIlIIlIIl = _llIlIIlIIl + 0x258 end
 table.insert(_IIIIIIIIIl, { _lllIlIIIll = _lllIlIIIll, _IIIllIlllI = _IIllIllIll, _lIlllIlIlI = _IIIIlllIII + _llIlIIlIIl }) end
 end
 end
 end
 if #_IIIIIIIIIl > 0x1 then table.sort(_IIIIIIIIIl, function (_llIIIIllII, b) return _llIIIIllII.score > b.score end
 ) end
 return _IIIIIIIIIl end
 local function _IlllllIIIl() if not _lllllIlIlI then local _llllIlIlII = _IlIlIlIlIl() if _llllIlIlII then _lllllIlIlI = _llllIlIlII.CFrame end
 end
 end
 local function _IIIIlIlIIl() local _lIllIIIllI = _llIlIllIII:FindFirstChildOfClass("\080\108\097\121\101\114\071\117\105") local _lIIlIllIlI = _lIllIIIllI and _lIllIIIllI:FindFirstChild("\068\114\111\112\072\101\108\100\069\103\103") if _lIIlIllIlI and _lIIlIllIlI.Enabled == true then return true end
 local _lIlIIIIlll = _llIlIllIII.Character if _lIlIIIIlll then for _lllIllIlIl, t in ipairs(_lIlIIIIlll:GetChildren()) do if t:IsA("\077\111\100\101\108") and (t.Name:lower():find("\101\103\103") or t:GetAttribute("\085\105\100") or t:GetAttribute("\065\115\115\101\116\067\097\116\101\103\111\114\121")) then return true end
 if t:IsA("\084\111\111\108") then if EggToolDisplay and EggToolDisplay.IsEggTool and EggToolDisplay.IsEggTool(t) then return true end
 if t:GetAttribute("\073\115\069\103\103") == true or t:GetAttribute("\085\105\100") ~= nil or t:GetAttribute("\065\115\115\101\116\067\097\116\101\103\111\114\121") ~= nil then return true end
 local _IIlIIIlIlI = t.Name:lower() if _IIlIIIlIlI:find("\101\103\103") or (_IIlIIIlIlI ~= "\098\097\116" and _IIlIIIlIlI ~= "\100\101\102\097\117\108\116\116\111\111\108" and not _IIlIIIlIlI:find("\098\097\116") and not _IIlIIIlIlI:find("\115\108\097\112") and not _IIlIIIlIlI:find("\099\111\105\108") and not _IIlIIIlIlI:find("\112\111\116\105\111\110") and not _IIlIIIlIlI:find("\108\097\110\116\101\114\110")) then return true end
 end
 end
 end
 local _IIlllIlIlI = _llIlIllIII:FindFirstChild("\066\097\099\107\112\097\099\107") if _IIlllIlIlI then for _lllIllIlIl, t in ipairs(_IIlllIlIlI:GetChildren()) do if t:IsA("\084\111\111\108") and EggToolDisplay and EggToolDisplay.IsEggTool and EggToolDisplay.IsEggTool(t) then return true end
 end
 end
 return false end
 local function _IIlIIlIIll() local _IIIllIIIII = PlotState and PlotState.ResolvePlot and PlotState.ResolvePlot() local _IlIIlIlllI = _IIIllIIIII and _IIIllIIIII.CenterPoint and _IIIllIIIII.CenterPoint.Position or Vector3.new(464.7, 68.2, -364.0) local _lIllIlllIl = {} for _lllIllIlIl, t in ipairs(_llIlIllIII.Character:GetChildren()) do if t:IsA("\084\111\111\108") and EggToolDisplay and EggToolDisplay.IsEggTool and EggToolDisplay.IsEggTool(t) then local _lllIIllIlI = EggToolDisplay.GetToolUid(t) if _lllIIllIlI then table.insert(_lIllIlllIl, _lllIIllIlI) end
 end
 end
 for _lllIllIlIl, t in ipairs(_llIlIllIII.Backpack:GetChildren()) do if t:IsA("\084\111\111\108") and EggToolDisplay and EggToolDisplay.IsEggTool and EggToolDisplay.IsEggTool(t) then local _lllIIllIlI = EggToolDisplay.GetToolUid(t) if _lllIIllIlI then table.insert(_lIllIlllIl, _lllIIllIlI) end
 end
 end
 local _lIllIlIlll = 0x0 for _lllIllIlIl, eggUid in ipairs(_lIllIlllIl) do for attempt = 0x1, 0x3 do local _IIlIIIlllI = CFrame.new(math.random(-0x6, 0x6), 0x0, math.random(-0x6, 0x6)) local _llllIIlllI, res = pcall( function () if _IIllIIlIIl and _IIllIIlIIl.PlantEgg then return _IIllIIlIIl.PlantEgg(eggUid, _IIlIIIlllI) end
 return false end
 ) if _llllIIlllI and res then _lIllIlIlll = _lIllIlIlll + 0x1 break end
 task.wait(0.1) end
 end
 return _lIllIlIlll end
 local function _IlIlIIllII(targetItem) local _lllIlIIIll = targetItem.record or targetItem if not _lllIlIIIll or not _lllIlIIIll.Uid or not _lllIlIIIll.BoundsCFrame then return false end
 if _IIllIIlIIl and _IIllIIlIIl.ReadFieldEggs then local _llllIIlllI, _lllIIIlIII = pcall(_IIllIIlIIl.ReadFieldEggs) if _llllIIlllI and _lllIIIlIII and _lllIIIlIII.Records then local _IlIlllIIlI = false for _lllIllIlIl, _lllIIlIlll in ipairs(_lllIIIlIII.Records) do if _lllIIlIlll.Uid == _lllIlIIIll.Uid and _lllIIlIlll.State == "\083\108\111\116" then _IlIlllIIlI = true _lllIlIIIll = _lllIIlIlll break end
 end
 if not _IlIlllIIlI then return false end
 end
 end
 local _llllIlIlII = _IlIlIlIlIl() local _IIIllIIlII = _IIlIlllIII() if not _llllIlIlII then return false end
 _IlllllIIIl() local _IlllIlIllI = _lllIlIIIll.BoundsCFrame.Position local _IllllIllIl = math.clamp(tonumber(_IIllIlllll) or 0x2EE, 0x32, 0x2710) _IllllIIIll(_IlllIlIllI + Vector3.new(0x0, 1.2, 0x0), _IllllIllIl, true) if not _lIlIIllIlI then return false end
 if _llllIlIlII then _llllIlIlII.CFrame = CFrame.new(_IlllIlIllI + Vector3.new(0x0, 1.2, 0x0)) _llllIlIlII.AssemblyLinearVelocity = Vector3.zero _llllIlIlII.AssemblyAngularVelocity = Vector3.zero end
 task.wait(0.5) if not _lIlIIllIlI then return false end
 local _lIIIIIIIll = nil if AreaEggSlotIdentity and AreaEggSlotIdentity.LooksLikeFirstAreaUid and AreaEggSlotIdentity.LooksLikeFirstAreaUid(_lllIlIIIll.Uid) then _lIIIIIIIll = AreaEggSlotIdentity.SlotKey(_lllIlIIIll.AreaId, _lllIlIIIll.NestId) end
 local _IlllIlllll = _lIlIIIIIIl:FindFirstChild("\080\097\099\107\097\103\101\115") and _lIlIIIIIIl.Packages:FindFirstChild("\078\101\116\119\111\114\107\105\110\103") local _IIllIlIlll = _IlllIlllll and _IlllIlllll:FindFirstChild("\082\070\047\069\103\103\087\111\114\108\100\047\065\115\107\070\105\101\108\100\069\103\103\067\097\114\114\121") if _IIllIlIlll then pcall( function () _IIllIlIlll:InvokeServer({ Uid = _lllIlIIIll.Uid, FirstAreaSlotKey = _lIIIIIIIll }) end
 ) end
 pcall( function () if _IIllIIlIIl and _IIllIIlIIl.CarryFieldEgg then _IIllIIlIIl.CarryFieldEgg(_lllIlIIIll.Uid, _lIIIIIIIll) end
 end
 ) local _lllllllIII = nil for _lllIllIlIl, _llIllIlIII in ipairs(_lIllIlIIII:GetDescendants()) do if _llIllIlIII:IsA("\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116") and _llIllIlIII.Name == "\067\097\114\114\121\065\114\101\097\069\103\103" and _llIllIlIII.Enabled then local _lllllllllI = (_llIllIlIII.ActionText or ""):lower() local _llIIlllIIl = (_llIllIlIII.ObjectText or ""):lower() if not _lllllllllI:find("\115\107\105\112") and not _lllllllllI:find("\114\111\098\117\120") and not _llIIlllIIl:find("\115\107\105\112") and not _llIIlllIIl:find("\114\111\098\117\120") then local _IlIIlllIIl = _llIllIlIII.Parent if _IlIIlllIIl:IsA("\065\116\116\097\099\104\109\101\110\116") then _IlIIlllIIl = _IlIIlllIIl.Parent end
 if _IlIIlllIIl and (_IlIIlllIIl.Position - _llllIlIlII.Position).Magnitude < 0xE then _lllllllIII = _llIllIlIII break end
 end
 end
 end
 if _lllllllIII then _lllllllIII.HoldDuration = 0x0 pcall( function () fireproximityprompt(_lllllllIII) end
 ) pcall( function () fireproximityprompt(_lllllllIII, 0x0) end
 ) end
 local _IIIlllllll, _lllIllIlIl = _llllllllIl() local _llIlllIllI = CFrame.new(_IIIlllllll + Vector3.new(0x0, 1.2, 0x0)) local _IIlIIlIlll = os.clock() local _IIIllIllll = false local _lIIIlIIIIl = 1.5 while os.clock() - _IIlIIlIlll < _lIIIlIIIIl and not _IIlIIIIIIl.dead do if not _lIlIIllIlI then return false end
 if _IIIllIllll then break end
 if _IIIIlIlIIl() then _IIIllIllll = true break end
 pcall( function () if _IIllIIlIIl and _IIllIIlIIl.CarryFieldEgg then _IIllIIlIIl.CarryFieldEgg(_lllIlIIIll.Uid, _lIIIIIIIll) end
 end
 ) if _lllllllIII then _lllllllIII.HoldDuration = 0x0 pcall( function () fireproximityprompt(_lllllllIII) end
 ) end
 task.wait(0.08) end
 if not _IIIllIllll then _IIIlIlllII[_lllIlIIIll.Uid] = os.clock() return false end
 do local _IllIIIIlll = true if _IllIIIIlll and _IIIllIllll then local _lIIllIlIll = os.clock() local _IIlllllllI = 0x64 local _lIIlIIIlII = _IIlIlllIII() if _lIIlIIIlII then _IIlllllllI = _lIIlIIIlII.Health end
 local _IlIIllIlII = false while os.clock() - _lIIllIlIll < 4.0 and not _IIlIIIIIIl.dead do if not _lIlIIllIlI then return false end
 if not _IIIIlIlIIl() then _IlIIllIlII = true break end
 local _lllIllIIII = _IIlIlllIII() if _lllIllIIII then local _IllllllIII = _lllIllIIII:GetState() if _lllIllIIII.Health < _IIlllllllI - 1.5 or _IllllllIII == Enum.HumanoidStateType.Physics or _IllllllIII == Enum.HumanoidStateType.Ragdoll or _IllllllIII == Enum.HumanoidStateType.FallingDown then _IlIIllIlII = true local _IlIIIIIlIl = os.clock() while os.clock() - _IlIIIIIlIl < 0.85 and not _IIlIIIIIIl.dead do if not _IIIIlIlIIl() then break end
 task.wait(0.05) end
 break end
 end
 task.wait(0.05) end
 if _IlIIllIlII or not _IIIIlIlIIl() then task.wait(0.65) do local _lIlllIllll = os.clock() while os.clock() - _lIlllIllll < 3.2 and not _IIlIIIIIIl.dead do local _lllIllIIII = _IIlIlllIII() if not _lllIllIIII then break end
 local _IllllllIII = _lllIllIIII:GetState() if _IllllllIII ~= Enum.HumanoidStateType.Physics and _IllllllIII ~= Enum.HumanoidStateType.Ragdoll and _IllllllIII ~= Enum.HumanoidStateType.FallingDown then break end
 pcall( function () _lllIllIIII:ChangeState(Enum.HumanoidStateType.GettingUp) end
 ) task.wait(0.12) end
 task.wait(0.35) end
 local _lllIlllllI = _IlIlIlIlIl() if _lllIlllllI and (_lllIlllllI.Position - _IlllIlIllI).Magnitude > 0xE then pcall( function () _lllIlllllI.CFrame = CFrame.new(_IlllIlIllI + Vector3.new(0x0, 1.8, 0x0)) _lllIlllllI.AssemblyLinearVelocity = Vector3.zero _lllIlllllI.AssemblyAngularVelocity = Vector3.zero end
 ) task.wait(0.35) end
 do local _llIIlIIIlI = os.clock() while os.clock() - _llIIlIIIlI < 1.5 and not _IIlIIIIIIl.dead do local _lllIllIIII = _IIlIlllIII() if _lllIllIIII and _lllIllIIII:GetState() ~= Enum.HumanoidStateType.Physics and _lllIllIIII:GetState() ~= Enum.HumanoidStateType.Ragdoll then break end
 task.wait(0.08) end
 end
 do local _IIllIIIlll = os.clock() while os.clock() - _IIllIIIlll < 4.5 and not _IIlIIIIIIl.dead do if not _lIlIIllIlI then return false end
 local _lllllllIIl = false pcall( function () local _lllIIIIlll = _lIllIlIIII:FindFirstChild("\095\095\079\066\074\069\067\084\083") and _lIllIlIIII.__OBJECTS:FindFirstChild("\065\114\101\097\115") and _lIllIlIIII.__OBJECTS.Areas:FindFirstChild("\071\117\097\114\100\065\114\101\097\115") local _IIlIllIIll = nil if _lllIIIIlll and _lllIlIIIll.AreaId then local _IIlIllIIlI = _lllIIIIlll:FindFirstChild(_lllIlIIIll.AreaId) if _IIlIllIIlI then _IIlIllIIll = _IIlIllIIlI:FindFirstChild("\071\117\097\114\100") or _IIlIllIIlI:FindFirstChild("\070\111\114\101\115\116\071\117\097\114\100\065\117\116\104\111\114\101\100") or _IIlIllIIlI:FindFirstChildWhichIsA("\077\111\100\101\108", true) end
 end
 if not _IIlIllIIll then local _IlIIlllllI, nd = nil, 1e9 for _lllIllIlIl, _IlllllIlll in ipairs(_lIllIlIIII:GetDescendants()) do if _IlllllIlll:IsA("\077\111\100\101\108") and _IlllllIlll.Name:lower():find("\103\117\097\114\100") and _IlllllIlll.PrimaryPart then local _llIllIlIII = (_IlllllIlll.PrimaryPart.Position - _IlllIlIllI).Magnitude if _llIllIlIII < nd and _llIllIlIII < 0x5A then nd = _llIllIlIII; _IlIIlllllI = _IlllllIlll end
 end
 end
 _IIlIllIIll = _IlIIlllllI end
 if _IIlIllIIll then local _lIllllllll = _IIlIllIIll:GetAttribute("\065\108\101\114\116") or _IIlIllIIll:GetAttribute("\065\108\101\114\116\101\100") or _IIlIllIIll:GetAttribute("\073\115\065\108\101\114\116\101\100") or _IIlIllIIll:GetAttribute("\067\104\097\115\105\110\103") local _lllIlIIlll = _IIlIllIIll:GetAttribute("\083\108\101\101\112\105\110\103") or _IIlIllIIll:GetAttribute("\073\115\083\108\101\101\112\105\110\103") or _IIlIllIIll:GetAttribute("\065\115\108\101\101\112") or _IIlIllIIll:GetAttribute("\083\108\101\101\112") local _llIIlIllIl = _IIlIllIIll:GetAttribute("\083\116\097\116\101") if _lllIlIIlll == true then _lllllllIIl = true elseif _lIllllllll == false or _lIllllllll == nil then local _IIIllIIlII = _IIlIllIIll:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") local _llllIlIlII = _IIlIllIIll.PrimaryPart or _IIlIllIIll:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") or _IIlIllIIll:FindFirstChildWhichIsA("\066\097\115\101\080\097\114\116", true) local _lIIllllIII = _IIlIllIIll:FindFirstChild("\069\103\103\080\111\105\110\116", true) if _llllIlIlII and _lIIllllIII then local _IIllllllIl = (_llllIlIlII.Position - _lIIllllIII.Position).Magnitude if _IIllllllIl < 0x7 and ( not _IIIllIIlII or _IIIllIIlII.MoveDirection.Magnitude < 0.12) then _lllllllIIl = true elseif _IIllllllIl < 0xC and os.clock() - _IIllIIIlll > 1.2 and ( not _IIIllIIlII or _IIIllIIlII.MoveDirection.Magnitude < 0.15) then _lllllllIIl = true end
 elseif _llIIlIllIl and tostring(_llIIlIllIl):lower():find("\115\108\101\101\112") then _lllllllIIl = true elseif _lIllllllll == nil and _lllIlIIlll == nil and _llIIlIllIl == nil then if os.clock() - _IIllIIIlll > 1.6 then _lllllllIIl = true end
 elseif _lIllllllll == false then _lllllllIIl = true end
 end
 if not _lllllllIIl then local _llIlIlIllI = _IIlIllIIll:FindFirstChild("\065\108\101\114\116", true) if _llIlIlIllI and _llIlIlIllI:IsA("\066\105\108\108\098\111\097\114\100\071\117\105") and _llIlIlIllI.Enabled == false then _lllllllIIl = true end
 end
 else if os.clock() - _IIllIIIlll > 1.4 then _lllllllIIl = true end
 end
 end
 ) if _lllllllIIl then break end
 task.wait(0.14) end
 task.wait(0.08) end
 task.wait(0.08) pcall( function () if _IIllIlIlll then _IIllIlIlll:InvokeServer({ Uid = _lllIlIIIll.Uid, FirstAreaSlotKey = _lIIIIIIIll }) end
 end
 ) pcall( function () if _IIllIIlIIl and _IIllIIlIIl.CarryFieldEgg then _IIllIIlIIl.CarryFieldEgg(_lllIlIIIll.Uid, _lIIIIIIIll) end
 end
 ) task.wait(0.08) local _IlIIllIIlI = nil for _lllIllIlIl, _llIllIlIII in ipairs(_lIllIlIIII:GetDescendants()) do if _llIllIlIII:IsA("\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116") and _llIllIlIII.Name == "\067\097\114\114\121\065\114\101\097\069\103\103" and _llIllIlIII.Enabled then local _IlIIlllIIl = _llIllIlIII.Parent if _IlIIlllIIl and _IlIIlllIIl:IsA("\065\116\116\097\099\104\109\101\110\116") then _IlIIlllIIl = _IlIIlllIIl.Parent end
 if _IlIIlllIIl then local _IlIlIllIII = (_IlIIlllIIl.Position - (_IlIlIlIlIl() and _IlIlIlIlIl().Position or _IlllIlIllI)).Magnitude if _IlIlIllIII < 0x10 then local _lllllllllI = (_llIllIlIII.ActionText or ""):lower() if not _lllllllllI:find("\115\107\105\112") and not _lllllllllI:find("\114\111\098\117\120") then _IlIIllIIlI = _llIllIlIII break end
 end
 end
 end
 end
 if _IlIIllIIlI then _IlIIllIIlI.HoldDuration = 0x0 pcall( function () fireproximityprompt(_IlIIllIIlI) end
 ) pcall( function () fireproximityprompt(_IlIIllIIlI, 0x0) end
 ) else for _lllIllIlIl, _llIllIlIII in ipairs(_lIllIlIIII:GetDescendants()) do if _llIllIlIII:IsA("\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116") and _llIllIlIII.Name == "\067\097\114\114\121\065\114\101\097\069\103\103" and _llIllIlIII.Enabled then local _IlIIlllIIl = _llIllIlIII.Parent if _IlIIlllIIl and _IlIIlllIIl:IsA("\065\116\116\097\099\104\109\101\110\116") then _IlIIlllIIl = _IlIIlllIIl.Parent end
 if _IlIIlllIIl and (_IlIIlllIIl.Position - (_IlIlIlIlIl() and _IlIlIlIlIl().Position or _IlllIlIllI)).Magnitude < 0x12 then _llIllIlIII.HoldDuration = 0x0 pcall( function () fireproximityprompt(_llIllIlIII) end
 ) task.wait(0.08) if _IIIIlIlIIl() then break end
 end
 end
 end
 end
 local _IIlllIlIII = os.clock() while os.clock() - _IIlllIlIII < 2.2 and not _IIlIIIIIIl.dead do if _IIIIlIlIIl() then _IIIllIllll = true break end
 pcall( function () if _IIllIIlIIl and _IIllIIlIIl.CarryFieldEgg then _IIllIIlIIl.CarryFieldEgg(_lllIlIIIll.Uid, _lIIIIIIIll) end
 end
 ) if _IlIIllIIlI then pcall( function () fireproximityprompt(_IlIIllIIlI) end
 ) end
 task.wait(0.06) end
 if _IIIIlIlIIl() then _IIIllIllll = true end
 if _IIIIlIlIIl() then task.wait(0.12) else task.wait(0.12) for _lllIllIlIl, _llIllIlIII in ipairs(_lIllIlIIII:GetDescendants()) do if _llIllIlIII:IsA("\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116") and _llIllIlIII.Name == "\067\097\114\114\121\065\114\101\097\069\103\103" and _llIllIlIII.Enabled then local _IlIIlllIIl = _llIllIlIII.Parent if _IlIIlllIIl and _IlIIlllIIl:IsA("\065\116\116\097\099\104\109\101\110\116") then _IlIIlllIIl = _IlIIlllIIl.Parent end
 if _IlIIlllIIl and (_IlIIlllIIl.Position - (_IlIlIlIlIl() and _IlIlIlIlIl().Position or _IlllIlIllI)).Magnitude < 0x12 then _llIllIlIII.HoldDuration = 0x0 pcall( function () fireproximityprompt(_llIllIlIII) end
 ) end
 end
 end
 task.wait(0.12) if _IIIIlIlIIl() then _IIIllIllll = true end
 end
 end
 end
 end
 if not _lIlIIllIlI then return _IIIllIllll end
 local _IlllIIlIll = Vector3.new(506.04, 70.4, -387.92) _IllllIIIll(_IlllIIlIll, _IllllIllIl, true) if not _lIlIIllIlI then return _IIIllIllll end
 local _lIlIIIIlll = _llIlIllIII.Character local _lllIllIIII = _lIlIIIIlll and _lIlIIIIlll:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") local _IIIIIIIIlI = _lIlIIIIlll and _lIlIIIIlll:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") if _lllIllIIII then _lllIllIIII.CFrame = CFrame.new(_IlllIIlIll.X, _IlllIIlIll.Y, _IlllIIlIll.Z) _lllIllIIII.AssemblyLinearVelocity = Vector3.zero _lllIllIIII.AssemblyAngularVelocity = Vector3.zero end
 if _IIIIIIIIlI then _IIIIIIIIlI.PlatformStand = false _IIIIIIIIlI.AutoRotate = true pcall( function () _IIIIIIIIlI:ChangeState(Enum.HumanoidStateType.Running) end
 ) end
 return _IIIllIllll or _IIIIlIlIIl() end
 local function _lllllIllII() pcall(_IlllIllllI) local _IIlIlIIIlI = _lIlllllIll(_IIIllllIlI, _llllllllII, _IlIlIllIII, _lIIIlIIIll) if #_IIlIlIIIlI == 0x0 then return false end
 local _lIllllIlll = _IIlIlIIIlI[0x1] return _IlIlIIllII(_lIllllIlll) end
 local function _IlllIllllI() if not _IIllIIlIIl or not _IIllIIlIIl.ReadOwnedEggs then return 0x0 end
 local _llllIIlllI, snapshot = pcall(_IIllIIlIIl.ReadOwnedEggs, _llIlIllIII.UserId) if not _llllIIlllI or not snapshot then return 0x0 end
 local _lllllIIlIl = 0x0 local _lIllIIlllI = snapshot.Records or snapshot if typeof(_lIllIIlllI) == "\116\097\098\108\101" then for _lllIIllIlI, eggData in pairs(_lIllIIlllI) do if typeof(eggData) == "\116\097\098\108\101" then local _llllIIIIII = false if _IIllIIlIIl.IsReadyToHatch then _llllIIIIII = _IIllIIlIIl.IsReadyToHatch(eggData) else _llllIIIIII = eggData.Placement ~= nil end
 if _llllIIIIII then pcall( function () if _IIllIIlIIl.BeginHatch then _IIllIIlIIl.BeginHatch(_lllIIllIlI) end
 task.wait(0.05) if _IIllIIlIIl.FinishHatch then _IIllIIlIIl.FinishHatch(_lllIIllIlI) end
 _lllllIIlIl = _lllllIIlIl + 0x1 end
 ) end
 end
 end
 end
 return _lllllIIlIl end
 local function _lIllIIlIll() if not _lIllIIIllI then return end
 if _IIlIIIIIIl.dead then return end
 if _IlIlllIllI then return end
 if not _IIIIlIlIIl() then _llllIIIIlI = false return end
 if _llllIIIIlI then return end
 _llllIIIIlI = true _IlIlllIllI = true task.spawn( function () local _IIIllIllll = true local _IlllIlIllI = nil local _llllIlIlII = _IlIlIlIlIl() if _llllIlIlII then _IlllIlIllI = _llllIlIlII.Position end
 local _lIIllIlIll = os.clock() local _IIlllllllI = 0x64 local _lIIlIIIlII = _IIlIlllIII() if _lIIlIIIlII then _IIlllllllI = _lIIlIIIlII.Health end
 local _IlIIllIlII = false while os.clock() - _lIIllIlIll < 5.0 and not _IIlIIIIIIl.dead and _lIllIIIllI do if not _IIIIlIlIIl() then _IlIIllIlII = true break end
 local _lllIllIIII = _IIlIlllIII() if _lllIllIIII then local _IllllllIII = _lllIllIIII:GetState() if _lllIllIIII.Health < _IIlllllllI - 1.5 or _IllllllIII == Enum.HumanoidStateType.Physics or _IllllllIII == Enum.HumanoidStateType.Ragdoll or _IllllllIII == Enum.HumanoidStateType.FallingDown then _IlIIllIlII = true local _IlIIIIIlIl = os.clock() while os.clock() - _IlIIIIIlIl < 0.85 and not _IIlIIIIIIl.dead and _lIllIIIllI do if not _IIIIlIlIIl() then break end
 task.wait(0.05) end
 break end
 end
 task.wait(0.05) end
 if not _lIllIIIllI or _IIlIIIIIIl.dead then _IlIlllIllI = false return end
 if not _IlIIllIlII then local _IlllIIlIll = Vector3.new(506.04, 70.4, -387.92) _IllllIIIll(_IlllIIlIll, _IIllIlllll or 0x3E8, true) local _llIIlIllII = _IlIlIlIlIl() if _llIIlIllII then _llIIlIllII.CFrame = CFrame.new(_IlllIIlIll.X, _IlllIIlIll.Y, _IlllIIlIll.Z) _llIIlIllII.AssemblyLinearVelocity = Vector3.zero _llIIlIllII.AssemblyAngularVelocity = Vector3.zero end
 _IlIlllIllI = false return end
 task.wait(0.65) do local _lIlllIllll = os.clock() while os.clock() - _lIlllIllll < 3.2 and not _IIlIIIIIIl.dead and _lIllIIIllI do local _lllIllIIII = _IIlIlllIII() if not _lllIllIIII then break end
 local _IllllllIII = _lllIllIIII:GetState() if _IllllllIII ~= Enum.HumanoidStateType.Physics and _IllllllIII ~= Enum.HumanoidStateType.Ragdoll and _IllllllIII ~= Enum.HumanoidStateType.FallingDown then break end
 pcall( function () _lllIllIIII:ChangeState(Enum.HumanoidStateType.GettingUp) end
 ) task.wait(0.12) end
 task.wait(0.35) end
 if not _lIllIIIllI or _IIlIIIIIIl.dead then _IlIlllIllI = false return end
 if _IlllIlIllI then local _lllIlllllI = _IlIlIlIlIl() if _lllIlllllI and (_lllIlllllI.Position - _IlllIlIllI).Magnitude > 0x6 then _IllllIIIll(Vector3.new(_IlllIlIllI.X, math.max(_IlllIlIllI.Y, 70.0) + 1.2, _IlllIlIllI.Z), _IIllIlllll or 0x3E8, true) task.wait(0.35) end
 end
 if not _lIllIIIllI or _IIlIIIIIIl.dead then _IlIlllIllI = false return end
 local _IIlllIlIII = os.clock() while os.clock() - _IIlllIlIII < 3.0 and not _IIlIIIIIIl.dead and _lIllIIIllI do if _IIIIlIlIIl() then _IIIllIllll = true break end
 local _IlIIIlllII = _IlIlIlIlIl() if _IlIIIlllII then for _lllIllIlIl, _llIllIlIII in ipairs(_lIllIlIIII:GetDescendants()) do if _llIllIlIII:IsA("\080\114\111\120\105\109\105\116\121\080\114\111\109\112\116") and _llIllIlIII.Name == "\067\097\114\114\121\065\114\101\097\069\103\103" and _llIllIlIII.Enabled then local _IlIIlllIIl = _llIllIlIII.Parent if _IlIIlllIIl and _IlIIlllIIl:IsA("\065\116\116\097\099\104\109\101\110\116") then _IlIIlllIIl = _IlIIlllIIl.Parent end
 if _IlIIlllIIl and (_IlIIlllIIl.Position - _IlIIIlllII.Position).Magnitude < 0x12 then local _lllllllllI = (_llIllIlIII.ActionText or ""):lower() if not _lllllllllI:find("\115\107\105\112") and not _lllllllllI:find("\114\111\098\117\120") then _llIllIlIII.HoldDuration = 0x0 pcall( function () fireproximityprompt(_llIllIlIII) end
 ) pcall( function () fireproximityprompt(_llIllIlIII, 0x0) end
 ) end
 end
 end
 end
 end
 task.wait(0.08) end
 if _IIIIlIlIIl() then _IIIllIllll = true end
 if _IIIllIllll or _IIIIlIlIIl() then local _IlllIIlIll = Vector3.new(506.04, 70.4, -387.92) _IllllIIIll(_IlllIIlIll, _IIllIlllll or 0x3E8, true) local _lIlIIIIlll = _llIlIllIII.Character local _lllIllIIII = _lIlIIIIlll and _lIlIIIIlll:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") local _IIIIIIIIlI = _lIlIIIIlll and _lIlIIIIlll:FindFirstChildOfClass("\072\117\109\097\110\111\105\100") if _lllIllIIII then _lllIllIIII.CFrame = CFrame.new(_IlllIIlIll.X, _IlllIIlIll.Y, _IlllIIlIll.Z) _lllIllIIII.AssemblyLinearVelocity = Vector3.zero _lllIllIIII.AssemblyAngularVelocity = Vector3.zero end
 if _IIIIIIIIlI then _IIIIIIIIlI.PlatformStand = false _IIIIIIIIlI.AutoRotate = true pcall( function () _IIIIIIIIlI:ChangeState(Enum.HumanoidStateType.Running) end
 ) end
 end
 _IlIlllIllI = false end
 ) end
 local function _IIlIlIlIII() local _llIIIIlIIl = _IlllIIIIII("\082\069\047\072\111\109\101\115\116\101\097\100\047\065\115\107\078\101\097\114\098\121\080\117\114\099\104\097\115\101") if _llIIIIlIIl then pcall( function () _llIIIIlIIl:FireServer() end
 ) end
 local _llIIIIlIIl = _IlllIIIIII("\082\069\047\072\111\109\101\115\116\101\097\100\047\065\115\107\066\097\115\101\084\105\101\114\082\097\105\115\101") if _llIIIIlIIl then pcall( function () _llIIIIlIIl:FireServer() end
 ) end
 end
 local function _IIlllllIIl() local _IllIIlIllI = _IlllIIIIII("\082\070\047\084\114\101\097\100\109\105\108\108\047\065\115\107\084\105\101\114\082\097\105\115\101") if _IllIIlIllI then pcall( function () _IllIIlIllI:InvokeServer() end
 ) end
 end
 local function _IlIIIlIIlI() local _IllIIlIllI = _IlllIIIIII("\082\070\047\072\097\117\108\047\087\101\097\114\066\101\115\116") or _IlllIIIIII("\082\070\047\080\101\110\082\111\115\116\101\114\047\067\111\110\102\105\114\109\069\113\117\105\112\066\101\115\116\066\097\100\103\101") if _IllIIlIllI then pcall( function () _IllIIlIllI:InvokeServer() end
 ) end
 end
 _lIlIIllIll.Data = nil _lIlIIllIll.MasteryData = nil function _lIlIIllIll.EnsureData() if _lIlIIllIll._dataTried then return end
 _lIlIIllIll._dataTried = true pcall( function () _lIlIIllIll.Data = require(_lIlIIIIIIl.Data.BossEvent) end
 ) pcall( function () _lIlIIllIll.MasteryData = require(_lIlIIIIIIl.Data.BossMastery) end
 ) end
 _lIlIIllIll.MilestoneFallback = { "\077\097\115\116\101\114\121\051", "\077\097\115\116\101\114\121\053", "\077\097\115\116\101\114\121\049\048", "\077\097\115\116\101\114\121\049\053", "\077\097\115\116\101\114\121\050\048", "\077\097\115\116\101\114\121\051\048" } function _lIlIIllIll.Snapshot() local _IllIIlIllI = _IlllIIIIII("\082\070\047\066\111\115\115\069\118\101\110\116\047\065\115\107\083\110\097\112\115\104\111\116") if not _IllIIlIllI then return nil end
 local _llllIIlllI, res = pcall( function () return _IllIIlIllI:InvokeServer() end
 ) if _llllIIlllI and type(res) == "\116\097\098\108\101" then return res end
 return nil end
 function _lIlIIllIll.IsOpen() _lIlIIllIll.EnsureData() local _lllIIIlIII = _lIlIIllIll.Snapshot() if _lllIIIlIII then if _lllIIIlIII.Open ~= nil then return _lllIIIlIII.Open == true end
 if _lllIIIlIII.BossHealth and _lllIIIlIII.BossMaxHealth then return (tonumber(_lllIIIlIII.BossHealth) or 0x0) > 0x0 end
 end
 if _lIlIIllIll.Data and type(_lIlIIllIll.Data.SecondsUntilNextOpen) == "\102\117\110\099\116\105\111\110" then local _llllIIlllI, secs = pcall( function () return _lIlIIllIll.Data.SecondsUntilNextOpen() end
 ) if _llllIIlllI and tonumber(secs) then return tonumber(secs) <= 0x0 end
 end
 return false end
 function _lIlIIllIll.SecondsUntilOpen() _lIlIIllIll.EnsureData() if _lIlIIllIll.Data and type(_lIlIIllIll.Data.SecondsUntilNextOpen) == "\102\117\110\099\116\105\111\110" then local _llllIIlllI, secs = pcall( function () return _lIlIIllIll.Data.SecondsUntilNextOpen() end
 ) if _llllIIlllI and tonumber(secs) then return tonumber(secs) end
 end
 return nil end
 function _lIlIIllIll.Join() local _IllIIlIllI = _IlllIIIIII("\082\070\047\066\111\115\115\069\118\101\110\116\047\065\115\107\069\110\116\101\114") if not _IllIIlIllI then return false end
 local _llllIIlllI, res = pcall( function () return _IllIIlIllI:InvokeServer() end
 ) return _llllIIlllI and res ~= false and res ~= nil end
 function _lIlIIllIll.ClaimMastery() _lIlIIllIll.EnsureData() local _IllIIlIllI = _IlllIIIIII("\082\070\047\066\111\115\115\077\097\115\116\101\114\121\047\065\115\107\067\108\097\105\109\077\105\108\101\115\116\111\110\101") if not _IllIIlIllI then return 0x0 end
 local _IlllIlIIII = {} if _lIlIIllIll.MasteryData and type(_lIlIIllIll.MasteryData.Milestones) == "\116\097\098\108\101" then for _lllIllIlIl, _IlllllIlll in pairs(_lIlIIllIll.MasteryData.Milestones) do if type(_IlllllIlll) == "\116\097\098\108\101" and type(_IlllllIlll.Id) == "\115\116\114\105\110\103" and not _lIlIIllIll.claimed[_IlllllIlll.Id] then table.insert(_IlllIlIIII, _IlllllIlll.Id) end
 end
 end
 if #_IlllIlIIII == 0x0 then for _lllIllIlIl, id in ipairs(_lIlIIllIll.MilestoneFallback) do if not _lIlIIllIll.claimed[id] then table.insert(_IlllIlIIII, id) end
 end
 end
 local _IllllIllIl = 0x0 for _lllIllIlIl, id in ipairs(_IlllIlIIII) do local _llllIIlllI, res = pcall( function () return _IllIIlIllI:InvokeServer(id) end
 ) if _llllIIlllI and res ~= false and res ~= nil then _lIlIIllIll.claimed[id] = true _IllllIllIl = _IllllIllIl + 0x1 end
 end
 return _IllllIllIl end
 _lIlIIllIll.autoFight = false _lIlIIllIll.hazardImmune = false _lIlIIllIll.arenaApproach = "\067\114\121\115\116\097\108\115\032\070\105\114\115\116" _lIlIIllIll.glideSpeed = 0x104 _lIlIIllIll.engageDistance = 0x7 _lIlIIllIll.swingInterval = 0.15 _lIlIIllIll._target = nil _lIlIIllIll._targetPart = nil _lIlIIllIll._targetAt = 0x0 _lIlIIllIll._stepAt = 0x0 _lIlIIllIll._swingAt = 0x0 _lIlIIllIll._batAt = 0x0 function _lIlIIllIll.IsInArena() return _llIlIllIII:GetAttribute("\073\110\066\111\115\115\065\114\101\110\097") == true end
 function _lIlIIllIll.FindBat() local _lIlIIIIlll = _llIlIllIII.Character if not _lIlIIIIlll then return nil end
 local _lIlIIIIIIl = _lIlIIIIlll:FindFirstChildWhichIsA("\084\111\111\108") if _lIlIIIIIIl and _lIlIIIIIIl:GetAttribute("\073\115\066\097\116") == true then return _lIlIIIIIIl end
 local _IIIllllIII = _llIlIllIII:FindFirstChild("\066\097\099\107\112\097\099\107") if _IIIllllIII then for _lllIllIlIl, _IIIIllIlll in ipairs(_IIIllllIII:GetChildren()) do if _IIIIllIlll:IsA("\084\111\111\108") and _IIIIllIlll:GetAttribute("\073\115\066\097\116") == true then _IIIIllIlll.Parent = _lIlIIIIlll return _IIIIllIlll end
 end
 end
 local _lIlIIlIlIl = _IlllIIIIII("\082\070\047\067\111\100\101\120\047\065\115\107\087\101\097\114\070\105\101\108\100\066\097\116") if _lIlIIlIlIl then pcall( function () _lIlIIlIlIl:InvokeServer() end
 ) end
 task.wait(0.25) if _IIIllllIII then for _lllIllIlIl, _IIIIllIlll in ipairs(_IIIllllIII:GetChildren()) do if _IIIIllIlll:IsA("\084\111\111\108") and _IIIIllIlll:GetAttribute("\073\115\066\097\116") == true then _IIIIllIlll.Parent = _lIlIIIIlll return _IIIIllIlll end
 end
 end
 return nil end
 function _lIlIIllIll.FindTarget() local _IlIlIlIIII = _lIllIlIIII:FindFirstChild("\066\111\115\115\065\114\101\110\097") if not _IlIlIlIIII then return nil end
 local _llIlIlIlIl = _IlIlIlIlIl() if not _llIlIlIlIl then return nil end
 local _IIIIIIlIll, bestDist = nil, math.huge local _IlllIlllll = _IlIlIlIIII:FindFirstChild("\067\114\121\115\116\097\108\084\111\119\101\114\115") if _IlllIlllll then for _lllIllIlIl, tower in ipairs(_IlllIlllll:GetChildren()) do local _IllIlIIIII = tower:FindFirstChild("\072\105\116\098\111\120", true) if _IllIlIIIII and _IllIlIIIII:IsA("\066\097\115\101\080\097\114\116") then local _lIIlIIlIII = tonumber(_IllIlIIIII:GetAttribute("\072\101\097\108\116\104")) if _lIIlIIlIII == nil or _lIIlIIlIII > 0x0 then local _llIllIlIII = (_llIlIlIlIl.Position - _IllIlIIIII.Position).Magnitude if _llIllIlIII < bestDist then _IIIIIIlIll, bestDist = _IllIlIIIII, _llIllIlIII end
 end
 end
 end
 end
 if _IIIIIIlIll and _lIlIIllIll.arenaApproach == "\067\114\121\115\116\097\108\115\032\070\105\114\115\116" then return _IIIIIIlIll, "\067\114\121\115\116\097\108" end
 local _IlIlIIllIl = _IlIlIlIIII:FindFirstChild("\066\111\115\115") if _IlIlIIllIl then local _IIlIllIIIl = _IlIlIIllIl:FindFirstChild("\085\112\112\101\114\072\097\110\100\049\046\082", true) or _IlIlIIllIl.PrimaryPart if _IIlIllIIIl and _IIlIllIIIl:IsA("\066\097\115\101\080\097\114\116") then local _llIllIlIII = (_llIlIlIlIl.Position - _IIlIllIIIl.Position).Magnitude if _llIllIlIII < bestDist then _IIIIIIlIll, bestDist = _IIlIllIIIl, _llIllIlIII end
 end
 end
 return _IIIIIIlIll, (_IIIIIIlIll and _IIIIIIlIll:IsDescendantOf(_IlllIlllll or _IlIlIlIIII) and "\066\111\115\115" or nil) end
 function _lIlIIllIll.GlideStep(_lIllllIlll) local _llIlIlIlIl = _IlIlIlIlIl() if not _llIlIlIlIl or not _lIllllIlll then return false end
 local _IIlIIIlllI = _llIlIlIlIl.Position - _lIllllIlll.Position _IIlIIIlllI = Vector3.new(_IIlIIIlllI.X, 0x0, _IIlIIIlllI.Z) if _IIlIIIlllI.Magnitude < 0.5 then _IIlIIIlllI = Vector3.new(0x0, 0x0, 0x1) end
 local _llIlllIIII = _lIllllIlll.Position + _IIlIIIlllI.Unit * 0x5 local _IllIllIlII = _llIlllIIII - _llIlIlIlIl.Position local _IIIIlllIll = _IllIllIlII.Magnitude if _IIIIlllIll < 1.0 then _llIlIlIlIl.AssemblyLinearVelocity = Vector3.zero _llIlIlIlIl.AssemblyAngularVelocity = Vector3.zero return true end
 local _lIIllIllIl = os.clock() local _llllIlIllI = math.clamp(_lIIllIllIl - (_lIlIIllIll._stepAt or _lIIllIllIl), 0.001, 0.1) _lIlIIllIll._stepAt = _lIIllIllIl local _IllllIllIl = math.clamp(tonumber(_lIlIIllIll.glideSpeed) or 0x104, 0x3C, 0x1F4) local _IIlllIllIl = _IllIllIlII.Unit local _IlIlllIllI = math.min(_IllllIllIl * _llllIlIllI, _IIIIlllIll) local _lllllIIIll = _llIlIlIlIl.Position + _IIlllIllIl * _IlIlllIllI local _lIIIIIllIl = Vector3.new(_IIlllIllIl.X, 0x0, _IIlllIllIl.Z) if _lIIIIIllIl.Magnitude < 0.01 then _lIIIIIllIl = _llIlIlIlIl.CFrame.LookVector end
 _llIlIlIlIl.CFrame = CFrame.lookAt(_lllllIIIll, _lllllIIIll + _lIIIIIllIl.Unit) _llIlIlIlIl.AssemblyLinearVelocity = Vector3.zero _llIlIlIlIl.AssemblyAngularVelocity = Vector3.zero return false end
 function _lIlIIllIll.EnsureBat() local _lIlIIIIlll = _llIlIllIII.Character if not _lIlIIIIlll then return nil end
 local _lIlIIIIIIl = _lIlIIIIlll:FindFirstChildWhichIsA("\084\111\111\108") if _lIlIIIIIIl and _lIlIIIIIIl:GetAttribute("\073\115\066\097\116") == true then return _lIlIIIIIIl end
 local _lIIllIllIl = os.clock() if _lIIllIllIl - (_lIlIIllIll._batAt or 0x0) < 1.5 then return nil end
 _lIlIIllIll._batAt = _lIIllIllIl return _lIlIIllIll.FindBat() end
 function _lIlIIllIll.CurrentTarget() local _lIIllIllIl = os.clock() local _lIlIIIIIIl = _lIlIIllIll._targetPart if _lIlIIIIIIl and _lIlIIIIIIl.Parent and (_lIIllIllIl - (_lIlIIllIll._targetAt or 0x0)) < 0.35 then local _lIIlIIlIII = tonumber(_lIlIIIIIIl:GetAttribute("\072\101\097\108\116\104")) if _lIIlIIlIII == nil or _lIIlIIlIII > 0x0 then return _lIlIIIIIIl, _lIlIIllIll._target end
 end
 local _IlIllIllII, kind = _lIlIIllIll.FindTarget() _lIlIIllIll._targetPart, _lIlIIllIll._target, _lIlIIllIll._targetAt = _IlIllIllII, kind, _lIIllIllIl return _IlIllIllII, kind end
 function _lIlIIllIll.Fight() if not _lIlIIllIll.IsInArena() then return false end
 local _llIlIlIlIl = _IlIlIlIlIl() if not _llIlIlIlIl then return false end
 local _lIllllIlll, kind = _lIlIIllIll.CurrentTarget() if not _lIllllIlll then return false end
 local _IlIlIllIII = (_llIlIlIlIl.Position - _lIllllIlll.Position).Magnitude if _IlIlIllIII > _lIlIIllIll.engageDistance then _lIlIIllIll.GlideStep(_lIllllIlll) _lIlIIllIll._target = kind return true end
 local _lIIllIllIl = os.clock() if _lIIllIllIl - (_lIlIIllIll._swingAt or 0x0) < _lIlIIllIll.swingInterval then return true end
 _lIlIIllIll._swingAt = _lIIllIllIl local _llIIIIlllI = _lIlIIllIll.EnsureBat() if _llIIIIlllI then pcall( function () _llIIIIlllI:Activate() end
 ) end
 local _llIlIlIlII = _IlllIIIIII("\082\069\047\066\097\116\083\119\105\110\103\047\084\114\105\103\103\101\114") if _llIlIlIlII then pcall( function () _llIlIlIlII:FireServer() end
 ) end
 return true end
 _lIlIIllIll._hazardRemotes = {} _lIlIIllIll.hazardHook = false _lIlIIllIll.hazardHookTried = false do local _IlIlIllIll = _IlllIIIIII("\082\069\047\066\111\115\115\069\118\101\110\116\047\072\097\122\097\114\100\072\105\116") local _lllIIlIIll = _IlllIIIIII("\082\069\047\066\111\115\115\069\118\101\110\116\047\066\108\097\099\107\072\111\108\101\072\105\116") for _lllIllIlIl, remote in ipairs({ _IlIlIllIll, _lllIIlIIll }) do if type(remote) == "\117\115\101\114\100\097\116\097" and remote:IsA("\082\101\109\111\116\101\069\118\101\110\116") then _lIlIIllIll._hazardRemotes[remote] = true end
 end
 end
 function _lIlIIllIll.InstallHazardHook() if _lIlIIllIll.hazardHook then return true end
 if _lIlIIllIll.hazardHookTried then return false end
 _lIlIIllIll.hazardHookTried = true local _llIllIlllI = false pcall( function () _llIllIlllI = UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled end
 ) if _llIllIlllI then return false end
 if not _IIIlIlIlll then return false end
 local _IlIlIllIll = _IlllIIIIII("\082\069\047\066\111\115\115\069\118\101\110\116\047\072\097\122\097\114\100\072\105\116") if type(_IlIlIllIll) ~= "\117\115\101\114\100\097\116\097" or not _IlIlIllIll:IsA("\082\101\109\111\116\101\069\118\101\110\116") then return false end
 local _IIllIIllIl = _IlIlIllIll.FireServer if type(_IIllIIllIl) ~= "\102\117\110\099\116\105\111\110" then return false end
 local _llllIIlllI = pcall( function () _IIIlIlIlll(_IIllIIllIl, function (self, ...) if _lIlIIllIll.hazardImmune and _lIlIIllIll._hazardRemotes[self] then return end
 return _IIllIIllIl(self, ...) end
 ) end
 ) _lIlIIllIll.hazardHook = _llllIIlllI return _llllIIlllI end
 local function _llllIlIlII() local _IllIIlIllI = _IlllIIIIII("\082\070\047\069\103\103\087\111\114\108\100\047\065\115\107\070\105\101\108\100\069\103\103\068\114\111\112") if _IllIIlIllI then pcall( function () _IllIIlIllI:InvokeServer() end
 ) end
 if _IIllIIlIIl and _IIllIIlIIl.DropFieldEgg then pcall(_IIllIIlIIl.DropFieldEgg) end
 end
 local function _lllIIIlllI() local _IllIIlIllI = _IlllIIIIII("\082\070\047\084\114\097\105\108\119\101\097\114\047\065\115\107\080\117\114\099\104\097\115\101") local _IIlIlIlIIl = _lIlIIIIIIl:FindFirstChild("\068\097\116\097") and _lIlIIIIIIl.Data:FindFirstChild("\084\114\097\105\108\115") and require(_lIlIIIIIIl.Data.Trails) local _IllllIlllI = nil pcall( function () _IllllIlllI = _IllIllIIlI and _IllIllIIlI.Get and _IllIllIIlI.Get() end
 ) if not _IllIIlIllI or not _IIlIlIlIIl or not _IllllIlllI then return end
 local _lIIlllllII = tonumber(_IllllIlllI.Money) or 0x0 local _IlIlIlIIll = _IllllIlllI.TrailInventory or {} for _lllIllIlIl, t in pairs(_IIlIlIlIIl.Directory or _IIlIlIlIIl) do if type(t) == "\116\097\098\108\101" and t._id and not _IlIlIlIIll[t._id] then local _IlIllIllll = tonumber(t.Price) or math.huge if _lIIlllllII >= _IlIllIllll then pcall( function () _IllIIlIllI:InvokeServer(t._id) end
 ) task.wait(0.25) end
 end
 end
 end
 local function _lIIlIIlIIl(enabled) _IIIlIllIlI = enabled if enabled then pcall( function () local _IIIIllIllI = _IlllIIIIII("\082\069\047\082\105\103\083\121\110\099\047\082\101\102\114\101\115\104") if _IIIIllIllI and getconnections then for _lllIllIlIl, conn in ipairs(getconnections(_IIIIllIllI.OnClientEvent)) do pcall( function () conn:Disconnect() end
 ) end
 end
 end
 ) end
 end
 pcall( function () if _IIIIIlllIl then _lIIIlIIlll() end
 end
 ) pcall( function () if _IIIlIllIlI then _lIIlIIlIIl(true) end
 end
 ) local function _IlIIlIIlll() local _IlIIIllllI = _IlllIIIIII("\082\069\047\080\101\116\083\097\116\099\104\101\108\047\083\101\108\108\080\101\116") if not _IlIIIllllI or not _IllIllIIlI then return end
 local _IllllIlllI = nil pcall( function () _IllllIlllI = _IllIllIIlI.Get and _IllIllIIlI.Get() end
 ) local _IlIlIlIIll = _IllllIlllI and _IllllIlllI.Inventory if type(_IlIlIlIIll) ~= "\116\097\098\108\101" then return end
 for _lllIIllIlI, petData in pairs(_IlIlIlIIll) do if type(petData) == "\116\097\098\108\101" and not petData.Locked then local _lIlIlIllll = petData.Rarity or "\067\111\109\109\111\110" if _IlllIllIll(_lIlIlIllll, _IIlIllIlIl(_IIlllIIIII)) then pcall( function () _IlIIIllllI:FireServer(_lllIIllIlI) end
 ) task.wait(0.08) end
 end
 end
 end
 local function _IIlllIllIl() if not _IllIllIIlI then return end
 local _IllllIlllI = nil pcall( function () _IllllIlllI = _IllIllIIlI.Get and _IllIllIIlI.Get() end
 ) if not _IllllIlllI then return end
 local _IlIlIlIIll = _IllllIlllI.EggInventory if type(_IlIlIlIIll) ~= "\116\097\098\108\101" then return end
 local _lIlIIlIlIl = _IlllIIIIII("\082\070\047\069\103\103\087\111\114\108\100\047\065\115\107\087\101\097\114\084\111\111\108") local _IIIlIIllII = _IlllIIIIII("\082\069\047\080\101\116\083\097\116\099\104\101\108\047\083\101\108\108\080\101\116") if not _lIlIIlIlIl or not _IIIlIIllII then return end
 for _lllIIllIlI, eggData in pairs(_IlIlIlIIll) do if type(eggData) == "\116\097\098\108\101" and not eggData.Placement and not eggData.Locked then local _lIlIlIllll = _lIllIlllll(eggData) if _IlllIllIll(_lIlIlIllll, _IIlIllIlIl(_lllIIIIIIl)) then pcall( function () _lIlIIlIlIl:InvokeServer(_lllIIllIlI) end
 ) pcall( function () _IIIlIIllII:FireServer({ _lllIIllIlI }) end
 ) task.wait(_llIlIllIlI) end
 end
 end
 end
 local function _lIIlIIIllI() local _lllllIIlIl = 0x0 local function _IIIllllIII(container) if not container then return end
 for _lllIllIlIl, child in ipairs(container:GetChildren()) do if child:IsA("\077\111\100\101\108") or child:IsA("\066\097\115\101\080\097\114\116") then pcall( function () child:Destroy() _lllllIIlIl = _lllllIIlIl + 0x1 end
 ) end
 end
 end
 _IIIllllIII(_lIllIlIIII:FindFirstChild("\080\101\116\115")) _IIIllllIII(_lIllIlIIII:FindFirstChild("\082\101\110\100\101\114\101\100\080\101\116\115")) return _lllllIIlIl end
 local function _llllIlIIII() pcall( function () local _llIlIIIllI = _IlllIIIIII("\082\070\047\065\119\097\121\069\097\114\110\105\110\103\115\047\065\115\107\067\111\108\108\101\099\116") if _llIlIIIllI then _llIlIIIllI:InvokeServer() end
 end
 ) pcall( function () local _lllIIIIlll = _IlllIIIIII("\082\070\047\067\111\100\101\120\047\065\115\107\082\101\100\101\101\109\065\108\108") if _lllIIIIlll then _lllIIIIlll:InvokeServer() end
 end
 ) pcall( function () local _IIlIIIlllI = _IlllIIIIII("\082\070\047\071\114\111\117\112\080\101\114\107\047\082\101\100\101\101\109\080\101\114\107") if _IIlIIIlllI then _IIlIIIlllI:InvokeServer() end
 end
 ) pcall(_lIlIIllIll.ClaimMastery) end
 task.spawn( function () while not _IIlIIIIIIl.dead do if _lIlIIllIlI and not _IIllllllII then pcall(_lllllIllII) if not _lIlIIllIlI then task.wait(0.1) else task.wait(_lIIIllIIll) end
 else task.wait(0.1) end
 end
 end
 ) task.spawn( function () while not _IIlIIIIIIl.dead do if _lIllIIIllI then pcall(_lIllIIlIll) end
 task.wait(0.2) end
 end
 ) task.spawn( function () while not _IIlIIIIIIl.dead do if _IIllllIlll then pcall(_IlllIllllI) end
 if _lIIIIlIlII then pcall(_IIlIIlIIll) end
 task.wait(_llllIlllll) end
 end
 ) task.spawn( function () while not _IIlIIIIIIl.dead do if _lIIIlIlIlI then pcall(_IIlIlIlIII) end
 if _lIIIllllIl then pcall(_IIlllllIIl) end
 if _lIIIlIlIlI then pcall(_IlIIIlIIlI) end
 if _IlllIIIllI then pcall(_llllIlIIII) end
 if _lIlIIllIll.autoMastery then pcall(_lIlIIllIll.ClaimMastery) end
 if _IlIlllIlIl then pcall(_IlIIlIIlll) end
 if _IIllIlIIll then pcall(_IIlllIllIl) end
 task.wait(2.5) end
 end
 ) task.spawn( function () while not _IIlIIIIIIl.dead do if _lIlIIllIll.autoJoin or _lIlIIllIll.autoFight then if _lIlIIllIll.IsInArena() then if _lIlIIllIll.autoFight then pcall(_lIlIIllIll.Fight) end
 RunService.Heartbeat:Wait() else local _llllIIlllI, open = pcall(_lIlIIllIll.IsOpen) _lIlIIllIll.arenaReady = (_llllIIlllI and open == true) if _lIlIIllIll.arenaReady then pcall(_lIlIIllIll.Join) end
 task.wait(0x2) end
 else task.wait(0x1) end
 end
 end
 ) task.spawn( function () local _lllIlIlIlI = _IlllIIIIII("\082\069\047\066\097\116\083\119\105\110\103\047\084\114\105\103\103\101\114") while not _IIlIIIIIIl.dead do if _IIlIIIIlIl and _lllIlIlIlI then local _llllIlIlII = _IlIlIlIlIl() if _llllIlIlII then local _lIlllIIlIl = false for _lllIllIlIl, _IlIIlllIIl in ipairs(Players:GetPlayers()) do if _IlIIlllIIl ~= _llIlIllIII and _IlIIlllIIl.Character then local _IIllllIIII = _IlIIlllIIl.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if _IIllllIIII and (_IIllllIIII.Position - _llllIlIlII.Position).Magnitude <= _lIIIlIIIlI then _lIlllIIlIl = true break end
 end
 end
 if _lIlllIIlIl then pcall( function () _lllIlIlIlI:FireServer() end
 ) end
 end
 end
 task.wait(_lIllllIIlI) end
 end
 ) task.spawn( function () local _IIllIlIIII = _lIllIlIIII:FindFirstChild("\095\095\068\069\066\082\073\083") if _IIllIlIIII then _IIllIIIIll(_IIllIlIIII.ChildAdded:Connect( function (child) if _IIIIIlllIl and child.Name == "\080\108\097\121\101\114\084\114\097\112" then task.wait(0.05) if child:GetAttribute("\079\119\110\101\114") ~= _llIlIllIII.Name then if child:IsA("\066\097\115\101\080\097\114\116") then child.CanTouch = false end
 for _lllIllIlIl, _IIIIllIlll in ipairs(child:GetChildren()) do if _IIIIllIlll:IsA("\066\097\115\101\080\097\114\116") then _IIIIllIlll.CanTouch = false end
 end
 end
 end
 end
 )) end
 while not _IIlIIIIIIl.dead do if _IIIIIlllIl or _lIlIIllIlI then pcall(_lIIIlIIlll) end
 task.wait(1.5) end
 end
 ) local _llIlIllllI = { enabled = false, _IIlIlIIIlI = true, traps = false, players = false, guards = false, rareEggsOnly = false, showPetIcons = true, showMutations = true, maxDistance = 0x320, eggColor = Color3.fromRGB(0xFF, 0xC8, 0x32), rareEggColor = Color3.fromRGB(0xFF, 0x3C, 0xDC), trapColor = Color3.fromRGB(0xFF, 0x3C, 0x3C), playerColor = Color3.fromRGB(0x64, 0xDC, 0x64), guardColor = Color3.fromRGB(0xFF, 0x3C, 0x3C), } local _IIlIIIIlll = type(Drawing) == "\116\097\098\108\101" and type(Drawing.new) == "\102\117\110\099\116\105\111\110" local _lIllIlIIll = {} local _lllIIIlIIl = {} local _IIlllIIlII = nil local function _lllIllllII() if _IIlllIIlII and _IIlllIIlII.Parent then return _IIlllIIlII end
 local _IlIIlllIIl = nil pcall( function () _IlIIlllIIl = (gethui and gethui()) end
 ) if not _IlIIlllIIl then pcall( function () _IlIIlllIIl = game:GetService("\067\111\114\101\071\117\105") end
 ) end
 if not _IlIIlllIIl then _IlIIlllIIl = _llIlIllIII:FindFirstChild("\080\108\097\121\101\114\071\117\105") or _lIllIlIIII end
 pcall( function () for _lllIllIlIl, _IIIIllIlll in ipairs(_IlIIlllIIl:GetChildren()) do if _IIIIllIlll:IsA("\070\111\108\100\101\114") and _IIIIllIlll.Name == "\083\065\069\095\069\115\112\095\072\111\108\100\101\114" then _IIIIllIlll:Destroy() end
 end
 end
 ) _IIlllIIlII = Instance.new("\070\111\108\100\101\114") _IIlllIIlII.Name = "\083\065\069\095\069\115\112\095\072\111\108\100\101\114" pcall( function () _IIlllIIlII.Parent = _IlIIlllIIl end
 ) return _IIlllIIlII end
 local function _lIIIlIllll(key, _llllIlIIlI, icon, _lIlllllIll, mutColor) local _llIIllIIll = _lllIIIlIIl[key] if not _llIIllIIll or not _llIIllIIll.gui or not _llIIllIIll.gui.Parent then local _llIIIIlIlI = _lllIllllII() local _IlIllIllII = Instance.new("\080\097\114\116") _IlIllIllII.Name = "\069\115\112\065\110\099\104\111\114" _IlIllIllII.Size = Vector3.new(0x1, 0x1, 0x1) _IlIllIllII.Transparency = 0x1 _IlIllIllII.Anchored = true _IlIllIllII.CanCollide = false _IlIllIllII.CanQuery = false _IlIllIllII.CanTouch = false _IlIllIllII.CFrame = CFrame.new(_llllIlIIlI) _IlIllIllII.Parent = _llIIIIlIlI local _IlIlllllII = Instance.new("\066\105\108\108\098\111\097\114\100\071\117\105") _IlIlllllII.Name = "\069\103\103\073\099\111\110\066\105\108\108\098\111\097\114\100" _IlIlllllII.Adornee = _IlIllIllII _IlIlllllII.Size = UDim2.fromOffset(0x50, 0x3C) _IlIlllllII.StudsOffset = Vector3.new(-2.2, 1.8, 0x0) _IlIlllllII.AlwaysOnTop = true _IlIlllllII.ZIndexBehavior = Enum.ZIndexBehavior.Sibling _IlIlllllII.Parent = _IlIllIllII local _lllIlIllll = Instance.new("\085\073\076\105\115\116\076\097\121\111\117\116") _lllIlIllll.FillDirection = Enum.FillDirection.Vertical _lllIlIllll.HorizontalAlignment = Enum.HorizontalAlignment.Center _lllIlIllll.VerticalAlignment = Enum.VerticalAlignment.Center _lllIlIllll.SortOrder = Enum.SortOrder.LayoutOrder _lllIlIllll.Padding = UDim.new(0x0, 0x1) _lllIlIllll.Parent = _IlIlllllII local _IllIlIllII = Instance.new("\073\109\097\103\101\076\097\098\101\108") _IllIlIllII.Name = "\080\101\116\073\109\097\103\101" _IllIlIllII.Size = UDim2.fromOffset(0x28, 0x28) _IllIlIllII.BackgroundTransparency = 0x1 _IllIlIllII.ScaleType = Enum.ScaleType.Fit _IllIlIllII.Image = icon or "" _IllIlIllII.LayoutOrder = 0x1 _IllIlIllII.Parent = _IlIlllllII local _IIlIlllIIl = Instance.new("\084\101\120\116\076\097\098\101\108") _IIlIlllIIl.Name = "\077\117\116\097\116\105\111\110\084\101\120\116" _IIlIlllIIl.Size = UDim2.fromOffset(0x50, 0xE) _IIlIlllIIl.BackgroundTransparency = 0x1 _IIlIlllIIl.Text = _lIlllllIll or "" _IIlIlllIIl.TextColor3 = mutColor or Color3.fromRGB(0xFF, 0x64, 0xDC) _IIlIlllIIl.TextStrokeTransparency = 0x0 _IIlIlllIIl.TextStrokeColor3 = Color3.fromRGB(0x0, 0x0, 0x0) _IIlIlllIIl.Font = Enum.Font.GothamBold _IIlIlllIIl.TextSize = 0xB _IIlIlllIIl.TextScaled = false _IIlIlllIIl.LayoutOrder = 0x2 _IIlIlllIIl.Visible = (_lIlllllIll ~= nil and _lIlllllIll ~= "") _IIlIlllIIl.Parent = _IlIlllllII _llIIllIIll = { _IlIllIllII = _IlIllIllII, _IlIlllllII = _IlIlllllII, _IllIlIllII = _IllIlIllII, _IIlIlllIIl = _IIlIlllIIl } _lllIIIlIIl[key] = _llIIllIIll else _llIIllIIll.part.CFrame = CFrame.new(_llllIlIIlI) _llIIllIIll.img.Image = icon or "" _llIIllIIll.gui.Enabled = (icon ~= nil and icon ~= "") if _llIIllIIll.mutLabel then _llIIllIIll.mutLabel.Text = _lIlllllIll or "" _llIIllIIll.mutLabel.TextColor3 = mutColor or Color3.fromRGB(0xFF, 0x64, 0xDC) _llIIllIIll.mutLabel.Visible = (_lIlllllIll ~= nil and _lIlllllIll ~= "") end
 end
 return _llIIllIIll end
 local function _llllIIlIll() if not _IIlIIIIlll then return {} end
 local _llIIIIIlll = {} _llIIIIIlll.name = _IIlIllIIII(Drawing.new("\084\101\120\116")) _llIIIIIlll.name.Size = 0xD; _llIIIIIlll.name.Center = true; _llIIIIIlll.name.Outline = true; _llIIIIIlll.name.Visible = false _llIIIIIlll.dist = _IIlIllIIII(Drawing.new("\084\101\120\116")) _llIIIIIlll.dist.Size = 0xB; _llIIIIIlll.dist.Center = true; _llIIIIIlll.dist.Outline = true; _llIIIIIlll.dist.Visible = false _llIIIIIlll.box = _IIlIllIIII(Drawing.new("\083\113\117\097\114\101")) _llIIIIIlll.box.Thickness = 1.5; _llIIIIIlll.box.Filled = false; _llIIIIIlll.box.Visible = false return _llIIIIIlll end
 _IIllIIIIll(RunService.RenderStepped:Connect( function () if _IIlIIIIIIl.dead or not _llIlIllllI.enabled then for _lllIllIlIl, _llIIlllIIl in pairs(_lIllIlIIll) do if _llIIlllIIl.name then _llIIlllIIl.name.Visible = false end
 if _llIIlllIIl.dist then _llIIlllIIl.dist.Visible = false end
 if _llIIlllIIl.box then _llIIlllIIl.box.Visible = false end
 end
 for _lllIllIlIl, _llIIllIIll in pairs(_lllIIIlIIl) do if _llIIllIIll.gui then _llIIllIIll.gui.Enabled = false end
 end
 return end
 local _llllIlIlII = _IlIlIlIlIl() local _llIlIIlllI = _llllIlIlII and _llllIlIlII.Position or Vector3.zero local _IIlIIlIllI = {} local _IIIIlllIII = {} if _llIlIllllI.eggs and _IIllIIlIIl and _IIllIIlIIl.ReadFieldEggs then local _llllIIlllI, _lllIIIlIII = pcall(_IIllIIlIIl.ReadFieldEggs) if _llllIIlllI and _lllIIIlIII and _lllIIIlIII.Records then for _lllIllIlIl, egg in ipairs(_lllIIIlIII.Records) do if egg.State == "\083\108\111\116" and egg.BoundsCFrame then local _llllIlIIlI = egg.BoundsCFrame.Position local _IlIlIllIII = (_llllIlIIlI - _llIlIIlllI).Magnitude if _llIlIllllI.maxDistance <= 0x0 or _IlIlIllIII <= _llIlIllllI.maxDistance then local _IIlIIlIIlI = egg.Mutations or {} local _IIIlIIlIlI = #_IIlIIlIIlI > 0x0 if not _llIlIllllI.rareEggsOnly or _IIIlIIlIlI then local _lIlllllIll = _IIIlIIlIlI and ("\032\091" .. table.concat(_IIlIIlIIlI, "\044") .. "\093") or "" local _lIlIlIllll = _lIllIlllll(egg) local _IIllIllIll = (egg.AssetCategory or "\069\103\103") .. "\032\040" .. _lIlIlIllll .. "\041" .. _lIlllllIll local _lIllIIIIII = egg.AssetCategory local _IlIIIIIllI = AssetsData and (AssetsData.Directory or AssetsData) and (AssetsData.Directory or AssetsData)[_lIllIIIIII] local _IIIlIlIllI = _IlIIIIIllI and (_IlIIIIIllI.Icon or (_IlIIIIIllI.Egg and _IlIIIIIllI.Egg.Icon)) or "" local _lIlIllllIl = _IIIlIIlIlI and _llIlIllllI.rareEggColor or _llIlIllllI.eggColor local _IllIIIlIlI = "" local _lllIlIIIII = Color3.fromRGB(0xFF, 0x64, 0xDC) if _llIlIllllI.showMutations then if #_IIlIIlIIlI > 0x0 then _IllIIIlIlI = table.concat(_IIlIIlIIlI, "\032\8226\032") _lllIlIIIII = _llIIIlIllI(_IIlIIlIIlI[0x1]) elseif egg.HasParasite == true then _IllIIIlIlI = "\080\097\114\097\115\105\116\101" _lllIlIIIII = _llIIIlIllI("\080\097\114\097\115\105\116\101") else _IllIIIlIlI = "\078\111\114\109\097\108" _lllIlIIIII = _llIIIlIllI("\078\111\114\109\097\108") end
 end
 table.insert(_IIlIIlIllI, { Key = egg.Uid, Pos = _llllIlIIlI, Name = _IIllIllIll, Color = _lIlIllllIl, Dist = _IlIlIllIII, }) if (_llIlIllllI.showPetIcons and _IIIlIlIllI ~= "") or _llIlIllllI.showMutations then _IIIIlllIII[egg.Uid] = true _lIIIlIllll(egg.Uid, _llllIlIIlI, _IIIlIlIllI, _IllIIIlIlI, _lllIlIIIII) end
 end
 end
 end
 end
 end
 end
 if _llIlIllllI.traps then local _IIllIlIIII = _lIllIlIIII:FindFirstChild("\095\095\068\069\066\082\073\083") if _IIllIlIIII then for _lllIllIlIl, trap in ipairs(_IIllIlIIII:GetChildren()) do if trap.Name == "\080\108\097\121\101\114\084\114\097\112" and trap:IsA("\066\097\115\101\080\097\114\116") then local _llllIlIIlI = trap.Position local _IlIlIllIII = (_llllIlIIlI - _llIlIIlllI).Magnitude if _llIlIllllI.maxDistance <= 0x0 or _IlIlIllIII <= _llIlIllllI.maxDistance then local owner = trap:GetAttribute("\079\119\110\101\114") or "\069\110\101\109\121" table.insert(_IIlIIlIllI, { Key = trap, Pos = _llllIlIIlI + Vector3.new(0x0, 1.5, 0x0), Name = "\091\084\082\065\080\093\032\064" .. owner, Color = _llIlIllllI.trapColor, Dist = _IlIlIllIII, }) end
 end
 end
 end
 end
 if _llIlIllllI.players then for _lllIllIlIl, _IlIIlllIIl in ipairs(Players:GetPlayers()) do if _IlIIlllIIl ~= _llIlIllIII and _IlIIlllIIl.Character then local _IIllllIIII = _IlIIlllIIl.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if _IIllllIIII then local _IlIlIllIII = (_IIllllIIII.Position - _llIlIIlllI).Magnitude if _llIlIllllI.maxDistance <= 0x0 or _IlIlIllIII <= _llIlIllllI.maxDistance then table.insert(_IIlIIlIllI, { Key = _IlIIlllIIl, Pos = _IIllllIIII.Position, Name = _IlIIlllIIl.DisplayName .. "\032\040\064" .. _IlIIlllIIl.Name .. "\041", Color = _llIlIllllI.playerColor, Dist = _IlIlIllIII, }) end
 end
 end
 end
 end
 for k, _llIIllIIll in pairs(_lllIIIlIIl) do if not _IIIIlllIII[k] and _llIIllIIll.gui then _llIIllIIll.gui.Enabled = false end
 end
 local _lIlIIIlIII = _IlIlIlIIIl() local _IIIIIIlIII = {} for _lllIllIlIl, item in ipairs(_IIlIIlIllI) do _IIIIIIlIII[item.Key] = true local _llIIlllIIl = _lIllIlIIll[item.Key] if not _llIIlllIIl then _llIIlllIIl = _llllIIlIll() _lIllIlIIll[item.Key] = _llIIlllIIl end
 local _lIlIlIlIll, onScreen = nil, false if _lIlIIIlIII then _lIlIlIlIll, onScreen = _lIlIIIlIII:WorldToViewportPoint(item.Pos) end
 if onScreen and _IIlIIIIlll and _lIlIlIlIll then if _llIIlllIIl.name then _llIIlllIIl.name.Text = item.Name _llIIlllIIl.name.Position = Vector2.new(_lIlIlIlIll.X, _lIlIlIlIll.Y - 0xE) _llIIlllIIl.name.Color = item.Color _llIIlllIIl.name.Visible = true end
 if _llIIlllIIl.dist then _llIIlllIIl.dist.Text = math.floor(item.Dist) .. "\032\115\116\117\100\115" _llIIlllIIl.dist.Position = Vector2.new(_lIlIlIlIll.X, _lIlIlIlIll.Y + 0x2) _llIIlllIIl.dist.Color = Color3.fromRGB(0xDC, 0xDC, 0xDC) _llIIlllIIl.dist.Visible = true end
 else if _llIIlllIIl.name then _llIIlllIIl.name.Visible = false end
 if _llIIlllIIl.dist then _llIIlllIIl.dist.Visible = false end
 if _llIIlllIIl.box then _llIIlllIIl.box.Visible = false end
 end
 end
 for k, _llIIlllIIl in pairs(_lIllIlIIll) do if not _IIIIIIlIII[k] then if _llIIlllIIl.name then _llIIlllIIl.name.Visible = false end
 if _llIIlllIIl.dist then _llIIlllIIl.dist.Visible = false end
 if _llIIlllIIl.box then _llIIlllIIl.box.Visible = false end
 end
 end
 end
 )) local _IlIlIIIllI = false local _IlIIIlIIIl = Lighting.Ambient local _lIIIIlIlII = Lighting.OutdoorAmbient local _IlIlllIlll = Lighting.Brightness local _lIllIIllll = Lighting.ClockTime local function _lllIlIllII(v) _IlIlIIIllI = v if v then Lighting.Ambient = Color3.fromRGB(0xFF, 0xFF, 0xFF) Lighting.OutdoorAmbient = Color3.fromRGB(0xFF, 0xFF, 0xFF) Lighting.Brightness = 0x2 Lighting.ClockTime = 0xE else Lighting.Ambient = _IlIIIlIIIl Lighting.OutdoorAmbient = _lIIIIlIlII Lighting.Brightness = _IlIlllIlll Lighting.ClockTime = _lIllIIllll end
 end
 local _IlIlIIIlll = false local _lIIlIIllll = 0x18 local _IIIIllIlll = false local _llllIllIlI = 0x3C local _IIllllIlll = false local _IlIIlIIIIl = false local _IIIIlIIIII = 0x3C local _IIlIIIIlIl = false local function _IlIlIlIlIl(v) _lIIlIIllll = v local _IIIllIIlII = _IIlIlllIII() if _IIIllIIlII and _IlIlIIIlll then _IIIllIIlII.WalkSpeed = v end
 end
 local function _IllIIIllll(v) _llllIllIlI = v local _IIIllIIlII = _IIlIlllIII() if _IIIllIIlII and _IIIIllIlll then _IIIllIIlII.UseJumpPower = true _IIIllIIlII.JumpPower = v end
 end
 _IIllIIIIll(RunService.Stepped:Connect( function () if _IIlIIIIIIl.dead then return end
 local _IIIllIIlII = _IIlIlllIII() if _IIIllIIlII then if _IlIlIIIlll then _IIIllIIlII.WalkSpeed = _lIIlIIllll end
 if _IIIIllIlll then _IIIllIIlII.UseJumpPower = true; _IIIllIIlII.JumpPower = _llllIllIlI end
 end
 end
 )) _IIllIIIIll(UserInputService.JumpRequest:Connect( function () if _IIlIIIIIIl.dead then return end
 local _IIIllIIlII = _IIlIlllIII() if _IIIllIIlII then _IIIllIIlII.Jump = true _IIIllIIlII:ChangeState(Enum.HumanoidStateType.Jumping) end
 end
 )) local function _IllIIlIlIl() if _IlIIlIIIIl then return end
 local _llllIlIlII = _IlIlIlIlIl() local _IIIllIIlII = _IIlIlllIII() if not (_llllIlIlII and _IIIllIIlII) then return end
 _IlIIlIIIIl = true _llllIlIlII.Anchored = true local _IIlllllIll = Instance.new("\066\111\100\121\071\121\114\111") _IIlllllIll.MaxTorque = Vector3.new(0x1, 0x1, 0x1) * 1e5 _IIlllllIll.P = 1e5 _IIlllllIll.CFrame = _llllIlIlII.CFrame _IIlllllIll.Parent = _llllIlIlII _IIlIIIIIIl._fly = { _llllIlIlII = _llllIlIlII, gyro = _IIlllllIll, conn = _IIllIIIIll(RunService.RenderStepped:Connect( function (_llllIlIllI) if not _IlIIlIIIIl or _IIlIIIIIIl.dead then return end
 local _lIlIIIlIII = _IlIlIlIIIl() if not _lIlIIIlIII then return end
 local _IIlIIIIIlI = _lIlIIIlIII.CFrame.LookVector local _IlllIIIIIl = _lIlIIIlIII.CFrame.RightVector local _IIlIIlIlll = Vector3.new(_IIlIIIIIlI.X, 0x0, _IIlIIIIIlI.Z) _IIlIIlIlll = _IIlIIlIlll.Magnitude > 0.001 and _IIlIIlIlll.Unit or Vector3.new(0x0, 0x0, -0x1) local _lIlIlIllIl = Vector3.new(_IlllIIIIIl.X, 0x0, _IlllIIIIIl.Z) _lIlIlIllIl = _lIlIlIllIl.Magnitude > 0.001 and _lIlIlIllIl.Unit or Vector3.new(0x1, 0x0, 0x0) local _IIlllIllIl = Vector3.zero if UserInputService:IsKeyDown(Enum.KeyCode.W) then _IIlllIllIl = _IIlllIllIl + _IIlIIlIlll end
 if UserInputService:IsKeyDown(Enum.KeyCode.S) then _IIlllIllIl = _IIlllIllIl - _IIlIIlIlll end
 if UserInputService:IsKeyDown(Enum.KeyCode.A) then _IIlllIllIl = _IIlllIllIl - _lIlIlIllIl end
 if UserInputService:IsKeyDown(Enum.KeyCode.D) then _IIlllIllIl = _IIlllIllIl + _lIlIlIllIl end
 if UserInputService:IsKeyDown(Enum.KeyCode.Space) then _IIlllIllIl = _IIlllIllIl + Vector3.new(0x0, 0x1, 0x0) end
 if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then _IIlllIllIl = _IIlllIllIl - Vector3.new(0x0, 0x1, 0x0) end
 if _IIlllIllIl.Magnitude > 0x0 then _llllIlIlII.CFrame = _llllIlIlII.CFrame + _IIlllIllIl.Unit * _IIIIlIIIII * math.min(_llllIlIllI, 0.1) end
 _IIlllllIll.CFrame = CFrame.lookAt(_llllIlIlII.Position, _llllIlIlII.Position + _IIlIIIIIlI) end
 )) } end
 local function _IlIllIIlIl() _IlIIlIIIIl = false local _IIllIlIIIl = _IIlIIIIIIl._fly if _IIllIlIIIl then pcall( function () _IIllIlIIIl.conn:Disconnect() end
 ) pcall( function () _IIllIlIIIl.hrp.Anchored = false end
 ) pcall( function () _IIllIlIIIl.gyro:Destroy() end
 ) _IIlIIIIIIl._fly = nil end
 end
 local _lIlIlIIllI = nil local function _lIllIIllII(v) _IIlIIIIlIl = v if v and not _lIlIlIIllI then _lIlIlIIllI = _IIllIIIIll(_llllllIllI.Idled:Connect( function () if _IIlIIIIlIl then _lIllllIlIl:CaptureController() _lIllllIlIl:ClickButton2(Vector2.new()) end
 end
 )) elseif not v and _lIlIlIIllI then pcall( function () _lIlIlIIllI:Disconnect() end
 ) _lIlIlIIllI = nil end
 end
 local _lIlIllIlII = _lIIlIlIlIl:AddTab({ Name = "\069\103\103\115", Subtitle = "\083\116\101\097\108\044\032\104\097\116\099\104\032\038\032\112\108\097\110\116", Icon = "\099\114\111\119\110" }) local _IIIlIIlIIl = _lIIlIlIlIl:AddTab({ Name = "\066\097\115\101", Subtitle = "\072\111\109\101\115\116\101\097\100\032\038\032\116\114\097\105\110\105\110\103", Icon = "\098\111\108\116" }) local _lllIIlllIl = _lIIlIlIlIl:AddTab({ Name = "\067\111\109\098\097\116", Subtitle = "\066\097\116\044\032\115\108\097\112\115\032\038\032\100\101\102\101\110\115\101", Icon = "\099\111\109\098\097\116" }) local _IllIllllll = _lIIlIlIlIl:AddTab({ Name = "\080\108\097\121\101\114", Subtitle = "\077\111\118\101\109\101\110\116\032\038\032\116\101\108\101\112\111\114\116\115", Icon = "\112\108\097\121\101\114" }) local _IllllIlIlI = _lIIlIlIlIl:AddTab({ Name = "\083\101\116\116\105\110\103\115", Subtitle = "\067\111\110\102\105\103\115\032\038\032\117\110\108\111\097\100\101\114", Icon = "\103\101\097\114" }) local _lIIlIllIIl = _lIlIllIlII:AddSubTab("\065\117\116\111\032\083\116\101\097\108") local _IlIIlllIlI = _lIlIllIlII:AddSubTab("\065\117\116\111\032\072\097\116\099\104\032\038\032\080\108\097\110\116") local _IlIlIIIIlI = _lIlIllIlII:AddSubTab("\069\103\103\032\084\114\097\099\107\101\114\032\069\083\080") _lIIlIllIIl:AddToggle({ Name = "\065\117\116\111\032\083\116\101\097\108\032\069\103\103\115", Default = false, Flag = "\115\116\101\097\108\095\097\117\116\111", Callback = _lIIIIIlIlI( function (v) _lIlIIllIlI = v if v then _IlllllIIIl() end
 end
 ) }) _lIIlIllIIl:AddToggle({ Name = "\9889\032\083\116\101\097\108\032\069\103\103\032\065\110\121\119\097\121\032\040\1610\1581\1605\1604\032\8594\032\1610\1591\1610\1581\1607\032\1575\1604\1608\1581\1588\032\8594\032\1610\1606\1607\1590\032\8594\032\1610\1581\1605\1604\032\8594\032\1610\1593\1608\1583\041", Default = false, Flag = "\115\116\101\097\108\095\101\103\103\095\097\110\121\119\097\121", Callback = _lIIIIIlIlI( function (v) _lIllIIIllI = v if not v then _llllIIIIlI = false _IlIlllIllI = false end
 end
 ) }) _lIIlIllIIl:AddDropdown({ Name = "\083\116\101\097\108\032\077\111\118\101\109\101\110\116\032\077\101\116\104\111\100", Options = { "\084\119\101\101\110\032\071\108\105\100\101", "\070\108\121\032\071\108\105\100\101", "\083\097\102\101\032\087\097\108\107" }, Default = "\084\119\101\101\110\032\071\108\105\100\101", Flag = "\115\116\101\097\108\095\109\101\116\104\111\100", Callback = function (v) _llIllllIll = v end
 }) _lIIlIllIIl:AddToggle({ Name = "\082\097\114\101\032\069\103\103\032\072\117\110\116\101\114\032\040\072\105\103\104\101\115\116\032\082\097\114\105\116\121\032\070\105\114\115\116\041", Default = true, Flag = "\114\097\114\101\095\104\117\110\116\101\114", Callback = function (v) _lIIIlllIlI = v end
 }) _lIIlIllIIl:AddMultiDropdown({ Name = "\070\105\108\116\101\114\032\098\121\032\082\097\114\105\116\121\032\040\077\117\108\116\105\045\083\101\108\101\099\116\041", Options = _lIIlIlIIll, Default = {}, Flag = "\115\116\101\097\108\095\114\097\114\105\116\105\101\115", Callback = function (selectedList) _llllllllII = selectedList end
 }) _lIIlIllIIl:AddMultiDropdown({ Name = "\070\105\108\116\101\114\032\098\121\032\065\114\101\097\032\040\077\117\108\116\105\045\083\101\108\101\099\116\041", Options = _IIlIIIIIlI, Default = {}, Flag = "\115\116\101\097\108\095\097\114\101\097\115", Callback = function (selectedList) _IIIllllIlI = selectedList end
 }) _lIIlIllIIl:AddMultiDropdown({ Name = "\070\105\108\116\101\114\032\098\121\032\077\117\116\097\116\105\111\110\032\040\077\117\108\116\105\045\083\101\108\101\099\116\041", Options = _llIlIlIlll, Default = {}, Flag = "\115\116\101\097\108\095\109\117\116\115", Callback = function (selectedList) _IlIlIllIII = selectedList end
 }) local _lllIlllIII = { "\55356\57263\032\065\110\121\032\080\101\116\032\040\078\111\032\070\105\108\116\101\114\041" } for _lllIllIlIl, _lIIlIlIIII in ipairs(_IIlllllIIl) do table.insert(_lllIlllIII, _lIIlIlIIII) end
 _lIIlIllIIl:AddDropdown({ Name = "\55356\57263\032\084\097\114\103\101\116\032\083\112\101\099\105\102\105\099\032\080\101\116\032\040\083\101\097\114\099\104\097\098\108\101\041", Description = "\1575\1582\1578\1585\032\1581\1610\1608\1575\1606\1575\1611\032\1604\1575\1587\1578\1607\1583\1575\1601\032\1576\1610\1590\1578\1607\032\1601\1602\1591", Options = _lllIlllIII, Default = "\55356\57263\032\065\110\121\032\080\101\116\032\040\078\111\032\070\105\108\116\101\114\041", Searchable = true, MaxVisible = 0x8, Flag = "\116\097\114\103\101\116\095\112\101\116\095\100\114\111\112\100\111\119\110", Callback = function (v) if v == "\55356\57263\032\065\110\121\032\080\101\116\032\040\078\111\032\070\105\108\116\101\114\041" then _lIIIlIIIll = nil else _lIIIlIIIll = v end
 end
 }) _llIIlIIIIl = _lIIlIllIIl:AddLabel({ Text = "\9898\032\1575\1582\1578\1585\032\1581\1610\1608\1575\1606\1575\1611\032\1605\1606\032\1575\1604\1602\1575\1574\1605\1577\032\1571\1593\1604\1575\1607", }) _lIIlIllIIl:AddButton({ Name = "\55356\57263\032\083\110\105\112\101\114\032\080\101\116\032\8212\032\1575\1587\1578\1607\1583\1601\032\1608\1587\1585\1602\032\1575\1604\1581\1610\1608\1575\1606\032\1575\1604\1605\1581\1583\1583", Primary = true, Callback = _lIIIIIlIlI( function () if _IIllllllII then return end
 if not _lIIIlIIIll or _lIIIlIIIll == "" then _IlIllIIIII("\083\110\105\112\101\114\032\080\101\116", "\1575\1582\1578\1585\032\1581\1610\1608\1575\1606\1575\1611\032\1571\1608\1604\1575\1611\032\1605\1606\032\1575\1604\1602\1575\1574\1605\1577", "\069\114\114\111\114", 0x3) return end
 local _IIlIlIIIlI = _lIlllllIll(nil, nil, nil, _lIIIlIIIll) if #_IIlIlIIIlI == 0x0 then _IlIllIIIII("\083\110\105\112\101\114\032\080\101\116", "\10060\032" .. _lIIIlIIIll .. "\032\1594\1610\1585\032\1605\1608\1580\1608\1583\032\1581\1575\1604\1610\1575\1611", "\069\114\114\111\114", 0x3) return end
 _IIllllllII = true local _lIllllIlll = _IIlIlIIIlI[0x1] task.spawn( function () local _IIllllIIIl = _lIlIIllIlI _lIlIIllIlI = true local _llllIIlllI, res = pcall(_IlIlIIllII, _lIllllIlll) if not _IIllllIIIl then _lIlIIllIlI = false end
 _IIllllllII = false if _llllIIlllI and res then _IlIllIIIII("\083\110\105\112\101\114\032\080\101\116", "\9989\032\1578\1605\032\1587\1585\1602\1577\032" .. _lIIIlIIIll, "\083\117\099\099\101\115\115", 0x3) else _IlIllIIIII("\083\110\105\112\101\114\032\080\101\116", "\10060\032\1601\1588\1604\032\1601\1610\032\1587\1585\1602\1577\032\1575\1604\1576\1610\1590\1577", "\069\114\114\111\114", 0x3) end
 end
 ) end
 ) }) task.spawn( function () while not _IIlIIIIIIl.dead do task.wait(0x1) if not _llIIlIIIIl then break end
 if not _lIIIlIIIll or _lIIIlIIIll == "" then pcall( function () _llIIlIIIIl:Set("\9898\032\1575\1582\1578\1585\032\1581\1610\1608\1575\1606\1575\1611\032\1605\1606\032\1575\1604\1602\1575\1574\1605\1577\032\1571\1593\1604\1575\1607") if _llIIlIIIIl.Instance then _llIIlIIIIl.Instance.TextColor3 = Color3.fromRGB(0x96, 0x96, 0x96) end
 end
 ) else local _IIlIlIIIlI = _lIlllllIll(nil, nil, nil, _lIIIlIIIll) local _lllllIIlIl = #_IIlIlIIIlI if _lllllIIlIl > 0x0 then _IIlIIIIIll = true pcall( function () _llIIlIIIIl:Set("\55357\57314\032" .. _lIIIlIIIll .. "\032\1605\1578\1608\1601\1585\032\1575\1604\1570\1606\032\040" .. _lllllIIlIl .. "\032\1576\1610\1590\1577\041") if _llIIlIIIIl.Instance then _llIIlIIIIl.Instance.TextColor3 = Color3.fromRGB(0x50, 0xDC, 0x78) end
 end
 ) else _IIlIIIIIll = false pcall( function () _llIIlIIIIl:Set("\55357\56628\032" .. _lIIIlIIIll .. "\032\1594\1610\1585\032\1605\1608\1580\1608\1583\032\1581\1575\1604\1610\1575\1611") if _llIIlIIIIl.Instance then _llIIlIIIIl.Instance.TextColor3 = Color3.fromRGB(0xE6, 0x50, 0x50) end
 end
 ) end
 end
 end
 end
 ) _lIIlIllIIl:AddSlider({ Name = "\071\108\105\100\101\032\047\032\084\114\097\118\101\108\032\083\112\101\101\100", Min = 0x14, Max = 0x2710, Default = 0x3E8, Suffix = "\032\115\116\117\100\115\047\115", Flag = "\103\108\105\100\101\095\115\112\101\101\100", Callback = function (v) _IIllIlllll = tonumber(v) or 0x3E8 end
 }) _lIIlIllIIl:AddSlider({ Name = "\083\116\101\097\108\032\068\101\108\097\121\032\071\097\112", Min = 0.005, Max = 0xA, Default = 0.5, Suffix = "\115", Flag = "\115\116\101\097\108\095\103\097\112", Callback = function (v) _lIIIllIIll = v end
 }) _lIIlIllIIl:AddButton({ Name = "\083\116\101\097\108\032\066\101\115\116\032\065\118\097\105\108\097\098\108\101\032\069\103\103\032\079\110\099\101", Callback = _lIIIIIlIlI( function () local _llllIIlllI = _lllllIllII() _IlIllIIIII("\083\116\101\097\108\032\069\103\103", _llllIIlllI and "\083\116\101\097\108\105\110\103\032\116\097\114\103\101\116\032\101\103\103" or "\078\111\032\109\097\116\099\104\105\110\103\032\101\103\103\032\102\111\117\110\100", _llllIIlllI and "\083\117\099\099\101\115\115" or "\073\110\102\111") end
 ) }) _IlIIlllIlI:AddToggle({ Name = "\065\117\116\111\032\072\097\116\099\104\032\082\101\097\100\121\032\069\103\103\115", Default = false, Flag = "\104\097\116\099\104\095\097\117\116\111", Callback = function (v) _IIllllIlll = v end
 }) _IlIIlllIlI:AddToggle({ Name = "\065\117\116\111\032\080\108\097\099\101\032\069\103\103\032\040\066\097\115\101\032\080\101\110\041", Default = false, Flag = "\112\108\097\110\116\095\097\117\116\111", Callback = function (v) _lIIIIlIlII = v end
 }) _IlIIlllIlI:AddSlider({ Name = "\072\097\116\099\104\032\067\104\101\099\107\032\068\101\108\097\121", Min = 0.5, Max = 0xA, Default = 0.5, Suffix = "\115", Flag = "\104\097\116\099\104\095\103\097\112", Callback = function (v) _llllIlllll = v end
 }) _IlIIlllIlI:AddButton({ Name = "\072\097\116\099\104\032\065\108\108\032\082\101\097\100\121\032\069\103\103\115\032\078\111\119", Primary = true, Callback = _lIIIIIlIlI( function () _IlllIllllI() end
 ) }) _IlIIlllIlI:AddButton({ Name = "\080\108\097\099\101\032\067\097\114\114\105\101\100\032\069\103\103\115\032\105\110\032\080\101\110\032\078\111\119", Callback = _lIIIIIlIlI( function () _IIlIIlIIll() end
 ) }) _IlIlIIIIlI:AddToggle({ Name = "\069\103\103\032\069\083\080\032\069\110\097\098\108\101\100", Default = false, Flag = "\101\115\112\095\101\103\103\115\095\101\110\097\098\108\101\100", Callback = function (v) _llIlIllllI.enabled = v end
 }) _IlIlIIIIlI:AddToggle({ Name = "\083\104\111\119\032\051\068\032\080\101\116\032\073\109\097\103\101\032\066\097\100\103\101\115", Default = true, Flag = "\101\115\112\095\112\101\116\095\105\099\111\110\115", Callback = function (v) _llIlIllllI.showPetIcons = v end
 }) _IlIlIIIIlI:AddToggle({ Name = "\9889\032\083\104\111\119\032\077\117\116\097\116\105\111\110\032\084\101\120\116\032\065\098\111\118\101\032\080\101\116\032\073\099\111\110", Description = "\1610\1593\1585\1590\032\1606\1608\1593\032\1575\1604\1591\1601\1585\1577\032\040\076\101\103\101\110\100\097\114\121\044\032\082\097\114\101\044\032\067\111\115\109\105\099\046\046\046\041\032\1571\1587\1601\1604\032\1589\1608\1585\1577\032\1575\1604\1581\1610\1608\1575\1606", Default = true, Flag = "\101\115\112\095\115\104\111\119\095\109\117\116\097\116\105\111\110\115", Callback = function (v) _llIlIllllI.showMutations = v end
 }) _IlIlIIIIlI:AddToggle({ Name = "\084\114\097\112\032\069\083\080", Default = false, Flag = "\101\115\112\095\116\114\097\112\115", Callback = function (v) _llIlIllllI.traps = v end
 }) _IlIlIIIIlI:AddToggle({ Name = "\083\104\111\119\032\077\117\116\097\116\101\100\032\047\032\082\097\114\101\032\069\103\103\115\032\079\110\108\121", Default = false, Flag = "\101\115\112\095\101\103\103\115\095\114\097\114\101\095\111\110\108\121", Callback = function (v) _llIlIllllI.rareEggsOnly = v end
 }) _IlIlIIIIlI:AddSlider({ Name = "\077\097\120\032\069\083\080\032\068\105\115\116\097\110\099\101", Min = 0x64, Max = 0x9C4, Default = 0x320, Suffix = "\032\115\116\117\100\115", Flag = "\101\115\112\095\109\097\120\095\100\105\115\116", Callback = function (v) _llIlIllllI.maxDistance = v end
 }) do local _IlIIlIlIIl = _IIIlIIlIIl:AddSubTab("\072\111\109\101\115\116\101\097\100\032\038\032\084\114\101\097\100\109\105\108\108") local _lIlIIlIIII = _IIIlIIlIIl:AddSubTab("\080\101\116\115\032\038\032\083\097\116\099\104\101\108") local _lIIIIlIllI = _IIIlIIlIIl:AddSubTab("\065\117\116\111\032\083\101\108\108") local _IIIIIlIIll = _IIIlIIlIIl:AddSubTab("\069\118\101\110\116\115\032\038\032\066\111\115\115\101\115") local _IlllIIllII = _IIIlIIlIIl:AddSubTab("\067\108\097\105\109\032\082\101\119\097\114\100\115") _IlIIlIlIIl:AddToggle({ Name = "\065\117\116\111\032\085\112\103\114\097\100\101\032\066\097\115\101\032\047\032\080\108\111\116", Default = false, Flag = "\117\112\095\098\097\115\101\095\097\117\116\111", Callback = function (v) _lIIIlIlIlI = v end
 }) _IlIIlIlIIl:AddToggle({ Name = "\065\117\116\111\032\085\112\103\114\097\100\101\032\084\114\101\097\100\109\105\108\108\032\084\105\101\114", Default = false, Flag = "\117\112\095\116\114\101\097\100\095\097\117\116\111", Callback = function (v) _lIIIllllIl = v end
 }) _IlIIlIlIIl:AddToggle({ Name = "\065\117\116\111\032\066\117\121\032\083\112\101\101\100\032\084\114\097\105\108\115", Default = false, Flag = "\097\117\116\111\095\098\117\121\095\116\114\097\105\108\115", Callback = function (v) _IIIIlIlIll = v end
 }) _IlIIlIlIIl:AddButton({ Name = "\085\112\103\114\097\100\101\032\066\097\115\101\032\078\111\119", Primary = true, Callback = _lIIIIIlIlI( function () _IIlIlIlIII() end
 ) }) _IlIIlIlIIl:AddButton({ Name = "\085\112\103\114\097\100\101\032\084\114\101\097\100\109\105\108\108\032\078\111\119", Callback = _lIIIIIlIlI( function () _IIlllllIIl() end
 ) }) _lIlIIlIIII:AddToggle({ Name = "\065\117\116\111\032\069\113\117\105\112\032\066\101\115\116\032\080\101\116\115", Default = false, Flag = "\101\113\117\105\112\095\098\101\115\116\095\112\101\116\115", Callback = function (v) _lIIIlIlIlI = v end
 }) _lIlIIlIIII:AddButton({ Name = "\069\113\117\105\112\032\066\101\115\116\032\080\101\116\115\032\078\111\119", Primary = true, Callback = _lIIIIIlIlI( function () _IlIIIlIIlI() end
 ) }) _lIIIIlIllI:AddToggle({ Name = "\065\117\116\111\032\083\101\108\108\032\076\111\119\045\084\105\101\114\032\080\101\116\115", Default = false, Flag = "\097\117\116\111\095\115\101\108\108\095\112\101\116\115", Callback = function (v) _IlIlllIlIl = v end
 }) _lIIIIlIllI:AddMultiDropdown({ Name = "\070\105\108\116\101\114\032\080\101\116\032\083\101\108\108\032\082\097\114\105\116\105\101\115", Options = _lIIlIlIIll, Default = {}, Flag = "\115\101\108\108\095\112\101\116\095\114\097\114\105\116\105\101\115", Callback = function (l) _IIlllIIIII = l end
 }) _lIIIIlIllI:AddToggle({ Name = "\065\117\116\111\032\083\101\108\108\032\076\111\119\045\084\105\101\114\032\069\103\103\115", Default = false, Flag = "\097\117\116\111\095\115\101\108\108\095\101\103\103\115", Callback = function (v) _IIllIlIIll = v end
 }) _lIIIIlIllI:AddMultiDropdown({ Name = "\070\105\108\116\101\114\032\069\103\103\032\083\101\108\108\032\082\097\114\105\116\105\101\115", Options = _lIIlIlIIll, Default = {}, Flag = "\115\101\108\108\095\101\103\103\095\114\097\114\105\116\105\101\115", Callback = function (l) _lllIIIIIIl = l end
 }) _lIIIIlIllI:AddButton({ Name = "\083\101\108\108\032\083\101\108\101\099\116\101\100\032\080\101\116\115\032\078\111\119", Primary = true, Callback = _lIIIIIlIlI( function () _IlIIlIIlll() end
 ) }) _lIIIIlIllI:AddButton({ Name = "\083\101\108\108\032\083\101\108\101\099\116\101\100\032\069\103\103\115\032\078\111\119", Callback = _lIIIIIlIlI( function () _IIlllIllIl() end
 ) }) _IIIIIlIIll:AddToggle({ Name = "\070\085\076\076\032\065\085\084\079\032\066\111\115\115\032\070\105\103\104\116", Default = false, Flag = "\097\117\116\111\095\102\105\103\104\116\095\098\111\115\115", Callback = _lIIIIIlIlI( function (v) _lIlIIllIll.autoFight = v if v then _lIlIIllIll.autoJoin = true _lIlIIllIll.autoMastery = true end
 end
 ) }) _IIIIIlIIll:AddDropdown({ Name = "\066\111\115\115\032\084\097\114\103\101\116\105\110\103", Options = { "\067\114\121\115\116\097\108\115\032\070\105\114\115\116", "\066\111\115\115\032\070\105\114\115\116" }, Default = "\067\114\121\115\116\097\108\115\032\070\105\114\115\116", Flag = "\098\111\115\115\095\116\097\114\103\101\116\105\110\103", Callback = function (v) _lIlIIllIll.arenaApproach = v end
 }) _IIIIIlIIll:AddToggle({ Name = "\072\097\122\097\114\100\032\073\109\109\117\110\105\116\121", Default = false, Flag = "\098\111\115\115\095\104\097\122\097\114\100\095\105\109\109\050", Callback = _lIIIIIlIlI( function (v) _lIlIIllIll.hazardImmune = v; if v then pcall(_lIlIIllIll.InstallHazardHook) end
 end
 ) }) _IIIIIlIIll:AddToggle({ Name = "\065\117\116\111\032\074\111\105\110\032\066\111\115\115\032\065\114\101\110\097", Default = false, Flag = "\097\117\116\111\095\106\111\105\110\095\098\111\115\115", Callback = function (v) _lIlIIllIll.autoJoin = v end
 }) _IIIIIlIIll:AddToggle({ Name = "\065\117\116\111\032\067\108\097\105\109\032\066\111\115\115\032\077\097\115\116\101\114\121", Default = false, Flag = "\097\117\116\111\095\098\111\115\115\095\109\097\115\116\101\114\121", Callback = function (v) _lIlIIllIll.autoMastery = v end
 }) _IIIIIlIIll:AddButton({ Name = "\074\111\105\110\032\066\111\115\115\032\065\114\101\110\097\032\078\111\119", Primary = true, Callback = _lIIIIIlIlI( function () _lIlIIllIll.Join() end
 ) }) _IIIIIlIIll:AddButton({ Name = "\067\108\097\105\109\032\066\111\115\115\032\077\097\115\116\101\114\121\032\078\111\119", Callback = _lIIIIIlIlI( function () _lIlIIllIll.ClaimMastery() end
 ) }) _IlllIIllII:AddToggle({ Name = "\065\117\116\111\032\067\108\097\105\109\032\065\119\097\121\032\069\097\114\110\105\110\103\115\032\038\032\067\111\100\101\120", Default = false, Flag = "\099\108\097\105\109\095\097\117\116\111\095\114\101\119\097\114\100\115", Callback = function (v) _IlllIIIllI = v end
 }) _IlllIIllII:AddButton({ Name = "\067\108\097\105\109\032\065\119\097\121\032\069\097\114\110\105\110\103\115\032\038\032\067\111\100\101\120\032\078\111\119", Primary = true, Callback = _lIIIIIlIlI( function () _llllIlIIII() end
 ) }) end
 do local _IIlllllllI = _lllIIlllIl:AddSubTab("\066\097\116\032\038\032\083\108\097\112\032\065\117\114\097") local _IlIIllIlll = _lllIIlllIl:AddSubTab("\068\101\102\101\110\115\101\032\038\032\071\117\097\114\100\115") _IIlllllllI:AddToggle({ Name = "\066\097\116\032\047\032\083\108\097\112\032\065\117\114\097", Default = false, Flag = "\098\097\116\095\097\117\114\097\095\101\110\097\098\108\101\100", Callback = function (v) _IIlIIIIlIl = v end
 }) _IIlllllllI:AddSlider({ Name = "\065\117\114\097\032\082\097\100\105\117\115", Min = 0x5, Max = 0x32, Default = 0x14, Suffix = "\032\115\116\117\100\115", Flag = "\098\097\116\095\114\097\100\105\117\115", Callback = function (v) _lIIIlIIIlI = v end
 }) _IIlllllllI:AddSlider({ Name = "\083\119\105\110\103\032\068\101\108\097\121", Min = 0.05, Max = 1.0, Default = 0.2, Suffix = "\115", Flag = "\098\097\116\095\100\101\108\097\121", Callback = function (v) _lIllllIIlI = v end
 }) _IIlllllllI:AddButton({ Name = "\083\119\105\110\103\032\066\097\116\032\079\110\099\101\032\040\077\097\110\117\097\108\041", Primary = true, Callback = _lIIIIIlIlI( function () local _IlIIIllllI = _IlllIIIIII("\082\069\047\066\097\116\083\119\105\110\103\047\084\114\105\103\103\101\114"); if _IlIIIllllI then _IlIIIllllI:FireServer() end
 end
 ) }) _IlIIllIlll:AddToggle({ Name = "\065\110\116\105\045\084\114\097\112", Default = true, Flag = "\097\118\111\105\100\095\116\114\097\112\115", Callback = _lIIIIIlIlI( function (v) _IIIIIlllIl = v; if v then pcall(_lIIIlIIlll) end
 end
 ) }) _IlIIllIlll:AddToggle({ Name = "\078\111\032\075\110\111\099\107\098\097\099\107\032\047\032\082\097\103\100\111\108\108\032\073\109\109\117\110\105\116\121", Default = true, Flag = "\110\111\095\107\110\111\099\107\098\097\099\107", Callback = _lIIIIIlIlI( function (v) _lIIlIIlIIl(v) end
 ) }) _IlIIllIlll:AddToggle({ Name = "\065\110\116\105\045\082\097\103\100\111\108\108\032\040\081\117\105\099\107\032\083\116\097\110\100\117\112\041", Default = true, Flag = "\097\110\116\105\095\114\097\103\100\111\108\108", Callback = function (v) _IlIlIIllll = v end
 }) _IIllIIIIll(RunService.Heartbeat:Connect( function () if _IIlIIIIIIl.dead or not _IlIlIIllll then return end
 local _IIIllIIlII = _IIlIlllIII() if _IIIllIIlII and _IIIllIIlII:GetState() == Enum.HumanoidStateType.Physics then _IIIllIIlII:ChangeState(Enum.HumanoidStateType.GettingUp) end
 end
 )) end
 do local _lllIlIlIll = _IllIllllll:AddSubTab("\077\111\118\101\109\101\110\116") local _IlIlIIIIII = _IllIllllll:AddSubTab("\065\114\101\097\032\084\114\097\118\101\108") local _IIIlllllIl = _IllIllllll:AddSubTab("\080\108\111\116\032\084\114\097\118\101\108") local _IIllIlIllI = _IllIllllll:AddSubTab("\080\108\097\121\101\114\032\084\114\097\118\101\108") local _llIlIIIllI = _IllIllllll:AddSubTab("\086\105\115\117\097\108\115\032\038\032\080\101\114\102\111\114\109\097\110\099\101") _lllIlIlIll:AddToggle({ Name = "\069\110\097\098\108\101\032\087\097\108\107\083\112\101\101\100", Default = false, Flag = "\115\112\101\101\100\095\101\110\097\098\108\101\100", Callback = _lIIIIIlIlI( function (v) _IlIlIIIlll = v if not v then local _IIIllIIlII = _IIlIlllIII(); if _IIIllIIlII then _IIIllIIlII.WalkSpeed = 0x10 end
 end
 end
 ) }) _lllIlIlIll:AddSlider({ Name = "\087\097\108\107\083\112\101\101\100\032\086\097\108\117\101", Min = 0x10, Max = 0x2710, Default = 0x18, Suffix = "\032\115\116\117\100\115\047\115", Flag = "\115\112\101\101\100\095\118\097\108", Callback = function (v) _IlIlIlIlIl(v) end
 }) _lllIlIlIll:AddToggle({ Name = "\069\110\097\098\108\101\032\074\117\109\112\080\111\119\101\114", Default = false, Flag = "\106\117\109\112\095\101\110\097\098\108\101\100", Callback = _lIIIIIlIlI( function (v) _IIIIllIlll = v if not v then local _IIIllIIlII = _IIlIlllIII(); if _IIIllIIlII then _IIIllIIlII.JumpPower = 0x32 end
 end
 end
 ) }) _lllIlIlIll:AddSlider({ Name = "\074\117\109\112\080\111\119\101\114\032\086\097\108\117\101", Min = 0x32, Max = 0x12C, Default = 0x3C, Flag = "\106\117\109\112\095\118\097\108", Callback = function (v) _IllIIIllll(v) end
 }) _lllIlIlIll:AddToggle({ Name = "\073\110\102\105\110\105\116\101\032\074\117\109\112", Default = false, Flag = "\105\110\102\095\106\117\109\112", Callback = function (v) _IIllllIlll = v end
 }) _lllIlIlIll:AddToggle({ Name = "\083\109\111\111\116\104\032\070\108\121", Default = false, Flag = "\102\108\121\095\101\110\097\098\108\101\100", Callback = _lIIIIIlIlI( function (v) if v then _IllIIlIlIl() else _IlIllIIlIl() end
 end
 ) }) _lllIlIlIll:AddSlider({ Name = "\070\108\121\032\083\112\101\101\100", Min = 0x14, Max = 0xFA, Default = 0x3C, Suffix = "\032\115\116\117\100\115\047\115", Flag = "\102\108\121\095\115\112\101\101\100", Callback = function (v) _IIIIlIIIII = v end
 }) _lllIlIlIll:AddToggle({ Name = "\065\110\116\105\045\065\070\075", Default = false, Flag = "\097\110\116\105\095\097\102\107", Callback = function (v) _lIllIIllII(v) end
 }) local _IIIIIIIlIl = "\066\097\115\101\032\047\032\080\108\111\116" local _llllIIlllI = {} for k in pairs(_lIIIIIIIll) do table.insert(_llllIIlllI, k) end
 table.sort(_llllIIlllI) _IlIlIIIIII:AddDropdown({ Name = "\083\101\108\101\099\116\032\065\114\101\097", Options = _llllIIlllI, Default = "\066\097\115\101\032\047\032\080\108\111\116", Flag = "\116\101\108\101\095\097\114\101\097", Callback = function (v) _IIIIIIIlIl = v end
 }) _IlIlIIIIII:AddButton({ Name = "\084\114\097\118\101\108\032\116\111\032\083\101\108\101\099\116\101\100\032\065\114\101\097", Primary = true, Callback = _lIIIIIlIlI( function () local _llllIlIIlI = _lIIIIIIIll[_IIIIIIIlIl] if _IIIIIIIlIl == "\066\097\115\101\032\047\032\080\108\111\116" then _llllIlIIlI = _llllllllIl() end
 if _llllIlIIlI then _lllIIIllll(_llllIlIIlI, _IIllIlllll or 0xC8) end
 end
 ) }) local _lIIIlIIIII = "\077\121\032\080\108\111\116" local _IIlllIIlII = { "\080\108\111\116\032\049", "\080\108\111\116\032\050", "\080\108\111\116\032\051", "\080\108\111\116\032\052", "\080\108\111\116\032\053", "\080\108\111\116\032\054", "\080\108\111\116\032\055", "\077\121\032\080\108\111\116" } _IIIlllllIl:AddDropdown({ Name = "\083\101\108\101\099\116\032\080\108\111\116", Options = _IIlllIIlII, Default = "\077\121\032\080\108\111\116", Flag = "\116\101\108\101\095\112\108\111\116", Callback = function (v) _lIIIlIIIII = v end
 }) _IIIlllllIl:AddButton({ Name = "\084\114\097\118\101\108\032\116\111\032\080\108\111\116", Primary = true, Callback = _lIIIIIlIlI( function () local _lllIlllIIl = _lIIIlIIIII == "\077\121\032\080\108\111\116" and _IIIlllIlll() or tonumber(_lIIIlIIIII:match("\037\100\043")) or 0x1 local _lIIlIIIIlI = _lIllIlIIII.Plots:FindFirstChild(tostring(_lllIlllIIl)) local _IlllIlIllI = _lIIlIIIIlI and (_lIIlIIIIlI:FindFirstChild("\067\101\110\116\101\114\080\111\105\110\116") and _lIIlIIIIlI.CenterPoint.Position or _lIIlIIIIlI:GetPivot().Position) if _IlllIlIllI then _lllIIIllll(_IlllIlIllI + Vector3.new(0x0, 0x2, 0x0), _IIllIlllll or 0xC8) end
 end
 ) }) local _llIIIlIIIl = nil local function _lIllIIIlIl() local _IIIIlIlIIl = {} for _lllIllIlIl, _IlIIlllIIl in ipairs(Players:GetPlayers()) do if _IlIIlllIIl ~= _llIlIllIII then table.insert(_IIIIlIlIIl, _IlIIlllIIl.Name) end
 end
 table.sort(_IIIIlIlIIl) if #_IIIIlIlIIl == 0x0 then _IIIIlIlIIl = { "\040\110\111\032\111\116\104\101\114\032\112\108\097\121\101\114\115\041" } end
 return _IIIIlIlIIl end
 local _llllllIlII = _IIllIlIllI:AddDropdown({ Name = "\083\101\108\101\099\116\032\080\108\097\121\101\114", Options = _lIllIIIlIl(), Default = nil, Flag = "\116\101\108\101\095\112\108\114", Callback = function (v) _llIIIlIIIl = v end
 }) _IIllIlIllI:AddButton({ Name = "\082\101\102\114\101\115\104\032\080\108\097\121\101\114\032\076\105\115\116", Callback = function () _llllllIlII:SetOptions(_lIllIIIlIl()) end
 }) _IIllIlIllI:AddButton({ Name = "\084\114\097\118\101\108\032\116\111\032\080\108\097\121\101\114", Primary = true, Callback = _lIIIIIlIlI( function () if not _llIIIlIIIl then return end
 local _lIlIlIIlII = Players:FindFirstChild(_llIIIlIIIl) local _IIllIIIIIl = _lIlIlIIlII and _lIlIlIIlII.Character and _lIlIlIIlII.Character:FindFirstChild("\072\117\109\097\110\111\105\100\082\111\111\116\080\097\114\116") if _IIllIIIIIl then _lllIIIllll(_IIllIIIIIl.Position + Vector3.new(0x0, 0x2, 0x0), _IIllIlllll or 0xC8) end
 end
 ) }) _llIlIIIllI:AddToggle({ Name = "\070\117\108\108\098\114\105\103\104\116", Default = false, Flag = "\102\117\108\108\098\114\105\103\104\116", Callback = function (v) _lllIlIllII(v) end
 }) _llIlIIIllI:AddButton({ Name = "\068\101\108\101\116\101\032\079\119\110\032\080\101\116\032\082\101\110\100\101\114\115\032\040\070\080\083\032\066\111\111\115\116\041", Primary = true, Callback = _lIIIIIlIlI( function () _lIIlIIIllI() end
 ) }) end
 do local _IIIIIIIIII = _IllllIlIlI:AddSubTab("\067\111\110\102\105\103\117\114\097\116\105\111\110") if _lIIlIIllII then _IIIIIIIIII:AddInput({ Name = "\067\111\110\102\105\103\032\078\097\109\101", Default = _IlllIIlIll, Flag = "\099\102\103\095\110\097\109\101", Callback = function (v) if v and #v > 0x0 then _IlllIIlIll = v end
 end
 }) _IIIIIIIIII:AddButton({ Name = "\083\097\118\101\032\067\111\110\102\105\103", Primary = true, Callback = _lIIIIIlIlI( function () Library:SaveConfig(_IlllIIlIll) end
 ) }) _IIIIIIIIII:AddButton({ Name = "\076\111\097\100\032\067\111\110\102\105\103", Callback = _lIIIIIlIlI( function () Library:LoadConfig(_IlllIIlIll); _lIlIIlllll() end
 ) }) end
 _IIIIIIIIII:AddKeybind({ Name = "\084\111\103\103\108\101\032\085\073\032\075\101\121\098\105\110\100", Default = Enum.KeyCode.RightControl, Flag = "\117\105\095\116\111\103\103\108\101\095\107\101\121", OnPress = function () _lIIlIlIlIl:Toggle() end
 }) _IIIIIIIIII:AddDivider() _IIIIIIIIII:AddButton({ Name = "\085\110\108\111\097\100\032\074\066\057\049\049\032\072\085\066", Callback = _lIIIIIlIlI( function () pcall( function () _IIlIIIIIIl.Unload() end
 ) end
 ) }) _IIIIIIIIII:AddParagraph({ Title = "\074\066\057\049\049\045\072\085\066\032\124\032\083\110\105\112\101\114\032\080\101\116\032\043\032\083\116\101\097\108\032\069\103\103\032\065\110\121\119\097\121\032\043\032\077\117\116\097\116\105\111\110\032\069\083\080", Content = "\086\101\114\115\105\111\110\032\052\046\055\046\048\032\8212\032\065\117\116\111\032\083\116\101\097\108\032\043\032\080\101\116\032\084\097\114\103\101\116\105\110\103\032\043\032\083\110\105\112\101\114\032\080\101\116\032\043\032\083\116\101\097\108\032\069\103\103\032\065\110\121\119\097\121\032\043\032\077\117\116\097\116\105\111\110\032\069\083\080\092\110\070\101\097\116\117\114\101\115\058\032\049\054\055\032\080\101\116\115\044\032\083\110\105\112\101\114\032\066\117\116\116\111\110\044\032\083\116\097\116\117\115\032\073\110\100\105\099\097\116\111\114\044\032\069\083\080\032\119\105\116\104\032\077\117\116\097\116\105\111\110\032\084\101\120\116\044\032\066\111\115\115\032\070\105\103\104\116" }) end
 _IIlIIIIIIl.Unload = function () _IIlIIIIIIl.dead = true for _lllIllIlIl, _IIIIllIlll in ipairs(_IIlIIIIIIl.conns) do pcall( function () _IIIIllIlll:Disconnect() end
 ) end
 _IIlIIIIIIl.conns = {} for _lllIllIlIl, _llIllIlIII in ipairs(_IIlIIIIIIl.drawings) do pcall( function () _llIllIlIII:Remove() end
 ) end
 _IIlIIIIIIl.drawings = {} for _lllIllIlIl, _lllIllIIII in ipairs(_IIlIIIIIIl.highlights) do pcall( function () _lllIllIIII:Destroy() end
 ) end
 _IIlIIIIIIl.highlights = {} _IlIllIIlIl() _lllIlIllII(false) local _IIIllIIlII = _IIlIlllIII() if _IIIllIIlII then _IIIllIIlII.PlatformStand = false _IIIllIIlII.WalkSpeed = 0x10 _IIIllIIlII.JumpPower = 0x32 end
 pcall( function () _lIIlIlIlIl:Destroy() end
 ) _G.OxideStealAnEgg = nil end
 _IlIllIIIII("\074\066\057\049\049\045\072\085\066", "\083\110\105\112\101\114\032\080\101\116\032\043\032\083\116\101\097\108\032\069\103\103\032\065\110\121\119\097\121\032\043\032\077\117\116\097\116\105\111\110\032\069\083\080\032\108\111\097\100\101\100\033", "\083\117\099\099\101\115\115", 3.5) end
 )(...)
