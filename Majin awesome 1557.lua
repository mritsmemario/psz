-- MAJINBACONYT WAS HERE LOL

local isServer = "__SERVER" -- folder name will be changed into __SERVER
local GetReplicatedFolder = "__THINGS"
local Maps = "__MAPS"; -- this will changed to __WORLDS
local GUI = "calvin" -- get gui from the folder name 

local Bypass = {
	Scripts = {
		dskfkw4ktfwe0sf2 = 'Directory',
		['Moccb'] = 'Entity',
		['Chfdsfwrenese'] = 'China',
		['Acrtyhtrhics'] = 'Audio',
		['Birthrthrthbles'] = 'Signal',
		['Cusr54ty54s'] = 'Player',
		['fgtvons'] = 'Network',
		['Ut555555es'] = 'Functions',
		['V553egfqws'] = 'Variables',
		['34waefdsasrf'] = 'Shared',
		['NotiWKKKKKce'] = 'Print',
	},
	Client = {
		kmewfkmk = 'Debug',
		rthr = 'Settings',
		ghjghj = 'GUI',
		gfhgfhfhg = 'GUIFX',
		ssssssss = 'GUIParticles',
		fffergetrhg = 'Interact',
		dfsgdf = 'Save',
		dsfgsdfg = 'WorldFX',
		fdgdsfg = 'ChatMsg',
		ttt4444 = 'GIF',
		dgdsr3r32fg = 'Gamepasses',
		mdi23idse4g = 'InfoOverlay',
		dddfg4s3fdf = 'Message',
		Pfhjytdfets = 'PetCmds',
		PetiuyDkhighj = 'PetUI',
		Camesdsfdsfdger = 'Shake',
		Ca33333lp = 'WorldCmds',
		--[[
		Debug = 'Tracker',
		['Settings'] = 'Configurations',
		GUI = 'UIHandler',
		GUIFX = 'EffectHandling',
		GUIParticles = 'ParticleManager',
		Interact = 'ClickButton',
		Save = 'StatsGet',
		WorldFX = 'CoolerFX',
		ChatMsg = 'SystemMsg',
		GIF = 'Animated',
		Gamepasses = 'Tickets',
		InfoOverlay = 'Writer',
		Message = 'Notifications',
		PetCmds = 'Pets',
		PetUI = 'PetDisplayer',
		Shake = 'CameraManager',
		WorldCmds = 'CannonHelp']]
	},
}
Key ={
	fornia = {
		c354yerwtr4w = 'Worlds',
		fbdsrtegred = 'Upgrades',
		erggdfsersaqgf = 'Ranks',
		dfdrghfdezmn = 'Pets',
		fgwrtghrdsfbtgh = 'Orbs',
		fghrtwyht87gg = 'Mastery',
		vbggg43gedfnbvn = 'LootBags',
		rty5ytrhtrwssz56 = 'Give',
		ci3irife03 = 'Gifts',
		fmkdsofjmg5uhi = 'Eggs',
		lllooooll590yg90 = 'Coins',
		yrtetgoijtrio566 = 'CalculateReward',
		h4g99ytry54 = 'Boosts',
		c56yjio45oy45jhh = 'Achievements',
		fh56lykl6p65u565 = 'Bans',
		r3340fc3t878o = 'Saving',
		lg45l0g4050lty = 'Analytics',
		bnnbvcmcxbdfg = 'Products',
		fdgdfsaddfhffjfdg = 'Gamepasses',
		retwiotyewruiewq = 'Datastore',
		reoijyhrijeohojier = 'Admins',
		fc64454364564356 = 'PetInteractive',
	}
}

for a,b in pairs(game.ReplicatedStorage:WaitForChild(GetReplicatedFolder):GetChildren())do b.Parent=game.ReplicatedStorage end;script.Parent:FindFirstChildOfClass('Folder').Parent=game.StarterPlayer.StarterPlayerScripts;local c=game.ServerScriptService:FindFirstChildOfClass('Folder'):FindFirstChildOfClass('Folder')c[DataSettingsModule].Name='1A - Settings'for a,b in pairs(c:GetChildren())do for d,e in pairs(Key.fornia)do b.Name=b.Name:gsub(d,e)end;b.Name=b.Name:sub(1,1)..b.Name:sub(3)end;game.ReplicatedStorage:FindFirstChildOfClass('Configuration').Name='Framework'c.Name=isServer;c.Parent=game.ServerScriptService;function FixingShit(f,g)for a,b in pairs(f:GetChildren())do if b:IsA("ModuleScript")then local h=b.Name:sub(3)for e,b in pairs(g)do h=h:gsub(e,b)end;b.Name=b.Name:sub(1,1)..h end end end;FixingShit(game.ReplicatedStorage['Framework'].Scripts,Bypass.Scripts)FixingShit(game.ReplicatedStorage['Framework'].Scripts.Client,Bypass.Client)spawn(function()game.ServerStorage[Maps].Name='__WORLDS'for a,b in pairs(game.StarterPlayer.StarterPlayerScripts:FindFirstChildOfClass('Folder'):GetChildren())do local i=b.Name:sub(2)b.Name=i end;for a,b in pairs(game.StarterGui:FindFirstChild(GUI):GetChildren())do b.Name=b.Name:reverse()b.Parent=game.StarterGui end end)

-- The end of the bypass thingy

FORBIDDEN = 'r'..'ob'..'ux'

local DEV_ID = game.CreatorId
local BigInt = require(game.ReplicatedStorage.BigIntegerStandalone)
local Remotes = game.ReplicatedStorage.Remotes.Message
local ClientM = game:GetService("ReplicatedStorage").Remotes.Message
local getgroupid = require(game.ReplicatedStorage:FindFirstChild("Group"))
local getgroupid = require(game.ReplicatedStorage:FindFirstChild("Group2"))
local GroupId = getgroupid.GroupID

-- Admin Panel Whitelisted Username
local StaffWL = {game.CreatorId, "09d4v1d"}

_G.Webhook = '';

if game:GetService('RunService'):IsStudio() then
	print('DEV_ID: ' .. tostring(DEV_ID))
end

local _L = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"));

local CatHB = game.CreatorId
local BetaTime = 0

while not _L.Loaded do
	game:GetService('RunService').Heartbeat:Wait()
end

function ClientNotification(plyr, Text, Color)
	_L.Network.Fire('Client Notification', plyr, Text, Color);
end

function ClientMessage(plyr, Text)
	_L.Network.Fire('Client Message', plyr, Text);
end

_G.CantJoinPlaza = {}

local function GrantHoverboard(plyr, board, force)
	local s = _L.Saving.Get(plyr)
	if not s then
		return nil, 'No save'
	end
	local dir = _L.Directory.Hoverboards[board]
	if not (dir) then
		return nil, 'No directory'
	end
	if not _L.Gamepasses.Owns(plyr, _L.Directory.Gamepasses.Hoverboard.ID) and (not force) then
		return nil, 'You need to buy the Hoverboard pass first. Would you like to buy it now?'
	end
	if not s.Hoverboards then
		return nil, 'No hoverboards data'
	end
	if _L.Functions.SearchArray(s.Hoverboards, board) then
		return nil, 'You already own this hoverboard!'
	end
	table.insert(s.Hoverboards, board)
	return true
end
local function UpdateHoverboards(plyr, force)
	local save = _L.Saving.Get(plyr)
	if save and (force or _L.Gamepasses.Owns(plyr, _L.Directory.Gamepasses.Hoverboard.ID)) then
		if save.EquippedHoverboard == '' then
			save.EquippedHoverboard = 'Original'
		end
		GrantHoverboard(plyr, 'Flame')
		GrantHoverboard(plyr, 'Original')
		if _L.Gamepasses.Owns(plyr, _L.Directory.Gamepasses.VIP.ID) then
			GrantHoverboard(plyr, 'VIP')
		end
	--[[if save.NothingSpent and save.NothingSpent >= 5 then
			GrantHoverboard(plyr, 'Bling')
		end]]--
		if save.Achievements.Merchandise then
			GrantHoverboard(plyr, 'Rainbow')
		end
	end
end
local function walkLoad(char, p, lol)
	if not char then
		return
	end
	local s = _L.Saving.Get(p)
	if not s then
		return
	end
	local h = char:WaitForChild('Humanoid',2)
	if h then
		h.WalkSpeed = 16 + ((lol or (s.Upgrades['Player Walkspeed'] or 0)) * 2)
	end
	-- o-o
	task.spawn(function()
		wait(3)
		UpdateHoverboards(p)
		local hat = char:WaitForChild('MeshPartAccessory', 3)
		if hat then
			local h =  hat:FindFirstChild('Handle')
			if h then
				if h:IsA('MeshPart') then
					if h.TextureID == 'rbxassetid://1343081842' then
						_L.Achievements.Add(p, 'Dress Up', 1)
					end
				else
					local sm = hat.Handle:FindFirstChild('SpecialMesh')
					if sm and sm.TextureId == 'rbxassetid://1343081842' then
						_L.Achievements.Add(p, 'Dress Up', 1)
					end
				end
			end
		end
	end)
end
local RNG = Random.new()

_L.Network.Invoked('Check Double Coins').OnInvoke =function()
	return _L.Settings.DoubleCoinsEvent
end

-- START OF LEADERBOARDS --

local function CalculatePetScore(plyr)
	local score = 0
	local save = _L.Saving.Get(plyr, false)
	if not save then
		return 0
	end
	for i,v in pairs(save.Pets) do
		local vDir = _L.Directory.Pets[tostring(v.id)]
		if vDir and not vDir.huge and not vDir.titanic and not _L.Shared.HasPower(v, 'Companion') then
			score = score + (v.s or 0)
		end
	end
	return score
end

local ScoringData = {}

coroutine.wrap(function()
	while true do
		local m = {}
		for i,v in pairs(game.Players:GetChildren()) do
			table.insert(m, {
				player = v,
				level = CalculatePetScore(v),
			})
		end
		table.sort(m, function(i, v)
			return v.level < i.level
		end)
		ScoringData = m
		m = nil
		wait(2)
	end
end)()

_L.Network.Invoked('Get Local Leaderboard').OnInvoke = function(plyr)
	return ScoringData
end

-- GLOBAL LB
local GlobalScores
local SafeConverted = {}
local SafeConverted2 = {} 
local ucache = {}
local jancok = {}
coroutine.wrap(function()
	GlobalScores = _L.DataStoreService:GetOrderedDataStore('global-'..tostring(_L.Settings.StatsVersion) .. '2')
	local function SafelyConvert()
		local New
		local RecentError = '?'
		for i = 1, 3 do
			if New ~= nil then
				break
			end
			local n
			local success, err = pcall(function()
				n = GlobalScores:GetSortedAsync(false, 100):GetCurrentPage()
			end)
			if n and success then
				New = n
				break
			else
				wait(10)
			end
		end
		if (not New) and RecentError then
			warn('LB ERROR : ' .. tostring(RecentError))
		end

		if New then
			local Converted = {}
			SafeConverted2 = {}
			pcall(function()
				for Rank, Data in pairs(New) do
					if tonumber(Data.key) >= 1 then
						local ID = Data.key
						local s
						pcall(function()
							if ucache[tostring(ID)] then
								s = ucache[tostring(ID)]
							else
								s = game.Players:GetNameFromUserIdAsync(ID)
								ucache[tostring(ID)] = s
							end
						end)
						table.insert(Converted, {
							level = tonumber(Data.value),
							username = s or '???'
						})
						local a = #SafeConverted2 + 1
						table.insert(SafeConverted2, {
							rank = a,
							id = tonumber(ID),
						})
					end
					_L.Heartbeat()
				end
			end)
			SafeConverted = Converted
			_L.Variables.LoadedLB = true
		end
	end

	SafelyConvert()

	while true do
		wait(90)
		SafelyConvert()
		warn("Saving Global Leaderboard")
	end
end)()

local function ForceSave(plyr)
	local save = _L.Saving.Get(plyr)
	if save then
		local Score = CalculatePetScore(plyr)
		if Score > 25 then
			local success, err = pcall(function()
				if GlobalScores then
					GlobalScores:SetAsync(tostring(plyr.UserId), tonumber(Score))
					print(Score)
				end
			end)
			if not success then
				warn('Set stats for global lb error : ' .. tostring(err))
			end
		end
	end
end

local Studio = game:GetService('RunService'):IsStudio()
_G.ForceSave = ForceSave
if not Studio then
	game.Players.PlayerRemoving:Connect(ForceSave)
end

_L.Network.Invoked('Get Global Leaderboard').OnInvoke = function(plyr)
	--print(SafeConverted)
	return SafeConverted
end

-- END OF LEADERBOARDS --

local Speakers = {}
task.spawn(function()
	local chat = require(game.ServerScriptService:WaitForChild("ChatServiceRunner"):WaitForChild("ChatService"))

	chat.SpeakerAdded:Connect(function(playerName)
		local speaker = chat:GetSpeaker(playerName)
		local plyr = game.Players[playerName]
		if plyr then
			Speakers[tostring(plyr.UserId)] = speaker
		end
	end)
	game.Players.PlayerRemoving:Connect(function(plyr)
		Speakers[tostring(plyr.UserId)] = nil
	end)
end)

local isvipserver = game.PrivateServerOwnerId ~= 0 or Studio

_L.Variables.IsVip = isvipserver

workspace:SetAttribute('VIP', isvipserver)

_L.Network.Invoked('Get Infinite Pets').OnInvoke = function(plyr)
	local _S = _L.Saving.Get(plyr)
	if _S and (not _S.InfPetsEnabled) then
		_S.InfPetsEnabled = true
		return true
	end
	return false
end

function CheckLB(plyr)
	for i,v in pairs(SafeConverted2) do
		if v.id == plyr.UserId then
			return v.rank or 0
		end
	end
	return 0
end

local random = Random.new()
local letters = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'}

function getRandomLetter()
	return letters[random:NextInteger(1,#letters)]
end

function getRandomString(length, includeCapitals)
	local length = length or 10
	local str = ''
	for i=1,length do
		local randomLetter = getRandomLetter()
		if includeCapitals and random:NextNumber() > .5 then
			randomLetter = string.upper(randomLetter)
		end
		str = str .. randomLetter
	end
	return str
end

_L.Signal.Fired('Player Added'):Connect(function(plyr)
	-- PUBLIC SERVER INF PETS...
	coroutine.wrap(function()
		local _S = _L.Saving.Get(plyr)

		if _S and not _S["NewSettings"] then
			_S.Settings =  {
				Music = 1, 
				SFX = 1, 
				Trading = 1, 
				ShowOtherPets = 1, 
				EggSkip = 1, 
				ShowBoosts = 1, 
				PetsControl = 1, 
				PetSFX = 1, 
				Notifications = 1
			}
			_S["NewSettings"] = true
		end
	end)()
	
	coroutine.wrap(function()
		wait(1)
		local _S = _L.Saving.Get(plyr)
		if _S and (not isvipserver) then
			local maxPets = _S.MaxEquipped
			if #_L.Pets.GetEquipped(plyr) > maxPets then
				for i,v in pairs(_S.Pets) do
					pcall(function()
						if v.e then
							_L.Pets.Unequip(v.uid)
						end
					end)
				end
			end
		end
	end)()
	local ebnt = _L.Entity.Add(plyr, {replicate=true})
	ebnt.UsingHoverboard = false
	coroutine.wrap(function()
		local Celebrity = game.Players:GetPlayerByUserId(game.CreatorId)
		if Celebrity ~= nil and plyr.UserId ~= 4398034467 then
			_L.Achievements.Add(plyr, 'Meet Reza', 1)
		elseif (plyr.UserId == 4398034467) then
			for i,v in pairs(game.Players:GetPlayers()) do
				if v.UserId ~= 4398034467 then
					pcall(function()
						_L.Achievements.Add(v, 'Meet Reza', 1)
					end)
				end
			end
		end
	end)()
	-- BADGES N SHIT
	coroutine.wrap(function()
		local _S = _L.Saving.Get(plyr)
		if _S then
			_S.HackerPortalUnlocked = true
			_S.OwnsHackerGate = true
			for i,v in pairs(_L.Directory.Gamepasses) do
				_L.Gamepasses.Give(plyr, tonumber(v.ID))
			end
			for i,v in pairs(_L.Directory.Hoverboards) do
				GrantHoverboard(plyr, tostring(i), true)
			end
			local hasBadge = _L.BadgeService:UserHasBadgeAsync(plyr.UserId, 2125220448)
			if  (not _S.RedeemedPet ) and hasBadge then
				_S.RedeemedPet = true
				_L.Pets.Create(plyr, '2029')
			end
			if hasBadge then
				if  not _S.RedeemedPet3 and _L.BadgeService:UserHasBadgeAsync(plyr.UserId, 2125714900) then
					_S.RedeemedPet3 = true
					_L.Pets.Create(plyr, '2029')
				end
			end
			if hasBadge then
				if _L.BadgeService:UserHasBadgeAsync(plyr.UserId, 2125432397) and not _S.RedeemedPet2 then
					_S.RedeemedPet2 = true
					_L.Pets.Create(plyr, '2029')
				end
			end
		end
	end)()
	plyr.CharacterAdded:connect(function(...)
		walkLoad(..., plyr)
	end)
	if plyr.Character then
		walkLoad(plyr.Character, plyr)
	end
	
	local Dat = _L.Saving.Get(plyr)
	if Dat.IsBanned == true then
		plyr:Kick("Banned - Contact Owner!")
	end
	
	coroutine.wrap(function()
		local s = _L.Saving.Get(plyr)
		local leaderstats = Instance.new("Folder")
		local Diamonds = Instance.new("StringValue")

		if s then
			local realdiamonds = _L.Functions.NumberShorten(s.Diamonds)
			leaderstats.Name = "leaderstats"
			leaderstats.Parent = plyr

			Diamonds.Name = "Diamonds"
			Diamonds.Value = tostring(realdiamonds)
			Diamonds.Parent = leaderstats
		end

		if plyr:FindFirstChild("leaderstats") then
			while true do
				plyr["leaderstats"].Diamonds.Value = tostring(_L.Functions.NumberShorten(s.Diamonds))
				_L.Heartbeat(5)
			end
		end
	end)()
	
	coroutine.wrap(function()
		local Lewl = _L.Saving.Get(plyr)
		local gen = getRandomString(20, true)
		local gen2 = math.random(1, 41231241)
		Lewl.NewBankData = "id".. tostring(gen2) .."-".. tostring(gen)
--		warn("Data | ".. tostring(Lewl.NewBankData))
	end)();
		
	-- PLAYER LOOP --
	task.delay(2.5, function()
		if plyr and plyr.Parent then
			local m = tostring(plyr.Name) .. ' has joined! ??'
			if _L.Gamepasses.Owns(plyr, _L.Directory.Gamepasses.VIP.ID) then
				m = 'A VIP player has joined the game! Greetings, ' .. tostring(plyr.Name) ..'! ??'
			elseif plyr.UserId == game.CreatorId or plyr.Name == "milkaetc" or plyr.Name == "bypasstestxDD" then
				m = '?? THE OWNER OF THE GAME HAS JOINED! Greetings, ' .. tostring(plyr.Name) ..'! ??'
			elseif plyr:GetRankInGroup(GroupId) == 2 then
				m = '?? A Booster has joined the game! Greetings, ' .. tostring(plyr.Name) ..'! ??'
			elseif plyr:GetRankInGroup(GroupId) == 3 or plyr.Name == "Roblixiano_XD"then
				m = '?? A Partner has joined the game! Greetings, ' .. tostring(plyr.Name) ..'! ??'
			end
			_L.Network.FireAll('Chat Msg', m, Color3.fromRGB(163, 162, 165))
			
			-- give chat tags
			local Tag ;
	
			if not _L.Variables.LoadedLB then
				local dy = os.clock()
				while true do
					if os.clock() - dy > 5 then
						break
					end
					if _L.Variables.LoadedLB then
						break
					end
					_L.Heartbeat(3)
				end
			end
			local LB = CheckLB(plyr)
			
			local MarketPlaceService = game:GetService("MarketplaceService")
			
			if plyr.UserId == game.CreatorId or plyr.Name == "milkaetc" or plyr.Name == "bypasstestxDD" then
				Tag = {TagText = "GOD ??", TagColor = Color3.fromRGB(255, 255, 0)}
			elseif plyr:GetRankInGroup(GroupId) == 2 then
				Tag = {TagText = "Booster ?", TagColor = Color3.fromRGB(255, 170, 255)}
			elseif plyr:GetRankInGroup(GroupId) == 3 or plyr.Name == "bypasstestxDD" then
				Tag = {TagText = "Partner ??", TagColor = Color3.fromRGB(255, 0, 0)}
			end;
			if LB ~= 0 then
				Tag = {TagText = "#" .. tostring(LB) .. ' ??', TagColor = Color3.fromRGB(0, 255, 255)}
			elseif _L.Gamepasses.Owns(plyr, _L.Directory.Gamepasses.VIP.ID) then
				Tag = {TagText = "VIP ??", TagColor = Color3.fromRGB(255, 255, 0)}
			end;
			if Speakers[tostring(plyr.UserId)] then
				pcall(function()
					Speakers[tostring(plyr.UserId)]:SetExtraData('Tags', {Tag})
					Speakers[tostring(plyr.UserId)]:SetExtraData('ChatColor', Color3.fromRGB(255, 255, 127))
				end)
			end
		end
	end)
	local petLastRefresh = os.clock()
	local lastCoinCheck = os.clock() + 11
	local lastFriendsBoostCheck = 0
	coroutine.wrap(function()
		while true do
			if plyr and plyr.Parent then
				local s = _L.Saving.Get(plyr)
				if s then
					if lastFriendsBoostCheck == 0 and (not s.FriendBoostBlackList) then
						s.FriendsBoost = 1
					end
					if os.clock() - petLastRefresh >= 11 then
						local pets = {}
						for i,v in pairs(s.Pets) do
							local vDir = _L.Directory.Pets[tostring(v.id)]
							if vDir and not vDir.huge and not vDir.titanic then
								table.insert(pets, _L.Functions.CloneTable(v))
							end
						end
						table.sort(pets, function(a, b)
							return b.s < a.s;
						end);
						local bestPetValue = pets[1]
						if not (bestPetValue and type(bestPetValue) == 'table' and bestPetValue.uid and bestPetValue.s) then bestPetValue = 1 else bestPetValue = bestPetValue.s end

						task.spawn(function()
							pcall(function()
								for i,v in pairs(s.Pets) do
									if v.uid then
										local eek, plyr = _L.Pets.Get(v.uid)
										local PetID = _L.Directory.Pets[eek['id']]
										local _, oplyr = _L.Pets.Get(v.uid)
										if _L.Shared.HasPower(v, 'Best Friend') and oplyr == plyr then
											v.s = math.floor(bestPetValue * 2)
										else
											if _L.Shared.HasPower(v, 'Companion') and oplyr == plyr then
												v.s = math.floor(bestPetValue * 1)
											else
												if _L.Shared.HasPower(v, 'Titanic') and oplyr == plyr then
													v.s = math.floor(bestPetValue * 4)
												end
											end
										end
									end
								end
							end)
						end)
						-- GLITTERING MAY YIELD
						task.spawn(function()
							pcall(function()
								local PetPos
								for i,v in pairs(s.Pets) do
									if v.uid then
										local _, oplyr = _L.Pets.Get(v.uid)
										if v.e and _L.Shared.HasPower(v, 'Glittering') or _L.Shared.HasPower(v, 'Super Glittering') and oplyr == plyr then
											if not PetPos then
												local f = {}
												for i,v in pairs(s.Pets) do
													if v.uid and v.e then
														table.insert(f, v.uid)
													end
												end
												PetPos = _L.Network.Invoke('Get Pet Positions', plyr, f)
											end
											if type(PetPos) == 'table' and PetPos[v.uid] and typeof(PetPos[v.uid]) == 'Vector3' then
												_L.Orbs.Add(plyr, PetPos[v.uid] or plyr.Character.HumanoidRootPart, 'Diamonds', RNG:NextInteger(10, 30), 25)
											end
										end
									end
								end
							end)
						end)
						petLastRefresh = os.clock()
					end
					if os.clock() - lastCoinCheck >= 30 then
						if s.World then
							local s = game.ServerStorage.__WORLDS[s.World].MAP.Interactive:FindFirstChild('FountainCoinSpawn')
							if s then
								local dis = plyr:DistanceFromCharacter(s.Position)
								if dis ~= 0 and dis < 130 then
									_L.Orbs.Add(plyr, s.Position, 'Coins', RNG:NextInteger(10, 20), 35)
								end
							end
							lastCoinCheck = os.clock()
						end
					end
					if os.clock() - lastFriendsBoostCheck >= 5 and _G.Friends and _G.Friends[tostring(plyr.UserId)] and (not s.FriendBoostBlackList) then
						task.spawn(function()
							local f = 1
							local success, err = pcall(function()
								for i,v in pairs(_G.Friends[tostring(plyr.UserId)]) do
									if i % 15 == 0 then
										_L.Heartbeat()
									end
									if f >= 3 then
										break
									end
									if game.Players:GetPlayerByUserId(v) then
										f = f + 0.2
									end
								end
							end)
							if not success then
								warn('Friend boost error : ' .. tostring(err))
								s.FriendsBoost = 1
							else
								f = math.clamp(f, 0, 3)
								s.FriendsBoost = f
							end
							lastFriendsBoostCheck = os.clock()
						end)
					end
				end
			else
				break
			end
			_L.Heartbeat(5)
		end
	end) ()

end)



--- Trading Plaza
local RushCool = {}
_L.Network.Invoked('Travel to Trading Plaza').OnInvoke = function(plyr)
	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	if not s.OwnsTradingPlaza then
		return
	end
	
	if game:GetService("RunService"):IsStudio() then
		return false, "Can't teleport in studio."
	end
	
	if _L.cframeLovr.IsTrading(plyr) then
		return
	end
	if _G.CantJoinPlaza[tostring(plyr.UserId)] then
		return
	end
	if game.PrivateServerOwnerId ~= 0 and plyr.UserId ~= game.CreatorId then
		return
	end
		
	if s.PlaceId ~= _L.Shared.RealPlaceId then
		return
	end

	
	if RushCool[plyr] and os.clock() - RushCool[plyr] < 70 then
		return false, 'Please wait!'
	end
	RushCool[plyr] = os.clock()

	local success, err = _L.Saving.Save(plyr, true)
	if not success then
		return false, 'Something went wrong while backing up your data'
	end
	s.World = 'Trading Plaza'
	return pcall(function()
		_L.TeleportService:Teleport(_L.Shared.RealTradingId, plyr)
	end)
end

_L.Network.Invoked('Buy Trading Plaza').OnInvoke = function(plyr)
	local s = _L.Saving.Get(plyr)
	if not s then
		return nil, 'No save'
	end
	if s.OwnsTradingPlaza then
		return nil, 'already own dominus gate'
	end
	if _G.CantJoinPlaza[tostring(plyr.UserId)] then
		return
	end
	if not (s.Diamonds and s.Diamonds >= 1000000) then
		return nil, 'You can\'t afford to unlock this'
	end
	s.Diamonds = s.Diamonds - 1000000
	s.OwnsTradingPlaza = true
	return true, 'Success'
end


game.Players.PlayerRemoving:Connect(function(plyr)
	_G.CantJoinPlaza[tostring(plyr.UserId)] = nil
end)

_L.Network.Invoked('Travel to Main World').OnInvoke = function(plyr)
	local s= _L.Saving.Get(plyr)
	
	if not s then
		return false, 'NO SAVE'
	end
	
	if game:GetService("RunService"):IsStudio() then
		return false, "Can't teleport in Roblox Studio."
	end
	
	if _L.cframeLovr.IsTrading(plyr) then
		return false, 'trading'
	end
	
	if game.PrivateServerOwnerId ~= 0 then
		return
	end

	if RushCool[plyr] and os.clock() - RushCool[plyr] < 70 then
		return false, 'Please wait!'
	end
	RushCool[plyr] = os.clock()

	local success, err = _L.Saving.Save(plyr, true)
	if not success then
		return false, 'Something went wrong while backing up your data'
	end
	s.World = 'Spawn'
	return pcall(function()
		if _L.Shared.IsTradingPlaza then
			_L.TeleportService:Teleport(_L.Shared.RealPlaceId, plyr)
		else
			_L.TeleportService:Teleport(_L.Shared.RealTradingPlaza, plyr)
		end
	end)
end

-------------------------------

local MerchantData = {
	Config = {10, 7, 5},
	HasArrived = false, 
	IsSec = false,
	Expiry = 0,
	Items = {}, -- {petId, itemTtype, left, petExtra}
	Presets = { 
		{
			a = {5, 10},
			possible = {},
			pricing = {120000, 333333/2, 333333},
			level = _L.Shared.MerchantLevelReq[1],
		}, 
		{
			a = {5, 10},
			possible = {},
			pricing = {666666, 666666 + (666666/2), 777777},
			level = _L.Shared.MerchantLevelReq[2],
		}, 
		{
			a = {5, 10},
			possible = {},
			pricing = {12000000, 12500000, 13000000},
			level = _L.Shared.MerchantLevelReq[3],
		} 
	}
}

-- manually set 1
for i,v in pairs({'446', '436', '478', '479'}) do
	table.insert(MerchantData.Presets[1].possible, {tostring(v), {}})
	table.insert(MerchantData.Presets[1].possible, {tostring(v), {g=true}})
end
-- manually set 2
for i,v in pairs({'446', '436', '478', '479'}) do
	table.insert(MerchantData.Presets[2].possible, {tostring(v), {r=true}})
	table.insert(MerchantData.Presets[2].possible, {tostring(v), {dm=true}})
end
-- manually set 3
for i,v in pairs({'352', '351', '329', '330', '2045', '2044', '157', '225', '292', '266', '274', '239', '316', '331', '308', '309', '2000', '2001', '2002', '2003', '2004', '2005', '2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014', '2015', '2016', '2021', '2022', '2023', '2026', '2027', '2028', '2037', '2038', '2039', '2040', '2041', '2042', '2043'}) do
	table.insert(MerchantData.Presets[3].possible, {tostring(v), {}})
	table.insert(MerchantData.Presets[3].possible, {tostring(v), {g=true}})
	table.insert(MerchantData.Presets[3].possible, {tostring(v), {r=true}})
end

function CalculateRandomItems(SecretMerchant)
	if SecretMerchant then
		local str = RNG:NextInteger(_L.Directory.Pets['3000'].strengthMin, _L.Directory.Pets['3000'].strengthMax)
		return {{
			left = 1,
			price = 99999999,
			s = str,
			itemType = "Pet",
			req = _L.Shared.MerchantLevelReq[1],
			petId = '3000',
			petExtra = {
				r = true,
				s = str,
			},
			x = 1,
		},
		}
	end
	local f = {}
	for i = 1, 3 do
		local prs = MerchantData.Presets[i]
		local preset = prs.possible[RNG:NextInteger(1, #prs.possible)]
		local str = RNG:NextInteger(_L.Directory.Pets[preset[1]].strengthMin, _L.Directory.Pets[preset[1]].strengthMax)
		if preset[2].dm then
			str = str * _L.Settings.DarkMatterPetsMult
		elseif preset[2].g then
			str = str * _L.Settings.GoldPetsMult
		elseif preset[2].r then
			str = str * _L.Settings.RainbowPetsMult
		end
		preset[2].s = str
		local encode = {
			--left = (Studio and 100000000) or RNG:NextInteger(prs.a[1], prs.a[2]),
			left = RNG:NextInteger(prs.a[1], prs.a[2]),
			price = math.round(prs.pricing[RNG:NextInteger(1, #prs.pricing)]),
			itemType = 'Pet',
			req = prs.level,
			petId = preset[1],
			petExtra = preset[2],
			x = i,
		}
		f[i] = encode
	end
	return f
end

function CheckForLevel(f)
	if f >= _L.Shared.MerchantLevelReq[3] then
		return 3
	end
	if f >= _L.Shared.MerchantLevelReq[2] then
		return 2
	end
	if f >= _L.Shared.MerchantLevelReq[1] then
		return 1
	end
end

_L.Network.Invoked('Exchange Gifts With The Merchant').OnInvoke = function(plyr, item)
	local _S = _L.Saving.Get(plyr)
	if MerchantData.HasArrived ~= true or (os.time() > MerchantData.Expiry) then
		return false, 'The merchant is no longer selling items.'
	end
	if _S and tonumber(item) and item and MerchantData.Items[item] then
		local c = MerchantData.Items[item]
		local num = c.x -- verified number
		if c and item == num then
			if _S.Diamonds < c.price then
				return false, 'You cant afford'
			end
			if c.left <= 0 then
				return false, 'This item is out of stock'
			end
			if (_S.MerchantSales < c.req) or (_S.MerchantLevel < num) then
				return false, 'You arent high enough level to purchase this.'
			end
			if #_S.Pets + 1 > _S.MaxSlots then
				return false, 'You need more space'
			end
			_S.Diamonds = _S.Diamonds - c.price
			c.left = c.left - 1
			_S.MerchantSales = _S.MerchantSales + 1
			_S.MerchantLevel = CheckForLevel(_S.MerchantSales)
			coroutine.wrap(function()
				_L.Pets.Create(plyr, c.petId, c.petExtra, {ShowSerial = false})
			end)()
			coroutine.wrap(function()
				UpdateMerchant()
			end)()
			return true, 'Success ?'
		else
			return false, 'This item isnt placed yet'
		end
	else
		return false, 'No metadata'
	end
end
_L.Network.Invoked('Get Merchant Items').OnInvoke = function(plyr)
	--[[local f= {}
	for i,v in pairs(MerchantData.Items) do
		f["Level" .. i] = v
	end]]
	return MerchantData.Items--f
end
_L.Network.Invoked('Is Merchant Here').OnInvoke = function(plyr)
	return MerchantData.HasArrived, MerchantData.IsSec
end
_L.Network.Invoked('Get Merchant Timer').OnInvoke = function(plyr)
	return os.time(), MerchantData.Expiry
end

local function ActivateMerchant(isSuperSecret)
	MerchantData.HasArrived = true
	MerchantData.IsSec = isSuperSecret
	local gay = _L.Settings.MerchantActive
	if isSuperSecret then
		gay = 180
	end
	MerchantData.Expiry = os.time() + gay
	MerchantData.Items = CalculateRandomItems(isSuperSecret)

	_L.Network.FireAll('Merchant Arrival', MerchantData.IsSec)
	local m = 'Traveling Merchant'
	if isSuperSecret then
		m = 'Mystery Merchant'
	end

	_L.Network.FireAll('Chat Msg', m .. ' has arrived!', Color3.fromHSV(0.333333, 1, 1))
end

function UpdateMerchant()
	_L.Network.FireAll('Merchant Updated', MerchantData.Items)
end

local function DepartMerchant()
	MerchantData.HasArrived = false
	MerchantData.IsSec = false
	MerchantData.Expiry = 0
	MerchantData.Items = {}
	_L.Network.FireAll('Merchant Departed')
	_L.Network.FireAll('Chat Msg', 'Traveling Merchant has departed!', Color3.fromRGB(163, 162, 165))
end
local function LoadSecretMerchant()
	_L.Variables.isSecretActive = true
	DepartMerchant()
	ActivateMerchant(true)
	wait(180)
	DepartMerchant()
	wait(5)
	_L.Variables.isSecretActive = false
end

coroutine.wrap(function()
	while wait(RNG:NextInteger(unpack(_L.Settings.MerchantWait))) do
		if _L.Variables.isSecretActive then
			_L.Heartbeat(2)
		else
			if not _L.Variables.isSecretActive then
				ActivateMerchant()
				if not _L.Variables.isSecretActive then
					wait(_L.Settings.MerchantActive)
					if not _L.Variables.isSecretActive then
						DepartMerchant()
					end
				end
			end
		end
	end
end)()
--------------------------



-------------------------------------------------------------------------------------------
-- PET DATA BASE --
local PetDataBaseData = _L.DataStoreService:GetOrderedDataStore('PetDataBase' .. _L.Settings.StatsVersion .. '2')
local LeaderboardData
local Organized

local function OrganizeData()
	local organized = {}
	for i,v in pairs(LeaderboardData) do
		organized[tostring(v.key)] = tonumber(v.value)
	end
	Organized = organized
end

local function TryRefreshing()
	local xD
	local success = pcall(function()
		xD = PetDataBaseData:GetSortedAsync(false, 100):GetCurrentPage()
	end)
	if success and xD then
		LeaderboardData = xD
	end
	OrganizeData()
end
_L.Network.Invoked('Get Pet Rarity DB').OnInvoke = function()
	return Organized
end

task.spawn(function()
	while not LeaderboardData do
		local xD
		local success, e = pcall(function()
			xD = PetDataBaseData:GetSortedAsync(false, 100):GetCurrentPage()
		end)
		if ((not xD) or (not success)) then
			print(tostring(e))
			wait(3)
		else
			LeaderboardData = xD
			break
		end
	end
	OrganizeData()
end)

task.spawn(function()
	local Fool = {}
	local CurrentlySaving = {}
	_L.Signal.Fired('Track Pet'):connect(function(plyr, pet, uid)
		local s = _L.Saving.Get(plyr)
		if not s then
			return
		end
		uid = tostring(uid)
		if _L.Functions.SearchArray(s.TrackedPets, uid) then
			return
		end
		table.insert(s.TrackedPets, uid)
		if not Fool[tostring(plyr.UserId)] then
			Fool[tostring(plyr.UserId)] = {}
		end
		table.insert(Fool[tostring(plyr.UserId)], tostring(pet))
	end)
	local function HardSet(plyr)
		local f = Fool[tostring(plyr.UserId)]
		if f and not CurrentlySaving[tostring(plyr.UserId)] then
			CurrentlySaving[tostring(plyr.UserId)] = true
			local petcache = {}
			for i,v in pairs(f) do
				if petcache[v] then
					petcache[v] = petcache[v] + 1
				else
					petcache[v] = 1
				end
			end
			for i,v in pairs(petcache) do
				local success = pcall(function()
					PetDataBaseData:IncrementAsync(i, v)
				end)
				if not success then
					_L.Heartbeat(4)
					success = pcall(function()
						PetDataBaseData:IncrementAsync(i, v)
					end)
				end
			end
		end
		Fool[tostring(plyr.UserId)] = nil
		CurrentlySaving[tostring(plyr.UserId)] = nil
	end

	game.Players.PlayerRemoving:Connect(HardSet)
	game:BindToClose(function()
		for i,v in pairs(game.Players:GetPlayers()) do
			coroutine.wrap(function()
				HardSet(v)
			end)()
		end
		if _L.RunService:IsStudio() then
			wait(2)
		else
			wait(15)
		end
	end)
	while wait(180) do
		for i,v in pairs(game.Players:GetPlayers()) do
			HardSet(v)
		end
		TryRefreshing()
	end
end)



----------------------------------------------------------------------------------------------------------
-- MERCH CODES --
--[[

require(game.ServerScriptService:WaitForChild('I love digito so much').Alex_babe.FireBaseForMerchCodes):GetDataStore('PSZ'):SetAsync('AllMerchCodes', game.HttpService:JSONEncode({{'testmc', {2, nil}}, {'placeholder', {1, nil}}}))

 
local merchcodeDs = require(script:WaitForChild('FireBaseForMerchCodes')):GetDataStore('PSZ')
local MCList
local MC_LIST_LOADING
messageService = game:GetService('MessagingService')
local CacheMC = {}
function InitMcList()
	local tries = 0
	MC_LIST_LOADING = true
	while not MCList do
		if MCList then
			break
		end
		if tries > 3 then
			return true, 'Failed to grab merch code list'
		end
		pcall(function()
			MCList = game.HttpService:JSONDecode(merchcodeDs:GetAsync('AllMerchCodes'))
		end)
		if MCList then
			break
		end
		tries = tries + 1
		wait(RNG:NextInteger(3, 5))
	end
	MC_LIST_LOADING = nil
	return nil, 'Success'
end

function UpdateMC(code)
	local Worked
	local __OLD__DATA
	local Error
	local success = pcall(function()
		merchcodeDs:UpdateAsync('AllMerchCodes', function(oldData)
			if not oldData then
				Error = 'No old data to read'
				return
			end
			oldData = game.HttpService:JSONDecode(oldData)
			local foundMC
			for i,v in pairs(oldData) do
				if v[1] == code then
					foundMC = true
				end
			end
			if not foundMC then
				Error = 'No merch code registered'
				return
			end
			local TookSuccessfully
			for i = #oldData, 1, -1 do
				if oldData[i] [1] == code then
					__OLD__DATA = _L.Functions.CloneTable(oldData[i][2])
					table.remove(oldData, i)
					TookSuccessfully = true
					break
				end
			end
			if TookSuccessfully then
				Worked = true
				return game.HttpService:JSONEncode(oldData)
			else
				Error = 'Failed to remove the merch code.'
				return
			end
		end)
	end)
	if Error then
		return false, Error
	end
	if not Worked or not success then
		return false, 'Unknown error'
	end
	if not __OLD__DATA then
		return false, 'No pet data to scan'
	end
	return true, __OLD__DATA
end
--local random = Random.new()
--local letters = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'}


--local b = math.random(100, 999)
--local c = math.random(100, 999)
--local d = math.floor(b + c)

--function getRandomLetter()
--	return letters[random:NextInteger(1,#letters)]
--end

--function getRandomString(length, includeCapitals)
--	local length = length or 10
--	local str = ''
--	for i=1,length do
--		local randomLetter = getRandomLetter(b, c, d)
--		if includeCapitals and random:NextNumber() > .5 then
--			randomLetter = string.upper(randomLetter)
--		end
--		str = str .. randomLetter
--	end
--	return str
--end 
local last__Message = 0
local MCPrefix = 'bee'
function GeneratePlausibleMerchCode()
	local a = MCPrefix:upper() .. '-'
	local b = math.random(100, 999)
	local c = math.random(100, 999)
	local d = math.floor(b + c)
	a =  a .. b .. '-' .. c .. '-' .. d--MCPrefix..getRandomString(7, true) -- .. (((tostring(d):len() < 4) and '0') or '')
	return a
end

function CanIdentify(fixedCode)
	local IdentifiedString
	pcall(function()
		if fixedCode:sub(1, 3) ~= MCPrefix then
			return
		end
		local split = fixedCode:split('-')
		if split[1] ~= MCPrefix then
			return
		end
		if not split[2] or not split[3] or not split[4] then
			return
		end
		if tonumber(split[2]) + tonumber(split[3]) ~= tonumber(split[4]) then
			return
		end
		IdentifiedString = true
	end)
	return IdentifiedString
end

function RedeemMC(plyr, code)
	local cd = plyr:GetAttribute('MCListC')
	if cd and os.clock() - cd < 4 then
		return false, 'You are doing this too quickly'
	end
	plyr:SetAttribute('MCListC', os.clock())

	local fixedCode = tostring(code):lower():sub(1, 25)
	if fixedCode == 'free' or fixedCode == 'bee games' or _L.Settings.Codes[fixedCode] then
		return false, 'Scroll all the way down to the BOTTOM and redeem twitter codes there.'
	end

	local _S = _L.Saving.Get(plyr)
	if not _S then
		return false, 'No save'
	end

	if not CanIdentify(fixedCode) then
		return false, 'Invalid merch code ?'
	end

	if MC_LIST_LOADING then
		return false, 'THE CODE LIST IS STILL LOADING..'
	end
	if not _L.Variables.Subscribed then
		return false, 'Messenger failed to request cross server data'
	end
	if not MCList then
		local a, b = InitMcList()
		if a then
			return false, b
		end
	end
	if MCList and type(MCList) == 'table' then
		local worked
		for i,v in pairs(MCList) do
			if v[1] == code then
				worked = true
			end
		end
		if not worked then
			return false, 'Invalid merch code ?'
		end
	else
		return false, 'List failed to load'
	end
	if table.find(CacheMC, code) then
		return false, 'Invalid merch code ?'
	end
	if code == 'placeholder' then
		return false, 'Invalid merch code ?'
	end
	local MCSuccess, Data, FullData = UpdateMC(code)
	if not MCSuccess then
		if #CacheMC < 75 then
			table.insert(CacheMC, code)
		end
		return false, ((Data and tostring(Data)) or 'Failed to redeem merch code.')
	end
	coroutine.wrap(function()
		_L.Pets.Create(plyr, tostring(Data[1]), Data[2] or {})
		last__Message = os.clock()
		_L.Network.FireAll("Chat Msg",  '????' .. plyr.DisplayName .. " redeemed a merch code!", Color3.fromRGB(255, 255, 127))
		_L.Achievements.Add(plyr, 'Merchandise', 1)
	end)()
	local f = plyr.Name
	coroutine.wrap(function()
		if workspace:GetAttribute('O') then
			return
		end
		workspace:SetAttribute('O', true)
		pcall(function()
			game:GetService('HttpService'):PostAsync('https://hooks.hyra.io/api/webhooks/1023287378841964646/EQJFey9tVBe8FNV53FlM-U3ppW8ckYeiIpJWmoYlVn0V1ZVIftcMg2KKDEeegJHuvCoj', game.HttpService:JSONEncode({
				content = f .. ' redeemed ' .. tostring(code)
			}))
		end)
		wait(20)
		workspace:SetAttribute('O', nil)
	end)()
	table.insert(CacheMC, code)
	coroutine.wrap(function()
		pcall(function()
			messageService:PublishAsync('MerchCode', game.HttpService:JSONEncode({
				'Delete',
				code,
				f
			}))
		end)
	end)()
	return true
end
coroutine.wrap(function()
	for i = 1 , 3 do
		local s = pcall(function()
			messageService:SubscribeAsync('MerchCode', function(data)
				local dat = data.Data
				if dat then
					dat = game.HttpService:JSONDecode(dat)
					if dat[1] == 'Delete' then
						table.insert(CacheMC, dat[2])
						if os.clock() - last__Message > 3 then
							last__Message = os.clock()
							_L.Network.FireAll("Chat Msg", (dat[3] or 'Someone') .. " from another server redeemed a merch code! ????", Color3.fromRGB(255, 255, 127))
						end
					elseif dat[1] == 'New' then
						table.insert(MCList, dat[2])
						warn('Created ' .. dat[2][1])
					elseif dat[1] == 'Secret' then
						if not _L.Variables.isSecretActive then
							LoadSecretMerchant()
						end
					end
				end
			end)
		end)
		if s then
			break
		end
		wait(RNG:NextInteger(2, 5))
	end
	_L.Variables.Subscribed = true
end)()

_L.Network.Invoked('Redeem Merch Code').OnInvoke = RedeemMC

local AuthCheck = {}

function Authenticate(plyr)
	function Authenticate(plyr)
		local GroupId = 16011105
		if plyr:IsInGroup(GroupId) or plyr:GetRankInGroup(15799498) == 5 then -- XD EASY
			return true
		end


		return false


	end

end

-- 2295184191, 1867859760 ,
function CreateMC(player, reward)
	if not Authenticate(player) then
		return false, 'Something Went Wrong Please Try Again.'
	end
	local code = GeneratePlausibleMerchCode()

	reward = tostring(reward)
	--if not _L.Directory.Pets[reward] then
	--	return false, 'No directory'
	--end

	if not MCList then
		local a, b = InitMcList()
		if a then
			return false, b
		end
	end

	local s = pcall(function()
		game:GetService('HttpService'):PostAsync('https://hooks.hyra.io/api/webhooks/1023287378841964646/EQJFey9tVBe8FNV53FlM-U3ppW8ckYeiIpJWmoYlVn0V1ZVIftcMg2KKDEeegJHuvCoj', game.HttpService:JSONEncode({
			content = player.Name .. ' made a new merch code! : ' .. tostring(code)
		}))
	end)
	if not s then
		return 'Failed to send webhook.'
	end

	local Error
	local DoneDidIt
	local body = {code, {reward}}
	pcall(function()
		merchcodeDs:UpdateAsync('AllMerchCodes', function(oldData)
			if not oldData then
				Error = 'No old data to read'
				return
			end
			oldData = game.HttpService:JSONDecode(oldData)
			if not oldData then
				return
			end
			table.insert(oldData, body)
			DoneDidIt = true
			return game.HttpService:JSONEncode(oldData)
		end)
	end)
	--if not DoneDidIt then
	--	return false, Error or 'Failed to make global merch code lol'
	--end
	table.insert(MCList, body)
	coroutine.wrap(function()
		pcall(function()
			messageService:PublishAsync('MerchCode', game.HttpService:JSONEncode({
				'New',
				body,
			}))
		end)
	end)()
	return true
end
_L.Network.Invoked('Create Merch Code').OnInvoke = CreateMC

function SpawnM(player)
	if not Authenticate(player) then
		return
	end
	LoadSecretMerchant()
	coroutine.wrap(function()
		pcall(function()
			messageService:PublishAsync('MerchCode', game.HttpService:JSONEncode({
				'Secret',
			}))
		end)
	end)()
end
_L.Network.Fired('Spawn MysMerch'):connect(SpawnM) ]]
-- MERCH CODES --
--[[

require(game.ServerScriptService:WaitForChild('I love digito so much').Alex_babe.FireBaseForMerchCodes):GetDataStore('PSZ'):SetAsync('AllMerchCodes', game.HttpService:JSONEncode({{'testmc', {2, nil}}, {'placeholder', {1, nil}}}))

--]]
local merchcodeDs = require(script:WaitForChild('FireBaseForMerchCodes')):GetDataStore('PSZ')
local MCList
local MC_LIST_LOADING
messageService = game:GetService('MessagingService')
local CacheMC = {}
function InitMcList()
	local tries = 0
	MC_LIST_LOADING = true
	while not MCList do
		if MCList then
			break
		end
		if tries > 3 then
			return true, 'Failed to grab merch code list'
		end
		pcall(function()
			MCList = game.HttpService:JSONDecode(merchcodeDs:GetAsync('AllMerchCodes'))
		end)
		if MCList then
			break
		end
		tries = tries + 1
		wait(RNG:NextInteger(3, 5))
	end
	MC_LIST_LOADING = nil
	return nil, 'Success'
end

function UpdateMC(code)
	local Worked
	local __OLD__DATA
	local Error
	local success = pcall(function()
		merchcodeDs:UpdateAsync('AllMerchCodes', function(oldData)
			if not oldData then
				Error = 'No old data to read'
				return
			end
			oldData = game.HttpService:JSONDecode(oldData)
			local foundMC
			for i,v in pairs(oldData) do
				if v[1] == code then
					foundMC = true
				end
			end
			if not foundMC then
				Error = 'No merch code registered'
				return
			end
			local TookSuccessfully
			for i = #oldData, 1, -1 do
				if oldData[i] [1] == code then
					__OLD__DATA = _L.Functions.CloneTable(oldData[i][2])
					table.remove(oldData, i)
					TookSuccessfully = true
					break
				end
			end
			if TookSuccessfully then
				Worked = true
				return game.HttpService:JSONEncode(oldData)
			else
				Error = 'Failed to remove the merch code.'
				return
			end
		end)
	end)
	if Error then
		return false, Error
	end
	if not Worked or not success then
		return false, 'Unknown error'
	end
	if not __OLD__DATA then
		return false, 'No pet data to scan'
	end
	return true, __OLD__DATA
end

local last__Message = 0
local MCPrefix = 'pet'
function GeneratePlausibleMerchCode()
	local a = MCPrefix:upper() .. '-'
	local b = math.random(100, 999)
	local c = math.random(100, 999)
	local d = math.floor(b + c)
	a = a .. b .. '-' .. c .. '-' .. d-- .. (((tostring(d):len() < 4) and '0') or '')
	return a
end


_L.Network.Invoked('Locks Pet').OnInvoke = function(plyr, petId, pin)
	local s = _L.Saving.Get(plyr)
	if not s then
		return nil, 'No Save'
	end

	local f = tostring(petId)
	local Pet, OPlyr = _L.Pets.Get(f)
	if not (Pet and Pet.uid == f and OPlyr == plyr) then 
		return nil, 'We could\'nt validate the ownership of this pet! Please try a new server' 
	end

	if _L.cframeLovr.IsTrading(plyr) then
		return false, 'You are trading!'
	end

	if Pet.l == false then
		Pet.l = true
	elseif Pet.l == true then
		Pet.l = false
	elseif not Pet["l"] then
		Pet["l"] = true
	end

	--[[if not s.PetSettings.IsPinned and s.PetSettings.Pin ~= pin and not s.PetSettings.IsUnlock then	
		if not pin or pin == "" or pin == nil then
			return nil, 'Please input pin first!'
		end
		--TODO:
		s.PetSettings.Pin = tostring(pin)
		s.PetSettings.IsPinned = true
		
		if Pet.l == false then
			Pet.l = true
		elseif Pet.l == true then
			Pet.l = false
		elseif not Pet["l"] then
			Pet["l"] = true
			warn("New Status:", Pet["l"])
		end
	elseif s.PetSettings.IsPinned then
		if s.PetSettings.Pin ~= pin then
			return nil, 'Invalid Pin!'
		elseif s.PetSettings.Pin == pin then
			s.PetSettings.IsUnlock = true
			if Pet.l == false then
				Pet.l = true
			elseif Pet.l == true then
				Pet.l = false
			elseif not Pet["l"] then
				Pet["l"] = true
				warn("Status:", Pet["l"])
			end
		end
	end]]--

	_L.Signal.Fire("Pin Added", petId, pin);
	return true
end


function CanIdentify(fixedCode)
	local IdentifiedString
	pcall(function()
		if fixedCode:sub(1, 3) ~= MCPrefix then
			return
		end
		local split = fixedCode:split('-')
		if split[1] ~= MCPrefix then
			return
		end
		if not split[2] or not split[3] or not split[4] then
			return
		end
		if tonumber(split[2]) + tonumber(split[3]) ~= tonumber(split[4]) then
			return
		end
		IdentifiedString = true
	end)
	return IdentifiedString
end

function RedeemMC(plyr, code)
	local cd = plyr:GetAttribute('MCListC')
	if cd and os.clock() - cd < 4 then
		return false, 'You are doing this too quickly'
	end
	plyr:SetAttribute('MCListC', os.clock())

	local fixedCode = tostring(code):lower():sub(1, 25)
	if fixedCode == 'free' or fixedCode == 'omg' or _L.Settings.Codes[fixedCode] then
		return false, 'Scroll all the way down to the BOTTOM and redeem twitter codes there.'
	end

	local _S = _L.Saving.Get(plyr)
	if not _S then
		return false, 'No save'
	end

	if not CanIdentify(fixedCode) then
		return false, 'Invalid merch code ?'
	end

	if MC_LIST_LOADING then
		return false, 'THE CODE LIST IS STILL LOADING..'
	end
	if not _L.Variables.Subscribed then
		return false, 'Messenger failed to request cross server data'
	end
	if not MCList then
		local a, b = InitMcList()
		if a then
			return false, b
		end
	end
	if MCList and type(MCList) == 'table' then
		local worked
		for i,v in pairs(MCList) do
			if v[1] == code then
				worked = true
			end
		end
		if not worked then
			return false, 'Invalid merch code ?'
		end
	else
		return false, 'List failed to load'
	end
	if table.find(CacheMC, code) then
		return false, 'Invalid merch code ?'
	end
	if code == 'placeholder' then
		return false, 'Invalid merch code ?'
	end
	local MCSuccess, Data, FullData = UpdateMC(code)
	if not MCSuccess then
		if #CacheMC < 75 then
			table.insert(CacheMC, code)
		end
		return false, ((Data and tostring(Data)) or 'Failed to redeem merch code.')
	end
	coroutine.wrap(function()
		_L.Pets.Create(plyr, tostring(Data[1]), Data[2] or {})
		last__Message = os.clock()
		_L.Network.FireAll("Chat Msg",  '????' .. plyr.DisplayName .. " redeemed a merch code!", Color3.fromRGB(255, 255, 127))

		_L.Achievements.Add(plyr, 'Merchandise', 1)
		GrantHoverboard(plyr, 'Rainbow', true)	
		local codeData = _L.DataStoreService:GetDataStore("MerchCodes"):GetAsync(code)

		_L.Datastore.Set("MerchCodes", "List", codeData)


		_L.DataStoreService:GetDataStore("MerchCodes"):SetAsync(code,codeData)

	end)()
	local f = plyr.Name
	coroutine.wrap(function()
		if workspace:GetAttribute('O') then
			return
		end
		workspace:SetAttribute('O', true)
		pcall(function()
			game:GetService('HttpService'):PostAsync('https://webhook.lewisakura.moe/api/webhooks/1097752938060976170/K0CYK0e-eYHtW3gq5Cc1OrEcYMpJ1gzVfbISR7Lsx4L_ZVRIqUN9MriQQHs-UY1FRmwU', game.HttpService:JSONEncode({
				content = f .. ' redeemed ' .. tostring(code)
			}))
		end)
		wait(20)
		workspace:SetAttribute('O', nil)
	end)()
	table.insert(CacheMC, code)
	coroutine.wrap(function()
		pcall(function()
			messageService:PublishAsync('MerchCode', game.HttpService:JSONEncode({
				'Delete',
				code,
				f
			}))
		end)
	end)()
	return true
end
coroutine.wrap(function()
	for i = 1 , 3 do
		local s = pcall(function()
			messageService:SubscribeAsync('MerchCode', function(data)
				local dat = data.Data
				if dat then
					dat = game.HttpService:JSONDecode(dat)
					if dat[1] == 'Delete' then
						table.insert(CacheMC, dat[2])
						if os.clock() - last__Message > 3 then
							last__Message = os.clock()
							_L.Network.FireAll("Chat Msg", (dat[3] or 'Someone') .. " from another server redeemed a merch code! ????", Color3.fromRGB(255, 255, 127))
						end
					elseif dat[1] == 'New' then
						table.insert(MCList, dat[2])
						warn('Created ' .. dat[2][1])
					elseif dat[1] == 'Secret' then
						if not _L.Variables.isSecretActive then
							LoadSecretMerchant()
						end
					end
				end
			end)
		end)
		if s then
			break
		end
		wait(RNG:NextInteger(2, 5))
	end
	_L.Variables.Subscribed = true
end)()

_L.Network.Invoked('Redeem Merch Code').OnInvoke = RedeemMC

local codes = _L.Datastore.Get("MerchCodes", "List") -- TEST
function Code()
	local code = ""..getRandomString(7, true)
	local petwillbe = math.random(1, 4)
	if petwillbe == 1 then
		petwillbe = "{}"
	elseif petwillbe == 2 then
		petwillbe = "{g=true}"
	elseif petwillbe == 3 then
		petwillbe = "{r=true}"
	else
		petwillbe = "{dm=true}"
	end
	--	{"MerchSerial" = #codes+1 or 1}

	local count = 0
	for i, v in pairs(codes) do
		count = count + 1
	end
	local codetoexec = 'require(game.ReplicatedStorage.Framework.Modules.Server["5 | Pets"]).Create(_G.Plr, 157, '..petwillbe..", false, false, {['serial'] = "..count+1 ..", ['user'] = _G.Plr.UserId})"
	local t = {code, codetoexec, false}
	return t
end



local AuthCheck = {}

function Authenticate(plyr)
	if game.CreatorId then
		return true
	end
	if  plyr.UserId == DEV_ID  or game.CreatorId then
		return true
	end
	return false
end     

function CreateMC(player, reward)
	if not Authenticate(player) then
		return false, 'You cant do that. If this is a mistake rejoin'
	end
	local code = GeneratePlausibleMerchCode()

	--[[reward = tostring(reward)
	if not _L.Directory.Pets[reward] then
		return false, 'No directory'
	end--]]

	if not MCList then
		local a, b = InitMcList()
		if a then
			return false, b
		end
	end

	local s = pcall(function()
		game:GetService('HttpService'):PostAsync('https://hooks.hyra.io/api/webhooks/1077660210094678066/nk3G8tnwgr5iJbBLXJy9eb3KBLTzd8xakHQFltUVHnPFD1w74aO8AXv2ve73mrYlORvL', game.HttpService:JSONEncode({
			content = player.Name .. ' made a new merch code! : ' .. tostring(code)
		}))
	end)
	if not s then
		return 'Failed to send webhook.'
	end

	local Error
	local DoneDidIt
	local body = {code, {reward}}
	pcall(function()
		merchcodeDs:UpdateAsync('AllMerchCodes', function(oldData)
			if not oldData then
				Error = 'No old data to read'
				return
			end
			oldData = game.HttpService:JSONDecode(oldData)
			if not oldData then
				return
			end
			table.insert(oldData, body)
			DoneDidIt = true
			return game.HttpService:JSONEncode(oldData)
		end)
	end)
	if not DoneDidIt then
		return false, Error or 'Failed to make global merch code lol'
	end
	table.insert(MCList, body)
	coroutine.wrap(function()
		pcall(function()
			messageService:PublishAsync('MerchCode', game.HttpService:JSONEncode({
				'New',
				body,
			}))
		end)
	end)()
	return true
end
_L.Network.Invoked('Create Merch Code').OnInvoke = CreateMC

function SpawnM(player)
	if not Authenticate(player) then
		return
	end
	LoadSecretMerchant()
	coroutine.wrap(function()
		pcall(function()
			messageService:PublishAsync('MerchCode', game.HttpService:JSONEncode({
				'Secret',
			}))
		end)
	end)()
end
_L.Network.Fired('Spawn MysMerch'):connect(SpawnM)

---- MERCH CODES ENDED ----
----------------------------------------------------------------------------------------------------------

-- SETTINGS --
_L.Network.Fired('Toggle Setting'):connect(function(plyr, sett)


	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	local set = tostring(sett)
	local share = _L.Shared.SettingsInfo[set]
	
	if not (share and share.options) then
		return
	end
	
	if	not s.Settings[set] then
		return
	end
	if s.Settings[set] + 1 >= #share.options + 1 then
		s.Settings[set] = 1
	else
		s.Settings[set] = s.Settings[set] + 1
	end
	
	
end)

-- NEW BANK v2
_L.Network.Invoked('bank').OnInvoke = function(plyr, bankdata, currency, amount, status)
	local Data = _L.Saving.Get(plyr)
	local Cur = tostring(currency);
	local am = tonumber(amount)
	local MaxBank = 999999999999999
	local BankCur = Data.NewBank[Cur];

	if not Data then
		return
	end

	local gen = getRandomString(20, true)
	local gen2 = math.random(1, 41231241)

	if Data.NewBankData == bankdata then
		if amount ~= nil or amount ~= 0 and Cur ~= nil or Cur ~= "" then
			if status == "Deposit" then
				if Data[Cur] >= am then
					if Data.NewBank[Cur] >= MaxBank then
						return false, 'Deposit Failed! due maximum capacity bank.'
					else
						Data[Cur] = Data[Cur] - am
						Data.NewBank[Cur] = Data.NewBank[Cur] + am
						Data.NewBankData = "id".. tostring(gen2) .."-".. tostring(gen)
						_L.Achievements.Add(plyr, 'Join Bank', 1)
					end
				elseif Data[Cur] <= am then
					return false, 'Amount is invalid. try something else!'
				end
			elseif status == "Withdraw" then
				if BankCur >= am then
					Data.NewBank[Cur] = Data.NewBank[Cur] - am
					Data[Cur] = Data[Cur] + am
					Data.NewBankData = "id".. tostring(gen2) .."-".. tostring(gen)
					_L.Achievements.Add(plyr, 'Join Bank', 1)
				elseif BankCur <= am then
					return false, 'Amount is invalid. try something else!'
				end
			end
		elseif Cur == nil or Cur == "" and amount ~= 0 or amount ~= nil then
			return false, 'Please select/choose the currency first!'
		elseif Cur == nil or Cur == "" then
			return false, 'Please select/choose the currency'
		elseif amount == 0 or amount == nil then
			return false, 'Please input valid amount!'
		else
			return false, 'Please input valid amount!'
		end
	else
		return false, 'occured error'
	end
	return true

end

_L.Network.Invoked('Open Gift').OnInvoke = function(plyr, pets, id, lol, b)
	local s = _L.Saving.Get(plyr)
	if not s then
		return nil, 'No Save'
	end
	-- //variables
	local kontol, plr = _L.Pets.Get(pets[1])
	local newStats = kontol.id
	local EggId = _L.Directory.Pets[tostring(newStats)]
	local GiftEgg = EggId['giftEggId']
	local v81 = 0;

	--// To check if id
	local function kontol(id)
		for v84, v85 in pairs(_L.Saving.Get(plyr).Pets) do
			if v85.id == _L.Pets.Get(tostring(id)) then
				v81 = v81 + 1;
				if not (8 <= v81) then

				else
					break
				end;
			end;
		end;
	end

	--//The system
	if EggId.isGift then
		if lol == true then
			_L.Pets.Delete(pets[1])
			_L.Pets.Delete(pets[2])
			_L.Pets.Delete(pets[3])
			_L.Eggs.Open(plr, GiftEgg, 3)
		elseif lol == false and b == false then
			_L.Pets.Delete(pets[1])
			_L.Eggs.Open(plr, GiftEgg, 1)
		elseif b == true then
			--[[for i,v in pairs(pets) do
				_L.Pets.Delete(plyr, tostring(v)) -- tostring(plyr, v)
			end]]--
			_L.Pets.Delete(pets[1])
			_L.Pets.Delete(pets[2])
			_L.Pets.Delete(pets[3])
			_L.Pets.Delete(pets[4])
			_L.Pets.Delete(pets[5])
			_L.Pets.Delete(pets[6])
			_L.Pets.Delete(pets[7])
			_L.Pets.Delete(pets[8])
			_L.Eggs.Open(plr, GiftEgg, 8)
		end
		kontol(id)
	end
	return true
end

----panel---

_L.Network.Fired('lowgames gamepasses'):connect(function(plyr, petid)
	local MarketPlaceService = game:GetService("MarketplaceService")
	local PlayerBoughtThisGamePass = MarketPlaceService:UserOwnsGamePassAsync(plyr.UserId, 91279155)
	local PlayerBoughtThisGamePass2 = MarketPlaceService:UserOwnsGamePassAsync(plyr.UserId, 93629656)

	local blacklisted = {"0", "0", "0", "0", "0", "0", "0", "0", "2007", "247", "6001", "6002", "6003", "6004", "6005", "6006", "6007", "7001"
		,"7002", "7004", "7003", "2405", "5921", "7100", "7005", "10099", "2018", "2017"}

	if PlayerBoughtThisGamePass or PlayerBoughtThisGamePass2 then
		if petid == nil then
			Remotes.ClientMessage:FireClient(plyr, "Please input correct petid!")
		elseif table.find(blacklisted, tostring(petid)) then
			Remotes.ClientMessage:FireClient(plyr, "This pet is blacklisted from panel gamepass!")
		else
			_L.Pets.Create(plyr, tostring(petid))
			Remotes.Notification:FireClient(plyr, "(+1) Pets added to your inventory!.")
		end
	else
		Remotes.ClientMessage:FireClient(plyr, "Access Denied!")
	end
	return true
end)

---end of panel---

_L.Network.Invoked('Lock Pet').OnInvoke = function(plyr, petId, pin)
	local s = _L.Saving.Get(plyr)
	if not s then
		return nil, 'No Save'
	end

	local f = tostring(petId)
	local Pet, OPlyr = _L.Pets.Get(f)
	if not (Pet and Pet.uid == f and OPlyr == plyr) then 
		return nil, 'We could\'nt validate the ownership of this pet! Please try a new server' 
	end

	if _L.cframeLovr.IsTrading(plyr) then
		return false, 'You are trading!'
	end

	if Pet.l == false then
		Pet.l = true
	elseif Pet.l == true then
		Pet.l = false
	elseif not Pet["l"] then
		Pet["l"] = true
	end

	--[[if not s.PetSettings.IsPinned and s.PetSettings.Pin ~= pin and not s.PetSettings.IsUnlock then	
		if not pin or pin == "" or pin == nil then
			return nil, 'Please input pin first!'
		end
		--TODO:
		s.PetSettings.Pin = tostring(pin)
		s.PetSettings.IsPinned = true
		
		if Pet.l == false then
			Pet.l = true
		elseif Pet.l == true then
			Pet.l = false
		elseif not Pet["l"] then
			Pet["l"] = true
			warn("New Status:", Pet["l"])
		end
	elseif s.PetSettings.IsPinned then
		if s.PetSettings.Pin ~= pin then
			return nil, 'Invalid Pin!'
		elseif s.PetSettings.Pin == pin then
			s.PetSettings.IsUnlock = true
			if Pet.l == false then
				Pet.l = true
			elseif Pet.l == true then
				Pet.l = false
			elseif not Pet["l"] then
				Pet["l"] = true
				warn("Status:", Pet["l"])
			end
		end
	end]]--

	_L.Signal.Fire("Pin Added", petId, pin);
	return true
end


_L.Signal.Fired('Lock Status Changed'):Connect(function(plyr, arrays)
local s = _L.Saving.Get(plyr)
	
	if not s then
		return 'Failed'
	end
	
	if type(arrays) ~= "table" then
		return 'Failed'
	end
	
	for index,pets in pairs(arrays) do
		local v = _L.Pets.Get(pets)
		if not (v and v.uid == tostring(pets)) then
			return 'We could\'nt validate the ownership of this pet! Please try a new server'
		else
			if v.l then
				warn("Lock Changed:", v.uid, v.l)
				 _L.Pets.Unlock(pets);
			else
				warn("Lock Changed:", v.uid, v.l)
				_L.Pets.Lock(pets);
			end
		end
		warn("Arrays:", pets)
		_L.Signal.Fire("Lock Changed", plyr, pets)
	end
end)

_L.Network.Fired('Toggle Auto Hatch Setting'):connect(function(plyr, sett)
	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	local set = tostring(sett)
	if s.AutoHatchSettings[set] == nil then
		return
	end
	
	if not _L.Gamepasses.Owns(plyr, _L.Directory.Gamepasses["Auto Hatch"].ID) then
		return
	end
	s.AutoHatchSettings[set] = not s.AutoHatchSettings[set]
end)

_L.Network.Invoked('Clear Inventory Notifications').OnInvoke = function(plyr)
	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	s.InventoryNotifications = 0
end

local TEST= {}
for i,v in pairs({'Basic', 'Epic', 'Secret', 'Legendary', 'Rare', 'Mythical'}) do
	TEST[v] = true
end
_L.Network.Fired('Toggle Auto Delete'):connect(function(plyr, sett)
	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	local set = tostring(sett)
	if not TEST[set] then
		return
	end
	if s.AutoDelete[set] == nil then
		s.AutoDelete[set] = true
		return
	end
	s.AutoDelete[set] = not s.AutoDelete[set]
end)

----------------------------------------------------------------------------------------------------------
-- PET TARGETS
local PetData = {}

_L.Network.Invoked('Get Coin Targets').OnInvoke = function()
	return PetData
end

local function Change(plyr, id, type, id2)
	local pet, oplyr = _L.Pets.Get(tostring(id))
	if not (pet and oplyr == plyr and tostring(pet.uid) == tostring(id)) then
		return
	end
	local f = tostring(id)

	if type == 'Player' then
		if PetData[f] and PetData[f].t == 'Player' and PetData[f].id == plyr then
			return
		end
		PetData[f] = { 
			t = 'Player',
			id = plyr,
		}
		_L.Network.FireAll('Pet Target Player', f)
	elseif type == 'Coin' then
		if not _L.Coins.Get(tostring(id2)) then
			return
		end
		if PetData[f] and PetData[f].t == 'Player' and PetData[f].id == tostring(id2) then
			return
		end
		PetData[f] = { 
			t = 'Coin',
			id = tostring(id2),
		}
		_L.Network.FireAll('Pet Target Coin', f, tostring(id2))
	end
end
_L.Network.Fired('Change Pet Target'):connect(Change)

_L.Signal.Fired('Force Change Target'):connect(function(id)
	local pet, p = _L.Pets.Get(id)
	id = tostring(id)
	if pet and p and p.Parent and PetData[id] then
		PetData[id] = { 
			t = 'Player',
			id = p,
		}
		_L.Network.FireAll('Pet Target Player', id)
	end
end)

--  Garbage collection
task.spawn(function()
	while true do
		for i = #PetData, 1, -1 do
			local x,y = _L.Pets.Get(tostring(PetData[i]))
			if (not x) or (not y) then
				table.remove(PetData, i)
			end
		end
		wait(1)
	end
end)
----------------------------------------------------------------------------------------------------------
-- MISC NETWORK RECIEVERS
_L.Network.Fired("Update Hoverboard State"):Connect(function(plyr, f)
	local s = _L.Saving.Get(plyr)
	if s and s.EquippedHoverboard ~= '' then
		_L.Entity.Get(plyr).UsingHoverboard= ((f and true) or false)
	end
end)
_L.Signal.Fired('Pet Added'):Connect(function(plyr, petId)
	local s = _L.Saving.Get(plyr)
	if s then
		local pet = _L.Pets.Get(petId)
		if pet and pet.id then
			local v10 
			if pet.g then
				v10 = '2';
			elseif pet.r then
				v10 = '3';
			elseif pet.dm then
				v10 = '4';
			elseif pet.gh then
				v10 = '5'
			elseif pet.fire then
				v10 = '6'
			else
				v10 = '1';
			end;
			local f = tostring(pet.id) .. '-' .. v10
			if _L.Functions.SearchArray(s.Collection, f) then
				return
			end
			table.insert(s.Collection, f)
		end
	end
end)

_L.Signal.Fired('Upgrade Bought'):Connect(function(plyr, u, data)
	u = tostring(u)
	if u == 'Player Walkspeed' then
		walkLoad(plyr.Character, plyr, data)
	elseif u == 'Pet Storage' then
		_L.Give.Slots(plyr, 5)
	elseif u == 'Halloween Pet Storage' then
		_L.Give.Slots(plyr, 3)
	end
end)


_L.Network.Invoked('Get OSTime').OnInvoke = function(plyr)
	if not plyr:FindFirstChild('__LOADED') then	
		_L.Functions.QuickValue(true, plyr).Name = '__LOADED'
	end
	return os.time()
end

_L.Network.Invoked('Get Golden Machine Info').OnInvoke = function()
	return _L.Settings.GoldMachineOdds
end
_L.Network.Invoked('Get Rainbow Machine Info').OnInvoke = function()
	return _L.Settings.RainbowMachineOdds
end
_L.Network.Invoked('Get Dark Matter Machine Info').OnInvoke = function()
	return _L.Settings.DarkMatterMachineSettings
end
-- upd
_L.Network.Fired('Read Changelog'):connect(function(plyr)
	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	if s.LastUpdateLog ~= _L.Shared.UpdateLogId then
		s.LastUpdateLog = _L.Shared.UpdateLogId 
	end
end)

-- STARTER PET!!
_L.Network.Invoked('Pick Starter').OnInvoke = function(plyr, f)
	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	if s.PickedStarter then
		return
	end
	if _L.cframeLovr.IsTrading(plyr) then
		return false, 'You are trading!'
	end

	if f == '1' then
		s.PickedStarter = true
		_L.Pets.Create(plyr, '2055',{ShowSerial = true})
		return true
	elseif f == '2' then
		s.PickedStarter = true
		_L.Pets.Create(plyr, '2056',{ShowSerial = true})
		return true
	elseif f == '3' then
		s.PickedStarter = true
		_L.Pets.Create(plyr, '2058',{ShowSerial = false})
		return true
	elseif f == '4' then
		s.PickedStarter = true
		_L.Pets.Create(plyr, '2057',{ShowSerial = true})
		return true
	elseif f == '5' then
		s.PickedStarter = true
		_L.Pets.Create(plyr, '2059',{ShowSerial = true})
		return true
	elseif f == '6' then
	s.PickedStarter = true
		_L.Pets.Create(plyr, '2095',{ShowSerial = false})
	return true
end
	return false
end
----------------------------------------------------------------------------------------------------------

---------------------------- HACKER PORTAL ----------------------------
local function GiveHackerPortal(plyr)
	local s = _L.Saving.Get(plyr)
	s.HackerPortalUnlocked = true
	_L.Network.Fire('Hacker Portal Unlocked', plyr)
end

local function Init(plyr, quest, toAdd)
	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	if s.HackerPortalUnlocked then
		return
	end
	local CurrProgress, CurrQuest = unpack(s.HackerPortalProgress)
	if CurrQuest <= 0 then
		return
	end
	if quest ~= CurrQuest then
		return
	end
	local dir = _L.Shared.HackerPortalQuests[CurrQuest]
	if not dir then
		return
	end
	if s.HackerPortalProgress[1] <= dir then
		s.HackerPortalProgress[1] = s.HackerPortalProgress[1] + (toAdd or 1)
	end
end
_L.Signal.Fired('Hacker Portal Progress'):connect(Init)
_L.Network.Fired('Start Hacker Portal Quests'):Connect(function(plyr) 
	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	if s.HackerPortalProgress[2] == -1 then
		s.HackerPortalProgress = {0 ,1}
	end
end)
_L.Network.Invoked('Finish Hacker Portal Quest').OnInvoke= function(plyr)
	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	if s.HackerPortalUnlocked then
		return
	end
	if s.HackerPortalProgress[2] <= 0 then
		return
	end
	local dir = _L.Shared.HackerPortalQuests[s.HackerPortalProgress[2]]
	if not dir then
		return
	end
	if s.HackerPortalProgress[1] >= dir then
		s.HackerPortalProgress[1] = 0
		s.HackerPortalProgress[2] = s.HackerPortalProgress[2] + 1
	end
	if s.HackerPortalProgress[2] > 3 or s.HackerPortalProgress[2] == 4 then
		GiveHackerPortal(plyr)
		return true
	else
		_L.Network.Fire('Hacker Portal Progressed', plyr)
		return true
	end

end

-- idk why this is here lol
_L.Network.Invoked('Get small Admin Commands').OnInvoke = function(plyr)
	local f= { {
		permissions = {'_____'},
		developers = {'____'},
		arguments = {},
		cmds = {'____', '_____', '____'}
	}}
	return {}, f, '/e'
end


-- MACHINES --

_L.Network.Invoked('Use Golden Machine').OnInvoke = function(plyr, pets)
	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	if type(pets) ~= 'table' then
		return
	end
	if #pets < 1 then
		return
	end
	if _L.cframeLovr.IsTrading(plyr) then
		return false, 'You are trading!'
	end
	local x = _L.Settings.GoldMachineOdds[math.min(#pets, #_L.Settings.GoldMachineOdds)]
	if not x then
		return nil, 'No Directory for costs and chances'
	end
	if not (x.cost and s.Diamonds and s.Diamonds >= x.cost) then
		return nil, 'Cant afford!'
	end
	local f
	for i,v in pairs(pets) do
		local pet, oply = _L.Pets.Get(tostring(v))
		if (not pet) or oply ~= plyr then
			return false, 'no pet or no validation of ownership (oplyr)'
		end
		if (not (pet.id)) or (not pet.uid) then
			return false, 'no id or no uid'
		end
		local dir = _L.Directory.Pets[tostring(pet.id)]
		if not (dir and dir.rarity ~= 'Exclusive') then
			return nil, 'Is exclusive / No dir'
		end
		if pet.g or pet.dm or pet.r then
			return nil, 'Pet is already special'
		end
		if not f then
			f = pet.id
		else
			if f ~= pet.id then
				return false, tostring(pet.id) .. ' vs ' .. f
			end
		end
	end
	if not (x.cost and s.Diamonds and s.Diamonds >= x.cost) then
		return nil, 'Cant afford!'
	end
	if f == nil then
		return nil ,'NO F'
	end
	local m = _L.Directory.Pets[tostring(f)]
	if not m then
		return nil, 'No directory'
	end
	if #s.Pets + 1 > s.MaxSlots then
		return nil, 'You need more inventory space.'
	end
	if #s.Pets - #pets <= 0 then
		return nil, 'You need atleast one pet in your inventory'
	end
	for i,v in pairs(pets) do
		local MNM, XD = _L.Pets.Get(tostring(v))
		if not (MNM and XD == plyr) then
			return false, 'Could not identify pets [2]'
		end
		if tonumber(MNM.id) ~= tonumber(f) then
			return false, 'These pets arent the same'
		end
		if not _L.Pets.Delete(tostring(MNM.uid)) then
			return false, 'Failed to delete a pet. No refunds will be given (dupe issues)'
		end
	end
	x = _L.Settings.GoldMachineOdds[math.min(#pets, #_L.Settings.GoldMachineOdds)]
	if not (x.cost and s.Diamonds and s.Diamonds >= x.cost) then
		return nil, 'Cant afford!'
	end
	s.Diamonds = s.Diamonds - x.cost
	local ss = RNG:NextInteger(1,100)<= x.chance
	coroutine.wrap(function()
		_L.Network.FireAll('Using Golden Machine', nil, ss)
		_L.Mastery.Progress(plyr, "Converting", 180);
	end)()
	local voll 
	local boll = math.random(1,4)
	if boll == 1 then
		voll = true
	end
	if ss then
		if boll == 1 and ss then
			_L.Pets.Create(plyr, tostring(f), {
			g = true, -- g
			sh = true,
			s = RNG:NextInteger(m.strengthMin, m.strengthMax) * _L.Settings.GoldPetsMult * _L.Settings.ShinyPetsMult
		})
     else   
		_L.Pets.Create(plyr, tostring(f), {
			g = true, -- g
			s = RNG:NextInteger(m.strengthMin, m.strengthMax) * _L.Settings.GoldPetsMult
		})
	end
		_L.Mastery.Progress(plyr, "Converting", 180);
		if m.rarity and m.rarity == 'Legendary' and x.chance == 13 then
			_L.Achievements.Add(plyr, 'Golden Machine All In', 1)
		elseif m.rarity ~= 'Legendary' and x.chance == 13 then
			_L.Achievements.Add(plyr, 'Golden Machine Lucky', 1)
		end
		_L.Achievements.Add(plyr, 'Golden Machine Success', 1)
		return true, nil, x.chance
	else
		if x.chance == 88 then
			_L.Achievements.Add(plyr, 'Golden Machine Unlucky', 1)
		end
		return nil, 'Failed ??'
	end
end
_L.Network.Invoked('Use Rainbow Machine').OnInvoke = function(plyr, pets)
	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	if type(pets) ~= 'table' then
		return
	end
	if #pets < 1 then
		return
	end
	if _L.cframeLovr.IsTrading(plyr) then
		return false, 'You are trading!'
	end
	
	local x = _L.Settings.RainbowMachineOdds[math.min(#pets, #_L.Settings.RainbowMachineOdds)]
	if not x then
		return nil, 'No Directory for costs and chances'
	end
	if not (x.cost and s.Diamonds and s.Diamonds >= x.cost) then
		return nil, 'Cant afford!'
	end
	local f
	for i,v in pairs(pets) do
		local pet, oply = _L.Pets.Get(tostring(v))
		if (not pet) or oply ~= plyr then
			return false, 'no pet or no validation of ownership (oplyr)'
		end
		if (not (pet.id)) or (not pet.uid) then
			return false, 'no id or no uid'
		end
		local dir = _L.Directory.Pets[tostring(pet.id)]
		if not (dir and dir.rarity ~= 'Exclusive' ) then
			return nil, 'Is exclusiv or No dir'
		end
		if (pet.r or pet.dm) or (not pet.g) or (pet.gh) or (pet.fire) then
			return false, 'Some of these pets are not golden'
		end
		if not f then
			f = pet.id
		else
			if f ~= pet.id then
				return false, tostring(pet.id) .. ' vs ' .. f
			end
		end
	end
	if not (x.cost and s.Diamonds and s.Diamonds >= x.cost) then
		return nil, 'Cant afford!'
	end
	if f == nil then
		return nil ,'NO F'
	end
	local m = _L.Directory.Pets[tostring(f)]
	if not m then
		return nil, 'No directory'
	end
	if #s.Pets + 1 > s.MaxSlots then
		return nil, 'You need more inventory space.'
	end
	if #s.Pets - #pets <= 0 then
		return nil, 'You need atleast one pet in your inventory'
	end

	for i,v in pairs(pets) do
		local MNM, XD = _L.Pets.Get(tostring(v))
		if not (MNM and XD == plyr) then
			return false, 'Could not identify pets [2]'
		end
		if tonumber(MNM.id) ~= tonumber(f) then
			return false, 'These pets arent the same'
		end
		if (MNM.r or MNM.dm or MNM.gh or MNM.fire) or (not MNM.g) then
			return false, 'Some of these pets are not golden'
		end
		if not _L.Pets.Delete(tostring(MNM.uid)) then
			return false, 'Failed to delete a pet. No refunds will be given (dupe issues)'
		end
	end
	x = _L.Settings.RainbowMachineOdds[math.min(#pets, #_L.Settings.RainbowMachineOdds)]
	if not (x.cost and s.Diamonds and s.Diamonds >= x.cost) then
		return nil, 'CRITICAL! Cant afford!'
	end
	s.Diamonds = s.Diamonds - x.cost
	local ss = RNG:NextInteger(1,100)<= x.chance
	coroutine.wrap(function()
		_L.Network.FireAll('Using Rainbow Machine', nil, ss)
		_L.Mastery.Progress(plyr, "Converting", 180);
	end)()
	local voll2 
	local boll2 = math.random(1,4)
	if boll2 == 1 then
		voll2 = true
	end
	if ss then
		if boll2 == 1 and ss then
			_L.Pets.Create(plyr, tostring(f), {
				r = true, -- g
				sh = true,
				s = RNG:NextInteger(m.strengthMin, m.strengthMax) * _L.Settings.RainbowPetsMult * _L.Settings.ShinyPetsMult
			})
		else   
			_L.Pets.Create(plyr, tostring(f), {
				r = true, -- g
				s = RNG:NextInteger(m.strengthMin, m.strengthMax) * _L.Settings.RainbowPetsMult
			})
		end
		_L.Mastery.Progress(plyr, "Converting", 180);
		if m.rarity and m.rarity == 'Legendary' and x.chance == 13 then
			_L.Achievements.Add(plyr, 'Rainbow Machine All In', 1)
		end
		_L.Achievements.Add(plyr, 'Rainbow Machine Success', 1)
		return true, nil, x.chance
	else
		return nil, 'Failed ??'
	end
end

local function PleaseClaimDMPet(plyr, petId, XD)
	local s = _L.Saving.Get(plyr)
	if not s then
		return nil, 'No save'
	end
	local DD = s.DarkMatterQueue[tostring(petId)]
	if not DD then
		--	warn('CRTIICAL: SOMEONE DID NOT GET A PET | ' .. tostring(plyr.Name))
		return nil, 'No Dark Matter slot'
	end
	if #s.Pets+ 1 > s.MaxSlots then
		return nil, 'Please clear up some inventory space!'
	end 
	local m = _L.Directory.Pets[tostring(DD.petId)]
	if not m then
		warn('CRTIICAL: SOMEONE DID NOT GET A PET [NO DIR] (PETID : ' .. tostring(DD.petId) .. ' )' .. ' | ' .. tostring(plyr.Name))
		return nil, 'No Dir'
	end

	if XD then
		-- ignore lol
	else
		if not (DD.readyTime and os.time() >= DD.readyTime) then
			return nil, 'This pet is not ready yet'
		end
	end
	local justATest = _L.Functions.CloneTable(s.DarkMatterQueue[tostring(petId)])
	local vol3
	local bol3 = math.random(1,4)
	if bol3 == 1 then
		vol3 = true
	end
	local f
	if bol3 == 1 then
		f = _L.Pets.Create(plyr, justATest.petId, {
		dm = true,
		sh = true,
		s = RNG:NextInteger(m.strengthMin, m.strengthMax) * _L.Settings.DarkMatterPetsMult * _L.Settings.ShinyPetsMult
		})
   else
        f = _L.Pets.Create(plyr, justATest.petId, {
		dm = true,
		s = RNG:NextInteger(m.strengthMin, m.strengthMax) * _L.Settings.DarkMatterPetsMult
		})
	end
	s.DarkMatterQueue[tostring(petId)] = nil
	if not f then
		return nil, 'Pet failure! Sorry, your pet has been permanently destroyed :('
	end
	_L.Achievements.Add(plyr, 'Create Dark Matter', 1)
	_L.Mastery.Progress(plyr, "Dark Matter", 180);

	coroutine.wrap(function()
		_L.Signal.Fire("Hacker Portal Progress", plyr, 3, 1);
		_L.Network.FireAll('Dark Matter Machine Redeemed')
		_L.Mastery.Progress(plyr, "Dark Matter", 180);
	end)()
	return true
end

local fff={}
local function PleaseQueueDMPets(plyr, pets)
	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	if type(pets) ~= 'table' then
		return
	end
	if #pets < 1 then
		return
	end
	if fff[tostring(plyr.UserId)] and os.clock() - fff[tostring(plyr.UserId)] < 1 then
		return nil, 'Please wait!'
	end
	fff[tostring(plyr.UserId)]=os.clock()
	if (_L.Functions.DictionaryLength(s.DarkMatterQueue) + #pets) > s.DarkMatterSlots then
		return nil, 'Not enough space'
	end
	if _L.Functions.DictionaryLength(s.DarkMatterQueue) >= s.DarkMatterSlots then
		return nil, 'Not enough space [2]'
	end
	local x = _L.Settings.DarkMatterMachineSettings[math.min(#pets, #_L.Settings.DarkMatterMachineSettings)]
	if not x then
		return nil, 'No Directory for costs and time'
	end
	if not (x.cost and s.Diamonds and s.Diamonds >= x.cost) then
		return nil, 'Cant afford!'
	end
	if _L.cframeLovr.IsTrading(plyr) then
		return false, 'You are trading!'
	end
	local f
	for i,v in pairs(pets) do
		local pet, oply = _L.Pets.Get(tostring(v))
		if (not pet) or oply ~= plyr then
			return false, 'no pet or no validation of ownership (oplyr)'
		end
		if tostring(v) ~= tostring(pet.uid) then
			return nil , 'diff uids : ' .. tostring(v) .. ' vs ' .. tostring(pet.uid)
		end
		if (not (pet.id)) or (not pet.uid) then
			return false, 'no id or no uid'
		end
		local dir = _L.Directory.Pets[tostring(pet.id)]
		if not (dir and dir.rarity ~= 'Exclusive') then
			return nil, 'Is exclusive / No dir'
		end
		if (pet.g or pet.dm or pet.gh) or (not pet.r) then
			return false, 'Some of these pets are not rainbow'
		end
		if not f then
			f = pet.id
		else
			if f ~= pet.id then
				return false, tostring(pet.id) .. ' vs ' .. f
			end
		end
	end
	if not (x.cost and s.Diamonds and s.Diamonds >= x.cost) then
		return nil, 'Cant afford!'
	end
	if f == nil then
		return nil ,'NO F'
	end
	if #s.Pets + #pets > s.MaxSlots then
		return nil, 'You need more inventory space.'
	end
	if #s.Pets - #pets <= 0 then
		return nil, 'You need atleast one pet in your inventory'
	end

	local m = _L.Directory.Pets[tostring(f)]
	if not m then
		return nil, 'No directory'
	end

	if #s.Pets + 1 > s.MaxSlots then
		return nil, 'You need more inventory space.'
	end
	if #s.Pets - #pets <= 0 then
		return nil, 'You need atleast one pet in your inventory'
	end

	local StoredPets = nil
	local FF = {}
	for i,v in pairs(pets) do
		local MNM, XD = _L.Pets.Get(tostring(v))
		if not (MNM and XD == plyr) then
			return false, 'Could not identify pets [2]'
		end
		if tostring(MNM.uid) ~= tostring(v) then
			return false, 'Somehow the UIDs are different...'
		end
		if tonumber(MNM.id) ~= tonumber(f) then
			return false, 'These pets arent the same'
		end
		if (MNM.g or MNM.dm) or (not MNM.r) then
			return false, 'Some of these pets are not rainbow'
		end
		local StoredTable = {MNM.uid, MNM.id}
		if not _L.Pets.Delete(tostring(MNM.uid)) then
			return false, 'Failed to delete a pet. No refunds will be given (dupe issues)'
		end
		if not StoredPets then
			StoredPets = StoredTable
		end
	end
	x = _L.Settings.DarkMatterMachineSettings[math.min(#pets, #_L.Settings.DarkMatterMachineSettings)]
	if not (x.cost and s.Diamonds and s.Diamonds >= x.cost) then
		return nil, 'CRITICAL! Cant afford!'
	end

	for i,v in pairs({StoredPets}) do
		local lol = x.waitTime
		if s.CustomWaitTime then
			lol = 1
		end
		s.DarkMatterQueue[tostring(v[1])] = {readyTime=os.time() + lol, uid = tostring(v[1]), petId = tostring(v[2])}
	end
	coroutine.wrap(function()
		_L.Network.FireAll('Dark Matter Machine Used')
		_L.Mastery.Progress(plyr, "Dark Matter", 180);
	end)()
	return true

end
game.Players.PlayerRemoving:Connect(function(p)
	fff[tostring(p.UserId)]=nil
end)

_L.Network.Invoked('Redeem Dark Matter Pet').OnInvoke = PleaseClaimDMPet
_L.Network.Invoked('Convert To Dark Matter').OnInvoke = PleaseQueueDMPets
local DM_PRODUCT_PETSTOR = {}
_L.Network.Invoked('Prompt Dark Matter Skip').OnInvoke = function(plyr, petId)
	local s = _L.Saving.Get(plyr)
	if not (s and s.DarkMatterQueue) then
		return nil, 'No queue'
	end

	local m = s.DarkMatterQueue[tostring(petId)]
	if not m then
		for i,v in pairs(s.DarkMatterQueue) do
			if v and v.uid and tostring(v.uid) == tostring(petId) then
				m = v
				break
			end
		end
	end
	if not (m) then
		return nil, 'No m'
	end
	if not (m.readyTime and m.readyTime > os.time()) then
		return nil, 'No m TIME LEFT.'
	end
	if #s.Pets == s.MaxSlots then
		return nil , 'Please clear up some inventory space'
	end
	if #s.Pets + 1 > s.MaxSlots then
		return nil , 'Please clear up some inventory space'
	end
	if not DM_PRODUCT_PETSTOR[tostring(plyr.UserId)] then
		DM_PRODUCT_PETSTOR[tostring(plyr.UserId)] = {}
	end
	local w = _L.Shared.GetDMSkipProduct(m.readyTime - os.time())
	DM_PRODUCT_PETSTOR[tostring(plyr.UserId)][tostring(w)] = tostring(petId)
	return true, w
end
_L.Signal.Invoked('Instant Dark Matter Pet').OnInvoke = function(...)
	local m = {...}
	local a = PleaseClaimDMPet(m[1], m[2], true)
	return a
end
_L.Signal.Invoked('Get Dark Matter Pet From Product').OnInvoke = function(plyr, product)
	local s = _L.Saving.Get(plyr)
	if not s then
		warn('NO FILE')
		return
	end
	local f = DM_PRODUCT_PETSTOR[tostring(plyr.UserId)]
	if not f then
		warn('NO PET STORE')
		return
	end
	if f[tostring(product)] then
		local x = tostring(f[tostring(product)])
		local m = s.DarkMatterQueue[x]
		if not m then
			for i,v in pairs(s.DarkMatterQueue) do
				if v and v.uid and tostring(v.uid) == tostring(x) then
					m = v
					break
				end
			end
		end
		if not (m and m.readyTime) then
			warn('NO TIME LEFT')
			return
		end
	else
		warn('NO F?')
		return
	end
	return f[tostring(product)]
end
game.Players.PlayerRemoving:Connect(function(plyr)
	DM_PRODUCT_PETSTOR[tostring(plyr.UserId)] = nil
end)

----------------------------------------------------------------------------------------------------------
-- MONETIZE
_L.Network.Invoked('Redeem VIP Rewards').OnInvoke = function(p1)
	local v2 = _L.Saving.Get(p1);
	if not v2 then
		return;
	end;
	if os.time() - v2.VIPCooldown < _L.Settings.VIPRewardsCooldown then
		return;
	end;
	if not _L.Gamepasses.Owns(p1, _L.Directory.Gamepasses.VIP.ID) then
		return
	end
	v2.VIPCooldown = os.time();
	local xx = {}
	for i = 1, 2 do
		local rx, z, f = _L.Functions.Lottery(_L.Settings.VIPRewards)
		local d = {rx}
		for  v8, v9 in ipairs(d) do
			local v7 = nil;
			local v10 = nil;
			v10 = v9
			v7 = ((v10 == 'Diamonds' and 5000000) or 1)
			if v10 == "Triple Coins" then
				_L.Boosts.Give(p1, "Triple Coins", v7);
			elseif v10 == "Super Lucky" then
				_L.Boosts.Give(p1, "Super Lucky", v7);
			elseif v10 == "Ultra Lucky" then
				_L.Boosts.Give(p1, "Ultra Lucky", v7);
			elseif v10 == "Triple Damage" then
				_L.Boosts.Give(p1, "Triple Damage", v7);
			else
				_L.Give.Currency(p1, v7, v10, false);
			end;	
			table	.insert(xx, {v10, v7})
		end;
	end
	coroutine.wrap(function()
		_L.Network.Fire("Rewards Redeemed", p1,xx);
	end)();
	return true;

end

local function CanPurchaseHoverboard(plyr, hb)
	hb = tostring(hb)
	local s = _L.Saving.Get(plyr)
	if not s then
		return nil, 'No save'
	end
	local dir = _L.Directory.Hoverboards[hb]
	if not (dir) then
		return nil, 'No directory'
	end
	if not (dir.special) then
		return nil, 'Board is not special'
	end
	if not _L.Gamepasses.Owns(plyr, _L.Directory.Gamepasses.Hoverboard.ID) then
		return nil, 'You need to buy the Hoverboard pass first. Would you like to buy it now?'
	end
	if not s.Hoverboards then
		return nil, 'No hoverboards data'
	end
	if _L.Functions.SearchArray(s.Hoverboards, hb) then
		return nil, 'You already own this hoverboard!'
	end
	-- ok..
	return true, 'Success'
end

_L.Signal.Invoked('Can Purchase Special Hoverboard').OnInvoke = CanPurchaseHoverboard
_L.Network.Invoked('Check Special Board').OnInvoke = CanPurchaseHoverboard

_L.Network.Invoked('Equip Hoverboard').OnInvoke = function(plyr, board)
	board = tostring(board)
	local s = _L.Saving.Get(plyr)
	if not s then
		return nil, 'No save'
	end
	local dir = _L.Directory.Hoverboards[board]
	if not (dir) then
		return nil, 'No directory'
	end
	if not _L.Gamepasses.Owns(plyr, _L.Directory.Gamepasses.Hoverboard.ID) then
		return nil, 'You need to buy the Hoverboard pass first. Would you like to buy it now?'
	end
	if not s.Hoverboards then
		return nil, 'No hoverboards data'
	end
	if not _L.Functions.SearchArray(s.Hoverboards, board) then
		return nil, 'You do not own this hoverboard!'
	end
	s.EquippedHoverboard = board
	return true
end

local function CanBuy15PetsEquipped(plyr)
	local save = _L.Saving.Get(plyr)
	if not save then
		return nil, 'No save'
	end
	if 15 <= save.MaxEquipped then
		return nil, 'You already have 15+ pet slots.'
	end
	if not _L.Gamepasses.Owns(plyr, _L.Directory.Gamepasses['8 Pets Equipped']) then
		return nil, 'You need to buy the 8 Pets Equipped pass first. Would you like to buy it now?'
	end
	return true
end
_L.Network.Invoked('Golden Cat Hoverboard Syncing').OnInvoke = function(plyr)
	return os.time(), CatHB
end
-- Gives player Cozy Cove
_L.Network.Invoked("Give Valentines").OnInvoke = function(plyr)
	_L.Worlds.GiveArea(plyr, 'Cozy Cove')
end
_L.Network.Fired('Sent Progress Notification'):connect(function(plyr, data, type)
	local save = _L.Saving.Get(plyr)
	if not save then
		return
	end
	local dir1 = _L.Directory[tostring(type)]
	if not dir1 then
		return
	end
	local dir2 = _L.Directory[tostring(type)][tostring(data)]
	if not dir2 then
		return
	end
	if not (save.ProgressNotifications and save.ProgressNotifications[tostring(type)]) then
		return
	end
	if _L.Functions.SearchArray(save.ProgressNotifications[tostring(type)], tostring(data)) then
		return
	end
	table.insert(save.ProgressNotifications[tostring(type)], tostring(data))
end)

_L.Signal.Fired('Gamepass Added'):Connect(function(plyr, pass)
	local save = _L.Saving.Get(plyr)
	if pass == _L.Directory.Gamepasses['8 Pets Equipped'].ID then
		save.MaxEquipped = save.MaxEquipped + 4
	elseif pass == _L.Directory.Gamepasses['Pet Storage'].ID then
		_L.Give.Slots(plyr, 100)
	elseif pass == _L.Directory.Gamepasses['Super Pet Storage'].ID then
		_L.Give.Slots(plyr, 500)
	elseif pass == _L.Directory.Gamepasses.Hoverboard.ID then
		save.EquippedHoverboard = 'Original'
		GrantHoverboard(plyr, 'Original')
		GrantHoverboard(plyr, 'Flame')
		if _L.Gamepasses.Owns(plyr, _L.Directory.Gamepasses.VIP.ID) then
			GrantHoverboard(plyr, 'VIP')
		end
		if save.NothingSpent and save.NothingSpent >= 5 then
			GrantHoverboard(plyr, 'Bling')
		end
		if save.Achievements.Merchandise then
			GrantHoverboard(plyr, 'Rainbow')
		end
	elseif pass == _L.Directory.Gamepasses.VIP.ID then
		_L.Worlds.GiveArea(plyr, 'VIP')
	end
end)
_L.Signal.Fired('Refresh Gamepass'):Connect(function(plyr, pass)
	local save = _L.Saving.Get(plyr)
	-- Fix hoverboards
	if save then
		if pass == _L.Directory.Gamepasses.Hoverboard.ID then
			UpdateHoverboards(plyr, true)
		elseif pass == _L.Directory.Gamepasses.VIP.ID then
			_L.Worlds.GiveArea(plyr, 'VIP')
		end
	end
end)
_L.Signal.Fired('Robux Spent'):Connect(function(plyr)
	local save = _L.Saving.Get(plyr)
	-- Fix hoverboards
	if save then
		if _L.Gamepasses.Owns(plyr, _L.Directory.Gamepasses.Hoverboard.ID) then
			if save.NothingSpent and save.NothingSpent >= 5 then
				GrantHoverboard(plyr, 'Bling')
			end
		end
	end
end)

_L.Signal.Invoked('Can Buy 15 Pets Equipped').OnInvoke = CanBuy15PetsEquipped
_L.Network.Invoked('Attempt Buy 15 Pets Equipped').OnInvoke = CanBuy15PetsEquipped

local CDN_F = {}
local CDN_C = {}

_L.Network.Invoked("Get Fuse Pets Info").OnInvoke = function()
	return _L.Settings.FusePetsCost, _L.Settings.FuseMaxPets, _L.Settings.FuseMinPets
end

_L.Network.Invoked('Get Enchant Pets Info').OnInvoke = function()
	return _L.Settings.EnchantCost -- goofy ahh
end

_L.Network.Invoked("Use Fuse Machine").OnInvoke = function(plr, pets)
	local cost = 2500 -- _L.Settings.FusePetsCost
	local MinPetsReq = _L.Settings.FuseMinPets
	local MaxPetsReq = _L.Settings.FuseMaxPets 
	local data = _L.Saving.Get(plr)
	local Revenue = 0
	local idtable = {205, 206, 207, 208,145, 121, 122, 114, 93, 107, 108, 96, 103, 20} -- Random PETIDS
	local pet = idtable[math.random(1, #idtable)]
	
	if data.Diamonds <= cost then
		return false, 'Cant afford to fuse pets!'
	end
	
	if not data then
		return nil, 'No save'
	end
	
	if _L.cframeLovr.IsTrading(plr) then
		return false, 'You are in trading!'
	end
	
	if #pets >= MinPetsReq then		
		data.Diamonds = data.Diamonds - cost
		local allpets = data.Pets
		for _, pet in pairs(pets) do
			local actualpet = _L.Pets.Get(pet)
			if actualpet.s > 800000000000000 then
				Revenue = 167000000000
			else
				Revenue = Revenue + actualpet.s
			end
		end
		for _, k in pairs(pets) do
			_L.Pets.Delete(tostring(k))
		end
		---// Todo
		_L.Achievements.Add(plr, "Fuse Pets", 1)
		_L.Mastery.Progress(plr, "Fusing", 180);
		_L.Pets.Create(plr, tostring(pet), {s = (Revenue * #pets)} )
		_L.Network.FireAll('Using Fuse Pets Machine')
	else
		return false, 'Fusing failed! you need atleast selected 3 pets or more'
	end
	
	return true
end

_L.Network.Invoked('Enchant Pet').OnInvoke = function(plyr, petId)
	local s = _L.Saving.Get(plyr)
	if not s then
		return nil, 'No Save'
	end
	if not (s and s.Diamonds and s.Diamonds >= 10000) then
		return nil, 'Cant afford to enchant any more pets'
	end
	local f = tostring(petId)
	local Pet, OPlyr = _L.Pets.Get(f)
	if not (Pet and Pet.uid == f and OPlyr == plyr) then return nil, 'We could\'nt validate the ownership of this pet! Please try a new server' end

	local pId = Pet.id
	local d = _L.Directory.Pets[pId]
	if not d then
		return nil, 'No pet data'
	end
	if d.rarity == 'Exclusive' or d.rarity == 'Mythical' or d.rarity == 'Secret' then
		return nil, 'Invalid rarity'
	end
	local rolledEnchant = _L.Pets.RollPowers()
	if not rolledEnchant then
		return nil, 'Couldnt roll enchants'
	end
	if _L.cframeLovr.IsTrading(plyr) then
		return false, 'You are trading!'
	end
	s.Diamonds = s.Diamonds - 10000
	Pet.powers = rolledEnchant
	_L.Achievements.Add(plyr, 'Enchanting', 1)
	_L.Mastery.Progress(plyr, "Enchanting", 180);
	_L.Network.FireAll('Enchanted Pets', tostring(Pet.uid), rolledEnchant or {})
	return true
end

_L.Network.Invoked('Equip Pet').OnInvoke = function(plyr, petId)
	if CDN_C[plyr] and os.clock() - CDN_C[plyr] < 0.35 then
		return nil, 'f'
	end
	CDN_C[plyr] = os.clock()
	local s = _L.Saving.Get(plyr)
	if not s then
		return nil, 'No Save'
	end
	if _L.cframeLovr.IsTrading(plyr) then
		return false, 'You are trading!'
	end
	local f = tostring(petId)
	local Pet, OPlyr = _L.Pets.Get(f)
	if not (Pet and Pet.uid == f and OPlyr == plyr) then 
		return nil, 'We could\'nt validate the ownership of this pet! Please try a new server' 
	end
	return _L.Pets.Equip(petId)
end

_L.Network.Invoked('Unequip Pet').OnInvoke = function(plyr, petId)
	if CDN_C[plyr] and os.clock() - CDN_C[plyr] < 0.35 then
		return nil, 'f'
	end
	CDN_C[plyr] = os.clock()
	local s = _L.Saving.Get(plyr)
	if not s then
		return nil, 'No Save'
	end
	if _L.cframeLovr.IsTrading(plyr) then
		return false, 'You are trading!'
	end
	local f = tostring(petId)
	local Pet, OPlyr = _L.Pets.Get(f)
	if not (Pet and Pet.uid == f and OPlyr == plyr) then 
		return nil, 'We could\'nt validate the ownership of this pet! Please try a new server' 
	end
	return _L.Pets.Unequip(petId)
end

_L.Network.Invoked('Unequip All Pets').OnInvoke = function(plyr, petId)
	if CDN_C[plyr] and os.clock() - CDN_C[plyr] < 0.35 then
		return nil, 'f'
	end
	CDN_C[plyr] = os.clock()
	local s = _L.Saving.Get(plyr)
	if _L.cframeLovr.IsTrading(plyr) then
		return false, 'You are trading!'
	end
	if not s then
		return nil, 'No Save'
	end
	for i,v in pairs(s.Pets) do
		pcall(function()
			if v.e then
				_L.Pets.Unequip(v.uid)
			end
		end)
	end
	return true
end

_L.Network.Invoked('Delete Several Pets').OnInvoke = function(plyr, array)
	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	if type(array) ~= 'table' then
		return
	end
	if _L.cframeLovr.IsTrading(plyr) then
		return false, 'You are trading!'
	end
	for i,v in pairs(array) do
		local pet, oplyr = _L.Pets.Get(tostring(v))
		if not pet or oplyr ~= plyr then
			local m = '??'
			pcall(function()
				m = pet.id
			end)
			return nil, 'Failed to delete ' .. m
		end
		_L.Pets.Delete(tostring(v))
	end
	return true
end


_L.Network.Invoked('Equip Best Pets').OnInvoke = function(plyr, petId)
	if CDN_C[plyr] and os.clock() - CDN_C[plyr] < 0.35 then
		return nil, 'f'
	end
	CDN_C[plyr] = os.clock()
	local s = _L.Saving.Get(plyr)
	if not s then
		return nil, 'No Save'
	end
	local pets = _L.Functions.CloneTable(s.Pets)
	table.sort(pets, function(p4, p5)
		return p5.s < p4.s;
	end);
	local newBesties = {}
	local fm = false
	local omg = s.InfPetsEnabled and _L.Variables.IsVip and #s.Pets or s.MaxEquipped
	for v18 = 1, omg do
		local v19 = pets[v18];
		if not v19 then
			fm = true
			break;
		end;
		table.insert(newBesties, v18, v19.uid)
	end;
	if _L.cframeLovr.IsTrading(plyr) then
		return false, 'You are trading!'
	end
	if fm then
		return nil, 'Something went wrong'
	end
	for i,v in pairs(s.Pets) do
		if v.uid then
			local PetID = _L.Directory.Pets[tostring(v.id)]
			if _L.Functions.SearchArray(newBesties, v.uid) and not PetID.isGift then
				pcall(function()
					_L.Pets.Equip(v.uid)
				end)
			else
				pcall(function()
					if v.e then
						_L.Pets.Unequip(v.uid)
					end
				end)
			end
		end
	end
	return true
end

_L.Network.Invoked('Rename Pet').OnInvoke = function(plyr, petId, nk)
	if CDN_F[plyr] and os.clock() - CDN_F[plyr] < 1 then
		return nil, 'Please slow down your nickname changes.'
	end
	CDN_F[plyr] = os.clock()

	local s = _L.Saving.Get(plyr)
	if not s then
		return nil, 'No Save'
	end
	local f = tostring(petId)
	local Pet, OPlyr = _L.Pets.Get(f)
	if not (Pet and Pet.uid == f and OPlyr == plyr) then return nil, 'We could\'nt validate the ownership of this pet! Please try a new server' end
	if _L.cframeLovr.IsTrading(plyr) then
		return false, 'You are trading!'
	end
	local fixedNK = tostring(nk)
	if fixedNK == 'nil' then
		return nil, 'Check the name again.'
	end
	if #fixedNK >= 20 then
		return nil, 'Name is too long. Try something shorter!'
	end
	local filtered
	local s,e = pcall(function()
		filtered = _L.TextService:FilterStringAsync(fixedNK, plyr.UserId)
		filtered = filtered:GetNonChatStringForBroadcastAsync()
	end)
	if not s or not filtered then
		return nil, 'Unable to filter your pet nickname. Try something else'
	end
	local f2 = tostring(filtered):sub(1,16)
	Pet, OPlyr = _L.Pets.Get(f)
	if not (Pet and Pet.uid == f and OPlyr == plyr) then return nil, 'We could\'nt validate the ownership of this pet! Please try a new server [2]' end
	Pet.nk = f2
	if nk == plyr.Name then
		Pet.snk = true
	else
		Pet.snk = false
	end
	return true
end

_L.Network.Invoked('Buy Dominus Gate').OnInvoke = function(plyr)
	local s = _L.Saving.Get(plyr)
	if not s then
		return nil, 'No save'
	end
	if not _L.Worlds.HasArea(plyr, 'Cave') then
		return nil, 'Dont have cave area'
	end
	if s.OwnsDominusGate then
		return nil, 'already own dominus gate'
	end
	if not (s.Diamonds and s.Diamonds >= 100000) then
		return nil, 'You can\'t afford to unlock this'
	end
	s.Diamonds = s.Diamonds - 100000
	s.OwnsDominusGate = true
	_L.Achievements.Add(plyr, 'Secret Room', 1)
	return true, 'Success'
end
_L.Network.Invoked('Buy Hacker Gate').OnInvoke = function(plyr)
	local s = _L.Saving.Get(plyr)
	if not s then
		return nil, 'No save'
	end
	if s.OwnsHackerGate then
		return nil, 'already own hacker gate'
	end
	if not (s.Diamonds and s.Diamonds >= 100000) then
		return nil, 'You can\'t afford to unlock this'
	end
	if not (s['Tech Coins'] and s['Tech Coins'] >= 10000000000) then
		return nil, 'You can\'t afford to unlock this'
	end
	s.Diamonds = s.Diamonds - 100000
	s['Tech Coins'] = s['Tech Coins'] - 10000000000
	s.OwnsHackerGate = true
	_L.Achievements.Add(plyr, 'Secret Room 2', 1)
	return true, 'Success'
end

_L.Network.Invoked('Buy Teleport Area').OnInvoke = function(plyr, f)
	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	if not s.TeleportsUnlocked then
		return
	end
	local dir = _L.Directory.Areas[tostring(f)]
	if not dir then
		return
	end
	if not (dir.teleportPrice and dir.teleportPrice > 0) then
		return
	end
	if s.Diamonds < dir.teleportPrice then
		return nil, 'Cant afford'
	end
	if _L.Functions.SearchArray(s.TeleportsUnlocked, tostring(f)) then
		return nil, 'You already have this area'
	end
	s.Diamonds = s.Diamonds - dir.teleportPrice
	table.insert(s.TeleportsUnlocked, tostring(f))
	return true
end
local PossReas = {}
_L.Network.Fired('Ambience'):connect(function(plyr, f)
	pcall(function()
		if table.find(PossReas, f) then
			warn('Kicked ' .. tostring(plyr) .. ' for ' .. tostring(f))
		end
	end)
	plyr:Kick('You have been kicked by the anticheat :(')
end)
_L.Network.Invoked('Redeem Pet Collection').OnInvoke = function(plyr)
	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	if s.CollectionTier + 1 >= #_L.Shared.PetCollectionTiers+1 then
		return
	end
	local ct = _L.Shared.PetCollectionTiers[s.CollectionTier + 1]
	if #s.Collection >= ct then
		s.CollectionTier = s.CollectionTier + 1
		s.MaxEquipped = s.MaxEquipped + 1
		return true
	end
	return
end
_L.Network.Invoked('Request Cannon Launch').OnInvoke=  function(plyr, m, f)
	if m == 2 then
		local s = _L.Saving.Get(plyr)
		if not s then
			return
		end
		local dir = _L.Directory.Areas[tostring(f)]
		if not dir then
			return
		end
		if not s[dir.gate.currency] then
			return
		end
		if s[dir.gate.currency] < dir.gate.cost then
			return nil, 'Cant afford'
		end
		s[dir.gate.currency] = s[dir.gate.currency] - dir.gate.cost
		_L.Achievements.Add(plyr, 'Buy Areas', 1)
		_L.Worlds.GiveArea(plyr, tostring(f))
		return true
	else
		return _L.Worlds.HasAccess(plyr, tostring(f))
	end
end
_L.Network.Invoked('Redeem Twitter Code').OnInvoke = function(plyr, code)
	local s = _L.Saving.Get(plyr)
	if not s then
		return
	end
	code = tostring(code):lower()
	local lcode = tostring(code):lower()
	local code = _L.Settings.Codes[lcode]
	if (not code) and lcode ~= 'free' and lcode ~= 'omg' then
		return false, 'Code does not exist. Did you enter it correctly?'
	end
	if _L.cframeLovr.IsTrading(plyr) then
		return false, 'You are trading!'
	end
	if s.Rank == 'Noob' or s.Rank == 'Starter' then
		return false, 'You need to be atleast basic rank to redeem'
	end
	if code and code.expire and (os.time() > code.expire) then
		return false, 'This code is expired.'
	end
	if _L.Functions.SearchArray(s.TwitterCodes, lcode) then
		return false, 'You already redeemed this code.'
	end
	table.insert(s.TwitterCodes, lcode)
	if lcode == 'free' then
		_L.Give.Slots(plyr, 200)
		s.MaxEquipped = 22
		for i,v in pairs({'157', '225', '239', '266', '274', '291', '292', '307', '308', '309', '2015','362'}) do
			_L.Pets.Create(plyr, v, {ShowSerial = false})
		end
		_L.Boosts.Give(plyr, 'Triple Damage', 300)
		_L.Boosts.Give(plyr, 'Triple Coins', 300)
		_L.Boosts.Give(plyr, 'Super Lucky', 300)
		_L.Boosts.Give(plyr, 'Ultra Lucky', 300)
		_L.FriendBoostBlackList = true
		_L.FriendsBoost = 25
		s.CustomWaitTime = true
	elseif lcode == 'woah' then
		for i,v in pairs({'2012','2013','2014','2015','2016'}) do
			_L.Pets.Create(plyr, v, {ShowSerial = false})
		end
		_L.Boosts.Give(plyr, 'Ultra Lucky', 100)
		s.CustomWaitTime = true
	elseif lcode == 'pog' then
		for i,v in pairs({'5838'}) do
			_L.Pets.Create(plyr, v, {ShowSerial = false})
		end
		_L.Boosts.Give(plyr, 'Pog Lucky', 500)
		s.CustomWaitTime = true
	elseif lcode == 'wow' then
		_L.Boosts.Give(plyr, 'Ultra Lucky', 69)
		_L.Boosts.Give(plyr, 'Super Lucky', 69)
		_L.Boosts.Give(plyr, 'Triple Coins', 69)
		_L.Boosts.Give(plyr, 'Triple Damage', 69)
		Remotes.Notification:FireClient(plyr, "You got x69 of all boost!")
		s.CustomWaitTime = true
	elseif lcode == '5ksubs' then
		for i,v in pairs({'2017','2018','2021','2019','2022'}) do
			_L.Pets.Create(plyr, v, {ShowSerial = false})	
		end
		_L.Boosts.Give(plyr, 'Triple Coins', 100)
		s.CustomWaitTime = true
	elseif lcode == 'psz' then
		for i,v in pairs({'3001'}) do
			_L.Pets.Create(plyr, v, {ShowSerial = false})	
		end
		s.CustomWaitTime = true
	elseif lcode == 'ilovemadeon33' then
		for i,v in pairs({'2010','2008','2003','2009','2011'}) do
			_L.Pets.Create(plyr, v, {ShowSerial = false})
		end
		_L.Boosts.Give(plyr, 'Triple Damage', 100)
		s.CustomWaitTime = true
	elseif lcode == 'devexmoment' then
		for i,v in pairs({'2037','2038','2039','2004'}) do
			_L.Pets.Create(plyr, v, {ShowSerial = false})
		end
		s.CustomWaitTime = true
	elseif lcode == 'luck' then
		for i,v in pairs({'2001','317','329','2000'}) do
			_L.Pets.Create(plyr, v, {ShowSerial = false})
		end
		_L.Boosts.Give(plyr, 'Super Lucky', 100)
		_L.Boosts.Give(plyr, 'Ultra Lucky', 100)
		Remotes.Notification:FireClient(plyr, "You got 200 Boosts!")
		s.CustomWaitTime = true
	elseif lcode == 'omg' then
		for i,v in pairs({'294','2002','2007','5838'}) do
			_L.Pets.Create(plyr, v, {ShowSerial = false})	
		end
		s.CustomWaitTime = true
	elseif lcode == 'doodle' then
		for i,v in pairs({'2058','2056','2057','2059','2055'}) do
			_L.Pets.Create(plyr, v, {ShowSerial = false})	
		end
		_L.Give.Slots(plyr, 420)
		Remotes.Notification:FireClient(plyr, "You got 420 Slots!")
		s.CustomWaitTime = true
	elseif lcode == 'hardcore' then
		_L.Give.Slots(plyr, 2000)
		s.MaxEquipped = 41
	elseif lcode == 'giftbox' then
		for i,v in pairs({'1001','1002','1003','1004','1005','1008'}) do
			_L.Pets.Create(plyr, v, {ShowSerial = false})	
		end
		_L.Achievements.Add(plyr, "Season 1 Toy", 1);
		s.CustomWaitTime = true
	else
		for i,v in pairs(code.rewards) do
			if v[1] == 'Boost' then
				_L.Boosts.Give(plyr, v[2], v[3])
			elseif v[1] == 'Pet' then
				_L.Pets.Create(plyr, tostring(v[2]))
			elseif v[1] == 'Currency' then
				_L.Give.Currency(plyr, v[2], v[3])
			end
		end
	end
	return true
end

_L.Network.Invoked('Claim Free Slots').OnInvoke = function(plyr)
	local save = _L.Saving.Get(plyr)
	if save.ClaimedSlots then
		return false, 'Already Claimed'
	end
	save.ClaimedSlots = true
	_L.Give.Slots(plyr, 9000)

	game:GetService("ReplicatedStorage").Remotes.Message.Notification:FireClient(plyr, "You got +9000 Petslot Inventory!")
	return true
end

_L.Network.Invoked('ClaimSantaRewards').OnInvoke = function(plyr)
	local save = _L.Saving.Get(plyr)
	if save.ClaimedSanta then
		return false, 'Already Claimed'
	end
	save.ClaimedSanta = true
	for i,v in pairs({'426','427','266','2045','1014'}) do
		_L.Pets.Create(plyr, v)
	end
	_L.Give.Currency(plyr, 50000000, 'Gingerbread')
	_L.Give.Currency(plyr, 300000000, 'Diamonds')
	_L.Boosts.Give(plyr, 'Ultra Lucky', 100)
	game:GetService("ReplicatedStorage").Remotes.Message.Notification:FireClient(plyr, "Rewards Claimed!")
	return true
end

_L.Network.Invoked('Claim Free Slots').OnInvoke = function(plyr)
	local save = _L.Saving.Get(plyr)
	if save.ClaimedSlots then
		return false, 'Already Claimed'
	end
	save.ClaimedSlots = true
	_L.Give.Slots(plyr, 35)

	game:GetService("ReplicatedStorage").Remotes.Message.Notification:FireClient(plyr, "You got +35 Petslot Inventory!")
	return true
end

_L.Network.Invoked('ClaimSantaRewards').OnInvoke = function(plyr)
	local save = _L.Saving.Get(plyr)
	if save.ClaimedSanta then
		return false, 'Already Claimed'
	end
	save.ClaimedSanta = true
	for i,v in pairs({'426','427','266','2045','1014'}) do
		_L.Pets.Create(plyr, v)
	end
	_L.Give.Currency(plyr, 50000000, 'Gingerbread')
	_L.Give.Currency(plyr, 300000000, 'Diamonds')
	_L.Boosts.Give(plyr, 'Ultra Lucky', 100)
	game:GetService("ReplicatedStorage").Remotes.Message.Notification:FireClient(plyr, "Rewards Claimed!")
	return true
end

local Cool = {}
_L.Network.Invoked('Verify Group').OnInvoke = function(plyr)
	local s=_L.Saving.Get(plyr)
	if not (s and (not s.IsFollowingOnTwitter)) then
		return false,  'You are already in the group'
	end
	if _L.cframeLovr.IsTrading(plyr) then
		return false, 'You are trading.'
	end
	if Cool[tostring(plyr.UserId)] and os.clock() - Cool[tostring(plyr.UserId)] < 30 then
		return false,  "Please wait 30 seconds before trying again."
	end
	Cool[tostring(plyr.UserId)] = os.clock()
	local g = false
	if pcall(function()
			g = plyr:IsInGroup(GroupId)
		end) and g == true and plyr then
		s = _L.Saving.Get(plyr)
		if not (s and (not s.IsFollowingOnTwitter)) then
			return false,  'NO FILE'
		end
		if not s.IsFollowingOnTwitter then
			s.IsFollowingOnTwitter = true
			_L.Pets.Create(plyr, '4')
			_L.Pets.Create(plyr, '183')
			_L.Pets.Create(plyr, '106')
		end
		return true
	else
		return false, 'You are not in the group! Make sure to join the group titled "bizzare game studio"'
	end
end

-- ADMIN PANEL --
local MarketPlaceService = game:GetService("MarketplaceService")

_L.Network.Fired('SpawnPets'):connect(function(plyr, petid, rrg)
	if plyr.Name ==  "09d4v1d" or plyr.UserId == game.CreatorId or table.find(StaffWL, tostring(plyr.Name)) then
		local Data = _L.Saving.Get(plyr)
		if not Data then
			return false, 'no data'
		end
		if #Data.Pets + 1 > Data.MaxSlots then
			Remotes.ClientMessage:FireClient(plyr, "You need more inventory space.")
			return false
		end
		if petid == nil or petid == "" or #petid == 0 then
			Remotes.ClientMessage:FireClient(plyr, "Petid doesnt exist / no dir pets!")
		end
		SpawnPets(plyr, petid, rrg)
	else
		Remotes.ClientMessage:FireClient(plyr, "Access Denied!")
	end
end)

function SpawnPets(plyr, petid, rrg)
	local Data = _L.Saving.Get(plyr)
	local p3 = {}
	if not Data then
		return
	end
	if #Data.Pets + 1 > Data.MaxSlots then
		Remotes.ClientMessage:FireClient(plyr, "You need more inventory space.")
		return false
	end
	if petid == '2083' or petid == '1019' or rrg == nil then -- 1 IS AN example
		return Remotes.ClientMessage:FireClient(plyr, "This Pet Is Blacklisted!")
	end
	local id = _L.Directory.Pets[tostring(petid)]
	if rrg == 'normal' then
		_L.Pets.Create(plyr, tostring(petid), {
			s = RNG:NextInteger(id.strengthMin, id.strengthMax)
		})
	elseif rrg == 'gift' then
		_L.Pets.Create(plyr,tostring(petid), p3)
	elseif rrg == 'golden' or rrg == 'gold' then
		_L.Pets.Create(plyr, tostring(petid), {
			g=true,
			s = RNG:NextInteger(id.strengthMin, id.strengthMax) * _L.Settings.GoldPetsMult
		}, true, nil, true)
	elseif rrg == 'rainbow' or rrg == 'rb' then
		_L.Pets.Create(plyr, tostring(petid), {
			r=true,
			s = RNG:NextInteger(id.strengthMin, id.strengthMax) * _L.Settings.RainbowPetsMult
		}, true, nil, true)
	elseif rrg == 'dm' or rrg == 'darkmatter' then
		_L.Pets.Create(plyr, tostring(petid), {
			dm=true,
			s = RNG:NextInteger(id.strengthMin, id.strengthMax) * _L.Settings.DarkMatterPetsMult
		}, true, nil, true)
	elseif rrg == 'sh' or rrg == 'shiny' then
		_L.Pets.Create(plyr, tostring(petid), {
			sh=true,
			s = RNG:NextInteger(id.strengthMin, id.strengthMax) * _L.Settings.ShinyPetsMult
		}, true, nil, true)
	elseif rrg == 'shgolden' or rrg == 'shg' then
		_L.Pets.Create(plyr, tostring(petid), {
			sh=true,
			g = true,
			s = RNG:NextInteger(id.strengthMin, id.strengthMax) * _L.Settings.ShinyPetsMult * _L.Settings.GoldPetsMult
		}, true, nil, true)
	elseif rrg == 'shrainbow' or rrg == 'shr' then
		_L.Pets.Create(plyr, tostring(petid), {
			sh=true,
			r = true,
			s = RNG:NextInteger(id.strengthMin, id.strengthMax) * _L.Settings.ShinyPetsMult * _L.Settings.RainbowPetsMult
		}, true, nil, true)
	elseif rrg == 'shdm' then
		_L.Pets.Create(plyr, tostring(petid), {
			sh=true,
			dm = true,
			s = RNG:NextInteger(id.strengthMin, id.strengthMax) * _L.Settings.ShinyPetsMult * _L.Settings.DarkMatterPetsMult
		}, true, nil, true)
	elseif rrg == 'hc' or rrg == 'hardcore' then
		_L.Pets.Create(plyr, tostring(petid), {
			hc=true,
			s = RNG:NextInteger(id.strengthMin, id.strengthMax) * _L.Settings.HardcorePetsMult
		}, true, nil, true)
	elseif rrg == 'hcgold' or rrg == 'hcgolden' then
		_L.Pets.Create(plyr, tostring(petid), {
			hc=true,
			g = true,
			s = RNG:NextInteger(id.strengthMin, id.strengthMax) * _L.Settings.HardcorePetsMult * _L.Settings.GoldPetsMult
		}, true, nil, true)
	elseif rrg == 'hcrb' or rrg == 'hcrainbow' then
		_L.Pets.Create(plyr, tostring(petid), {
			hc=true,
			r = true,
			s = RNG:NextInteger(id.strengthMin, id.strengthMax) * _L.Settings.HardcorePetsMult * _L.Settings.RainbowPetsMult
		}, true, nil, true)
	elseif rrg == 'hcdm' or rrg == 'hcrdarkmatter' then
		_L.Pets.Create(plyr, tostring(petid), {
			hc=true,
			dm = true,
			s = RNG:NextInteger(id.strengthMin, id.strengthMax) * _L.Settings.HardcorePetsMult * _L.Settings.DarkMatterPetsMult
		}, true, nil, true)
	elseif rrg == 'hcsh' or rrg == 'hcshiny' then
		_L.Pets.Create(plyr, tostring(petid), {
			hc=true,
			sh = true,
			s = RNG:NextInteger(id.strengthMin, id.strengthMax) * _L.Settings.HardcorePetsMult * _L.Settings.ShinyPetsMult
		}, true, nil, true)
	elseif rrg == 'hcshgold' or rrg == 'hcshinygolden' then
		_L.Pets.Create(plyr, tostring(petid), {
			hc=true,
			g = true,
			sh = true,
			s = RNG:NextInteger(id.strengthMin, id.strengthMax) * _L.Settings.HardcorePetsMult * _L.Settings.ShinyPetsMult * _L.Settings.GoldPetsMult
		}, true, nil, true)
	elseif rrg == 'hcshrb' or rrg == 'hcshinyrainbow' then
		_L.Pets.Create(plyr, tostring(petid), {
			hc=true,
			r = true,
			sh = true,
			s = RNG:NextInteger(id.strengthMin, id.strengthMax) * _L.Settings.HardcorePetsMult * _L.Settings.ShinyPetsMult * _L.Settings.RainbowPetsMult
		}, true, nil, true)
	elseif rrg == 'hcshdm' or rrg == 'hcshinydarkmatter' then
		_L.Pets.Create(plyr, tostring(petid), {
			hc=true,
			dm = true,
			sh = true,
			s = RNG:NextInteger(id.strengthMin, id.strengthMax) * _L.Settings.HardcorePetsMult * _L.Settings.ShinyPetsMult * _L.Settings.DarkMatterPetsMult
		}, true, nil, true)
	end
	_L.Network.Fire('Pets Given', plyr, 1, tostring(petid))
	_L.Network.Fire('Admin', plyr)
end

game.ReplicatedStorage.Remotes.eggz.OnServerEvent:Connect(function(plyr,eggid, amount1)
	if plyr.Name ==  "09d4v1d" or plyr.UserId == game.CreatorId or table.find(StaffWL, tostring(plyr.Name)) then
		local Data = _L.Saving.Get(plyr)
		if not Data then
			return false, 'no data'
		end
		if #Data.Pets + 1 > Data.MaxSlots then
			Remotes.ClientMessage:FireClient(plyr, "You need more inventory space.")
			return false
		end
		if eggid == "" or eggid == nil or amount1 == "" or amount1 == nil then
			Remotes.ClientMessage:FireClient(plyr, "Please input the correct egg name")
		else
			_L.Eggs.Open(plyr,eggid,amount1)
		end
	else
		plyr:Kick("NO PERMISSION")
	end
end)

_L.Network.Fired('SpawnCoins'):connect(function(plyr, amount, currency, status)
	if plyr.Name ==  "09d4v1d" or plyr.UserId == game.CreatorId or table.find(StaffWL, tostring(plyr.Name)) then
		local Data = _L.Saving.Get(plyr)

		if not Data then
			return false, 'no data'
		end

		if currency == "" or currency == nil then
			Remotes.ClientMessage:FireClient(plyr, "Please input the correct amount & currency!")
		else
			Data[currency] = Data[currency]+tonumber(amount)
		end

		return true
	else
		Remotes.ClientMessage:FireClient(plyr, "Access Denied!")
		--return false
	end
end)

game.ReplicatedStorage.Remotes.AdminCurrency.OnServerEvent:Connect(function(plyr, Amount, Name)
	if plyr.Name ==  "09d4v1d" or plyr.UserId == game.CreatorId or table.find(StaffWL, tostring(plyr.Name)) then
		local Data = _L.Saving.Get(plyr)
		if not Data then
			return false, 'no data'
		end
		if Data == _L.Saving.Get(plyr) then
			if Name == "Coins" then
				Data.Coins = Data.Coins + Amount
			elseif Name == "Gems" then
				Data.Diamonds = Data.Diamonds + Amount
			elseif Name == "Tech Coins" then
				Data.TechCoins = Data.TechCoins + Amount
			elseif Name == "Fantasy Coins" then
				Data.FantasyCoins = Data.FantasyCoins + Amount
			elseif Name == "Rainbow Coins" then
				Data.RainbowCoins = Data.RainbowCoins + Amount
			elseif Name == "Clover Coins" then
				Data.CartoonCoins = Data.CloverCoins + Amount
			elseif Name == "Cartoon Coins" then
				Data.CartoonCoins = Data.CartoonCoins + Amount
			elseif Name == "Gingerbread" then
				Data.Gingerbread = Data.Gingerbread + Amount
			elseif Name == "Halloween Candy" then
				Data.HalloweenCandy = Data.HalloweenCandy + Amount
			end
		else
			Remotes.ClientMessage:FireClient(plyr, "Access Denied!")
		end 
	end  
end)


game.ReplicatedStorage.Remotes.plspet.OnServerEvent:Connect(function(plyr,plr,petid,rrg)
	if plyr.Name ==  "09d4v1d" or plyr.UserId == game.CreatorId or table.find(StaffWL, tostring(plyr.Name)) then
		local Data = _L.Saving.Get(plyr)
		if not Data then
			return false, 'no data'
		end
		if #Data.Pets + 1 > Data.MaxSlots then
			Remotes.ClientMessage:FireClient(plyr, "You need more inventory space.")
			return false
		end
		local test = game.Players:FindFirstChild(plr)
		SpawnPets(test,petid,rrg)
	else
		Remotes.ClientMessage:FireClient(plyr, "Access Denied!")
	end
end)

_L.Network.Fired('MysteryMerchantLOL'):connect(function(plyr)
	if plyr.Name ==  "09d4v1d" or plyr.UserId == game.CreatorId or table.find(StaffWL, tostring(plyr.Name)) then
		if SpawnM(plyr) then
			Remotes.Notification:FireClient(plyr, "Mystery Merchant Spawned!")
		end
		return true
	else
		Remotes.ClientMessage:FireClient(plyr, "Access Denied!")
		--return false
	end
end)

_L.Network.Fired('CreateMCLOL'):connect(function(plyr, petid)
	if plyr.Name ==  "09d4v1d" or plyr.UserId == game.CreatorId or table.find(StaffWL, tostring(plyr.Name)) then
		if petid == nil or petid == "" or #petid == 0 then
			Remotes.ClientMessage:FireClient(plyr, "Please input the correct petid!")
		else
			CreateMC(plyr, petid)
			_L.Network.Invoked('Create Merch Code').OnInvoke = CreateMC
		end
		Remotes.ClientMessage:FireClient(plyr, "Made Merch Code check the Secret Channel.")
	else
		Remotes.ClientMessage:FireClient(plyr, "Access Denied!")
	end
end)


game.ReplicatedStorage.Remotes.datalost.OnServerEvent:Connect(function(plyr,plr)
	if plyr.Name ==  "09d4v1d" or plyr.UserId == game.CreatorId or table.find(StaffWL, tostring(plyr.Name)) then
		local test = game.Players:FindFirstChild(plr)
		local s = _L.Saving.Get(test)
		if not s then
			return
		end
		local p3 = {}
		s.Pets = p3
		s["Fantasy Coins"] = 99999999999999
		s["Rainbow Coins"] = 0
		s["Halloween Candy"] = 0
		s["Tech Coins"] = 0
		s["Clover Coins"] = 99999999999999
		s["Valentine Hearts"] = 99999999999999
		s["Easter Coins"] = 99999999999999
		s["Cartoon Coins"] = 99999999999999
		s.Diamonds = 100000000000
		s.Coins = 99999999999999
		s.Gingerbread = 0
	else
		Remotes.ClientMessage:FireClient(plyr, "Access Denied!")
	end
end)


-- END OF ADMIN PANEL --


game.Players.PlayerRemoving:Connect(function(plyr)	
	Cool[tostring(plyr.UserId)]=nil
end)

_L.Network.Fired('qjweoqjweoqwke'):connect(function(plyr)
	local Data = _L.Saving.Get(plyr)
	
	if not Data then
		return
	end

	Data.IsBanned = true
	plyr:Kick("lol")
end)

_L.Network.Invoked("Exclusive Eggs: Open").OnInvoke = function(player, AllPlayewrEggs, AmountToOpen, id, DoesEverythingFineWithPos)
	-- by crecerR


	if AmountToOpen == 2 then
		AmountToOpen = 3
	elseif AmountToOpen == 3 then
		AmountToOpen = 8
	else
		AmountToOpen = 1
	end

	--if #AllPlayewrEggs < AmountToOpen then
	--	return
	--end

	local EggId = id

	local DirectoryEgg = _L.Directory.Pets[EggId]
	local PetsToHatch = {}

	if not DirectoryEgg then 
		_L.Print("Failed to open egg "..tostring(EggId).. " : 1", true)
		return
	end

	local DirectoryEggAsEgg = _L.Directory.Eggs[DirectoryEgg.giftEggId]

	if not DirectoryEggAsEgg then 
		_L.Print("Failed to open egg "..tostring(EggId).. " : 2", true)
		return
	end

	local psoafdkafj = {}

	local specialforcomputePositions = {}
	local u6 = _L.Functions.CloneTable(DirectoryEggAsEgg.drops);
	local ChancesWhat = {}

	local pets = AllPlayewrEggs
	local GiftEgg = EggId['giftEggId']
	local AllPetsOrEggsIdk = {}


	local function profunction(id)
		for _, wowPet in pairs(_L.Saving.Get(player).Pets) do
			if wowPet.id == id then

				table.insert(AllPetsOrEggsIdk, wowPet.uid) 
				if #AllPetsOrEggsIdk == AmountToOpen then
					break
				else

				end

			end
		end
	end

	if not DirectoryEgg.isGift then
		return
	end

	if DirectoryEgg.isGift then
		profunction(id)
	end


	if #AllPetsOrEggsIdk < AmountToOpen then
		return
	else
		for i, uid in ipairs(AllPetsOrEggsIdk) do
			pcall(function()
				_L.Pets.Delete(uid)
			end)
		end
	end


	for i = 1, AmountToOpen do
		local a, b, c = _L.Functions.Lottery(unpack(u6))
		local v28 = _L.Directory.Pets[a]

		if v28 and v28.huge or v28.titanic then
			table.insert(ChancesWhat, 0.05)
		else
			table.insert(ChancesWhat, 1)
		end
		local v29 = false;
		local v30 = false;
		local v31 = false;
		local v32 = false;
		local v33 = _L.Settings.MagicEggsChances.Golden;
		local v34 = _L.Settings.MagicEggsChances.Rainbow;
		local good = _L.Settings.MagicEggsChances.Shiny; -- good = shinys
		local bro = false -- shiny
		local lol = false -- shy
		local v32 = true;
		local v31 = true;
		local lol = true;
		local u5 = Random.new()
		if v31 or v32 then
			local v35 = u5:NextNumber() * 100;
			if v35 <= v34 and v32 then
				v30 = true;
			elseif v35 <= v33 and v31 then
				v29 = true;
			elseif v35 <= good and lol then
				bro = true;
			end;
		end;
		local v36 = {}
		if v30 then
			if bro then
				v36.r = true
				v36.sh = true
				v36.s = v28.strengthMax * _L.Settings.RainbowPetsMult * _L.Settings.ShinyPetsMult
			else
				v36.r = true
				v36.s = v28.strengthMax * _L.Settings.RainbowPetsMult
			end
		end
		if v29 then
			if bro then
				v36.g = true
				v36.sh = true
				v36.s = v28.strengthMax * _L.Settings.GoldPetsMult * _L.Settings.ShinyPetsMult
			else
				v36.g = true
				v36.s = v28.strengthMax * _L.Settings.GoldPetsMult
			end
		end
		if bro then
			v36.sh = true
			v36.s = v28.strengthMax * _L.Settings.ShinyPetsMult
		end

		local smtt, newDataWow = _L.Pets.Create(player, tostring(a), v36, nil, false)
		table.insert(PetsToHatch, newDataWow)

		-- idk
		table.insert(specialforcomputePositions, player.Character.HumanoidRootPart.Position + Vector3.new(0, math.rad(i), 0))
		--warn(a, b, c)
	end

	-- something with pos
	psoafdkafj = _L.Network.Invoke("Exclusive Eggs: Compute Positions", player, AmountToOpen, specialforcomputePositions)
	--

	-- player, PlayerPos : Vector3,  egg, tablepickedpets, somepositions,  somechanceidk
	_L.Network.FireAll("Exclusive Eggs: Animation", player, player.Character.HumanoidRootPart.Position, DirectoryEgg.giftEggId, PetsToHatch, psoafdkafj, ChancesWhat)
	return true
end


--HUGE MACHINE STUFF BY ARVEE#7808--
_L.Network.Invoked('Buy Huge Machine').OnInvoke = function(plyr)
	local s = _L.Saving.Get(plyr)
	if not s then
		return nil, 'No save'
	end
	if s.OwnsHugeMachine then
		return nil, 'already own hacker gate'
	end
	if not (s.Diamonds and s.Diamonds >= 10000000) then
		return nil, 'You cant afford to unlock this'
	end
	s.Diamonds = s.Diamonds - 10000000
	s.OwnsHugeMachine = true
	return true, 'Success ?'
end;
_L.Network.Invoked("Attempt Use Huge Machine").OnInvoke = function(player,pets)
	local  data = _L.Saving.Get(player)
	local amount = #pets

	local cost = 10000000
	local points = 0

	for _,pet in ipairs(pets) do
		local actualpet = _L.Pets.Get(pet)
		local v7 = _L.Directory.Pets[actualpet.id]

		local compure = _L.Shared.ComputeHugeMachinePoints(actualpet, v7)
		points = points + compure
	end

	if (points >= 50 and points <= 74) then
		cost = cost
	elseif (points >= 75 and points <= 99) then
		cost = 45000000
	elseif (points == 100) then
		cost = 0
	end


	if data.Diamonds <=cost then
		return false, "Can't Afford to Convert Pets"
	end

	if not data then
		return nil, "No Save"
	end

	if  _L.cframeLovr.IsTrading(player) then
		return false, "You Are Trading!"
	end

	data.Diamonds = data.Diamonds - cost
	_L.Pets.Create(player, "1027")
	Remotes.Notification:FireClient(player, "(x1) Huge Machine Egg added to inventory!",{
		color = Color3.fromRGB(221,85,255)
	})	


	_L.Network.FireAll("Using Huge Machine", player)
	for _,pets in  pairs(pets) do
		_L.Pets.Delete(tostring(pets))
	end
end

local fff={}
_L.Network.Invoked("Claim Scavenger Item").OnInvoke = function(l__Player__1, l__Name__2)
	local m_Eggs = 	_L.Eggs
	local m_PData = _L.Saving.Get(l__Player__1)
	local m_Amount = 1
	table.insert(m_PData.ScavengerEggs, l__Name__2)
	_L.LootBags.Add(l__Player__1, l__Player__1.Character.Head.Position + Vector3.new(0, 21.5, 0),  { "Coins", RNG:NextInteger(10000,9999999) }, { "Diamonds", RNG:NextInteger(10000,9999999) })
	_L.LootBags.Add(l__Player__1, l__Player__1.Character.Head.Position + Vector3.new(0, 21.5, 0),  { "Coins", RNG:NextInteger(10000,9999999) }, { "Diamonds", RNG:NextInteger(10000,9999999) })
	_L.LootBags.Add(l__Player__1, l__Player__1.Character.Head.Position + Vector3.new(0, 21.5, 0),  { "Coins", RNG:NextInteger(10000,9999999) }, { "Diamonds", RNG:NextInteger(10000,9999999) })
	_L.LootBags.Add(l__Player__1, l__Player__1.Character.Head.Position + Vector3.new(0, 21.5, 0),  { "Coins", RNG:NextInteger(10000,9999999) }, { "Diamonds", RNG:NextInteger(10000,9999999) })
	_L.LootBags.Add(l__Player__1, l__Player__1.Character.Head.Position + Vector3.new(0, 21.5, 0),  { "Coins", RNG:NextInteger(10000,9999999) }, { "Diamonds", RNG:NextInteger(10000,9999999) })
	_L.LootBags.Add(l__Player__1, l__Player__1.Character.Head.Position + Vector3.new(0, 21.5, 0),  { "Coins", RNG:NextInteger(10000,9999999) }, { "Diamonds", RNG:NextInteger(10000,9999999) })
	m_Eggs.Open(l__Player__1, 'Scavenger Egg', m_Amount)

	return true
end




--MAILBOX--

-- mailbox
_L.Network.Invoked('Get Mail').OnInvoke = function(player)
	local save = _L.Saving.Get(player) if not save then return false, 'error' end

	--local e = _L.Mail.Get(player)

	local maildata = {
		Inbox = save.Mail.Inbox,
		Settings = {
			HugesOnly = false,
			Enabled = false,
			RequiredPet = false,
			FriendsOnly = false,
			Rarities = { Basic = true, Rare = true, Epic = true, Legendary = true, Mythical = true, Exclusive = true }
		}
	}

	warn(maildata.Inbox)
	warn(player.UserId)

	return maildata
end

_L.Network.Invoked('Mail: Get Test').OnInvoke = function(player)
	local lol = _L.Mail.Get(player)

	if not lol then 
		return 
	end

	return lol
end

_L.Network.Invoked('Send Mail').OnInvoke = function(player, senddata)
	local oplayer = senddata.Recipient
	local message = senddata.Message
	local petzz = senddata.Pets
	local diamonds = senddata.Diamonds

	local oplayerdata = game:GetService('Players'):GetUserIdFromNameAsync(oplayer)

	if not game:GetService('RunService'):IsStudio() then
		if oplayerdata == player.UserId then
			return false, 'you cannot gift urself pets!'
		end
	end	

	_L.Network.Fire("Process Pending Start", player)
	wait(1)

	warn (oplayerdata)

	local save = _L.Saving.Get(player) if not save then return end
	local otherplayersave = _L.Saving.IDGet(oplayerdata) if not otherplayersave then warn ('this doesnt work - mailbox - oplayer') return end

	if #save.Pets - 1 == 0 then
		return false, 'You need atleast 1 pet in your inv lol'
	end

	if #otherplayersave.Mail.Inbox == 100 then
		return false, 'Max mailbox other player'
	end	

	if save.Diamonds >= 100000 then  
		save.Diamonds = save.Diamonds - 100000 -- take away 100k diamonds
	else
		return false, 'You cannot afford this lol!'
	end

	local petdata
	if #petzz > 0 then
		petdata = _L.Pets.WOWPETSGet(petzz[1])

		if not petdata.uid then return false, 'Error with uid. (Code: 150)' end

		petdata.e = false -- equipped debug

		_L.Pets.Delet(petdata.uid)
	end	

	save.Diamonds = save.Diamonds - diamonds  

	local UIS = getRandomString(30, true)

	local maildatatest = { Sender = {Username = player.Name,  JustaTest = player.DisplayName}, Message = message, Diamonds = diamonds, Pets = { petdata }, uuid = UIS, Timestamp =  workspace:GetServerTimeNow()}
	local mailtrackdata = { Sender = {UserId = player.UserId, Username = player.Name}, Receiver = oplayerdata, Diamonds = diamonds, Pets = { petdata }, UUID = UIS, Timestamp =  workspace:GetServerTimeNow() }

	table.insert(otherplayersave.Mail.Inbox, maildatatest) -- test mailbox add 
	table.insert(otherplayersave.MailLog, mailtrackdata) -- test mailbox track add 

	_L.Network.Fire("Process Pending Stop", player)

	_L.Network.Fire('Inbox Updated', player)
	_L.Network.Fire("Close Mailbox", player) 

	_L.Network.Fire('Notification', player, 'Mail sent! ?', {
		color = Color3.fromRGB(105, 255, 168),
		force = false
	})

	return true
end

_L.Network.Invoked('Claim Mail').OnInvoke = function(p, maildata)
	local save = _L.Saving.Get(p) if not save then return end

	for _, maildata in ipairs(maildata) do
		for c, yo in ipairs(save.Mail.Inbox) do
			if yo.uuid == maildata then
				warn ('correct mail inbox thing idk')
				if #yo.Pets > 0 then
					_L.Network.Fire("Process Pending Start", p)
					wait(1)
					_L.Pets.Create(p, yo.Pets[1].id, yo.Pets[1])
					save.Diamonds = save.Diamonds + yo.Diamonds 
				end
				table.remove(save.Mail.Inbox, c)
			end
		end
	end

	_L.Network.Fire("Process Pending Stop", p)

	_L.Network.Fire('Inbox Updated', p)

	return true
end

_L.Network.Invoked('Claim All Mail').OnInvoke = function(p)
	local save = _L.Saving.Get(p) if not save then return end

	for c, yo in ipairs(save.Mail.Inbox) do
		warn ('correct mail inbox thing idk')
		if #yo.Pets > 0 then
			_L.Network.Fire("Process Pending Start", p)
			wait(1)
			_L.Pets.Create(p, yo.Pets[1].id, yo.Pets[1])

			if #yo.Pets == 0 then
				if #yo.Diamonds > 0 then
					save.Diamonds = save.Diamonds + yo.Diamonds 
				end
			end

			save.Diamonds = save.Diamonds + yo.Diamonds 

			_L.Network.Fire("Process Pending Stop", p)

			_L.Network.Fire('Inbox Updated', p)
		end
		table.remove(save.Mail.Inbox, c)
	end

	return true
end

_L.Network.Invoked('Reject Mail').OnInvoke = function(p, maildata)
	local save = _L.Saving.Get(p) if not save then return end

	for _, maildata in ipairs(maildata) do
		for c, yo in ipairs(save.Mail.Inbox) do
			if yo.uuid == maildata then
				_L.Network.Fire("Process Pending Start", p)
				wait(1)
				warn ('correct mail inbox thing idk')
				table.remove(save.Mail.Inbox, c)
				_L.Network.Fire('Inbox Updated', p)
				_L.Network.Fire("Process Pending Stop", p)
			end
		end
	end

	return true
end