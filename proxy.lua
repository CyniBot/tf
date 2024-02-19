function log(str)
LogToConsole("`7[`4Tunggu`7]"..str)
end
function take()
for _, tile in pairs(GetTiles()) do
if tile.fg == 1422 then
for _, obj in pairs(GetObjectList()) do
if obj.itemid == 1796 or obj.itemid == 242 or obj.itemid == 7188 then
if obj.posX//32 == tile.x and obj.posY//32 == tile.y then
pkt = {}
pkt.type = 11
pkt.value = obj.id
pkt.x = obj.posX
pkt.y = obj.posY
SendPacketRaw(false,pkt)
end
end
end
end
end
end
log("Script Start in : 3 Second")
Sleep(1000)
log("Script Start in : 2 Second")
Sleep(1000)
log("Script Start in : 1 Second")
Sleep(1000)
opening = [[
add_label_with_icon|big|`wCreative Ps Helper |left|]] .. 7074 ..[[|
add_smalltext|`0Credit `4Ken Community|
add_label_with_icon|small|`wHello Thanks For Buying This Script ]]..GetLocal().name..[[|left|6020|
add_image_button|banner|interface/large/sxrxpt1.rttex|bannerlayout|OPENSURVEY|||||||
add_spacer|small||
add_label_with_icon|big|`7Change Logs|left|6128|
add_spacer|small|
add_smalltext|`4[+] `7Show Collected Gems To Player Using /sg|
add_smalltext|`4[+] `7Auto Take DL Bet From Display using /take|
add_url_button|sxrxpt|`eDiscord|noflags|MizoreeGT#8112|0|0|
end_dialog|itro|Close|                   OKE                   |
]]
s = {}
s.v0 = "OnDialogRequest"
s.v1 = opening
SendVariant(s)





systemlog = "`7[`#ON`7]"
local bgems = false
local pull = false
local kick = false
local ban = false
local sdb = true
local pocket = false
local buyvend = false
local amountbuy = 0
local enablevend = "`2Enable"
local gas = false
local cbgl = false
local bdl = false
local tele = false
local teledl = false
local cg = 0
local arroz = false
local clover = false
local eggbene = false
localgems = "(gems)"
local taxset = ""
local logspin = "`7Make sure u play a game using `4Wheel"
local playerlogspin = "`7Pick Player 1 First for lock spin logs"
local playerlogspin2 = "`7Pick Player 2 First for lock spin logs"
local spinname = ""
local spinname2 = ""
local collectgems = false
-- Creative PS Helper Source

function log(str) -- Simple LogToConsole
    LogToConsole(systemlog.."`7"..str)
end
function clock(id,id2,amount)
    for _, inv in pairs(GetInventory()) do
                           if inv.id == id then
                                 if inv.amount < amount then
                                     jk = {}
jk.x = 0
jk.y = 0
jk.type = 10
jk.value = id2
jk.px = 0
jk.py = 0
jk.state = 0
jk.netid = 0
SendPacketRaw(false, jk)
                                 end
                           end
    end
end
function ont(str)
    sa = {}
    sa.v0 = "OnTalkBubble"
    sa.v1 = GetLocal().netid
    sa.v2 = str
    SendVariant(sa)
end
function game() -- Game!
function ont(str)
    sa = {}
    sa.v0 = "OnTalkBubble"
    sa.v1 = GetLocal().netID
    sa.v2 = str
    SendVariant(sa)
end
letters = {"Gay","Beriman","Ganteng","Jelek","Pedo","Ga Berguna"}
str = ""
color = ""
emoji = ""
    for i = 1,1 do
       str = str..letters[math.random(1,#letters)]
persen = math.random(1,100)
 end
if persen >= 50 then
color = "`4"
elseif persen <= 50 then
color = "`5"
end
if str == "Gay" then
emoji = "(mad)"
elseif str == "Beriman" then
emoji = "(cool)"
elseif str == "Jelek" then
emoji = "(cry)"
elseif str == "Ga Berguna" then
emoji = "(cry)"
elseif str == "Pedo" then
emoji = "(evil)"
end
ont("(gems)\n`7"..GetLocal().name.." "..color..persen.."% `3"..str.." "..emoji.."!\n(gems)")

if str == "Gay" then
log("Mampus Lu Jadi Gay!")
end
if str == "Ganteng" then
log("Jangan Kepedean Ini Cuma Program!")
elseif str == "Pedo" then
log("Suka kok sama anak kecil")
elseif str == "Jelek" then
log("Yang Sabar Masbro!")
elseif str == "Ga Berguna" then
log("Sabar Masbro!")
end
end

function drops(id,amount) -- Drop 
    SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|"..id.."|\nitem_count|"..amount.."\n\n")
end
function math.percent(percent,maxvalue)
    if tonumber(percent) and tonumber(maxvalue) then
        return (maxvalue*percent)/100
    end
    return false
end
function check(str)
for _, obj in pairs(GetObjectList()) do
if obj.itemid == str then
log("X : "..(obj.posX//32).." | Y : "..(obj.posY//32).." | Amount "..obj.amount)
end
end
end
function Drop(x, y, id, count)
_ENV["jumlah"] = count
if math.abs(GetLocal().posX // 32 - x) > 8 or math.abs(GetLocal().posY // 32 - y) > 8 then
ont("Tile Position `4Max")
return nil
end
if GetTiles(x, y).collidable then
ont("Position `4Blocked")
log("make sure u break any block in position save")
return nil
end
local Z = 0
if not GetTiles(x + 1, y).collidable then
Z = 1
elseif not GetTiles(x - 1, y).collidable then
Z = -1
else
ont("Position `4Blocked")
return nil
end
SendPacketRaw(false, { type = 0, x = (x + Z) * 32, y = y * 32, state = (Z == 1 and 48 or 32) })
SendPacket(2, "action|dialog_return\ndialog_name|drop\nitem_drop|"..id.."|\nitem_count|"..jumlah.."\n\n")  
end -- Credit = PiterP Discord
function consum(str)
    pkt = {}
        pkt.type = 3
        pkt.value = str
        pkt.flags = 8390688
        pkt.px = GetLocal().posX//32
        pkt.py = GetLocal().posY//32
        pkt.x = GetLocal().posX 
        pkt.y = GetLocal().posY
        SendPacketRaw(false,pkt)
end -- Simple consum
function ontext(str)
    o = {}
    o.v0 = "OnTextOverlay"
    o.v1 = str
    SendVariant(o)
end -- Simple OnTextOverlay
function tax(percent,maxvalue)
    if tonumber(percent) and tonumber(maxvalue) then
        return (maxvalue*percent)/100
    end
end -- Count Tax function

-- DIALOGGGGGGGGGGGGGH


function hook(type,str)
    if str:find("action|friend") then
friend = [[
add_label_with_icon|big|`7Social Portal|left|1366|
add_spacer|small|
add_label_with_icon|small|`0Hello ]]..GetLocal().name..[[|right|7684|
add_label_with_icon|small|`0UID : `3]]..GetLocal().userID..[[|left|12436|
add_label_with_icon|small|`0U Standing At `9]]..GetWorldName()..[[|left|3802|
add_label_with_icon|small|`0Your Position : `6[]]..(GetLocal().posX//32)..[[,]]..(GetLocal().posY//32)..[[]|left|12854|
add_spacer|small|
text_scaling_string|jakhelperbdjsjn|
add_button_with_icon|socialportal|`7 Social Portal|staticGreyFrame|9474||
add_button_with_icon|founder|`7Founder|staticGreyFrame|5956||
add_button_with_icon|command|`7List Command|staticGreyFrame|32||
add_button_with_icon|modmenu|`7List Menu|staticGreyFrame|9472||
add_button_with_icon|updateinfo|`7Change Logs|staticGreyFrame|6126||
add_button_with_icon||END_LIST|noflags|0||
add_spacer|small||
end_dialog|friend|Close||
]]
        s = {}
        s.v0 = "OnDialogRequest"
        s.v1 = friend
        SendVariant(s)
        return true
    end
    if str:find("buttonClicked|updateinfo") then
s = {}
        s.v0 = "OnDialogRequest"
        s.v1 = opening
        SendVariant(s)
return true
end
    if str:find("buttonClicked|socialportal") then
        SendPacket(2,"action|dialog_return\ndialog_name|social\nbuttonClicked|back")
        ontext("`7Welcome to Normal Social Portal")
        return true
    end
    if str:find("buttonClicked|founder") then
        prc = [[
add_label_with_icon|big|`0Founder & User|left|6126|
add_custom_button|sxrxptlink|image:interface/large/sxrxptbutton.rttex;image_size:400,260;width:0.20;|
add_custom_break|
add_textbox|`0------------------------------------------------------|
add_smalltext|`0Owner This Script|left|
add_spacer|small|
add_label_with_icon|small|`6MizoreeGT#8112|left|13222|
add_textbox|`0------------------------------------------------------|
add_smalltext|`wHelper IDEA|left
add_spacer|small|
add_label_with_icon|small|`!MizoreeGT#8112|left|13220
add_textbox|`0------------------------------------------------------|
add_label_with_icon|small|`0TIK TOK `4@OLDER.GT|left|13224|
add_spacer|small||
add_smalltext|`#ProgrammerJ#6204 [Owner Team]|left|
add_textbox|`0------------------------------------------------------|
add_quick_exit||
]]
pre = {}
pre.v0 = "OnDialogRequest"
pre.v1 = prc
SendVariant(pre)
ontext("`7Founder Info")
return true
end
-- Dialog Command
if str:find("buttonClicked|command") then
    command = [[
add_label_with_icon|big|`7List Command|left|32|
add_spacer|small||
add_textbox|`0------------------------------------------------------|
add_label_with_icon|small|`7Drop Command For World Lock|left|242|
add_spacer|small|
add_smalltext|`9/w (amount) `7[Fast Dropped]|
add_smalltext|`9/w1 (amount) `7[Dropped To Position 1]|
add_smalltext|`9/w2 (amount) `7[Dropped To Position 2]|
add_smalltext|`9/w3 (amount) `7[Dropped To Position 3]|
add_smalltext|`9/w4 (amount) `7[Dropped To Position 4]|
add_smalltext|`9wx2 (amount) `7[Auto X2 amount]|
add_smalltext|`9/wx3 (amount) `7[Auto X3 amount]|
add_smalltext|`9/wall `7[Drop All Lock]|
add_textbox|`0------------------------------------------------------|
add_label_with_icon|small|`7Drop Command For Diamond Lock|left|1796|
add_spacer|small|
add_smalltext|`3/d (amount) `7[Fast Dropped]|
add_smalltext|`3/d1 (amount) `7[Dropped To Position 1]|
add_smalltext|`3/d2 (amount) `7[Dropped To Position 2]|
add_smalltext|`3/d3 (amount) `7[Dropped To Position 3]|
add_smalltext|`3/d4 (amount) `7[Dropped To Position 4]|
add_smalltext|`3/dx2 (amount) `7[Auto X2 amount]|
add_smalltext|`3/dx3 (amount) `7[Auto X3 amount]|
add_smalltext|`3/dall `7[Drop All Lock]|
add_textbox|`0------------------------------------------------------|
add_label_with_icon|small|`7Drop Command For Blue Gem Lock|left|7188|
add_spacer|small|
add_smalltext|`3/b (amount) `7[Fast Dropped]|
add_smalltext|`3/b1 (amount) `7[Dropped To Position 1]|
add_smalltext|`3/b2 (amount) `7[Dropped To Position 2]|
add_smalltext|`3/b3 (amount) `7[Dropped To Position 3]|
add_smalltext|`3/b4 (amount) `7[Dropped To Position 4]|
add_smalltext|`3/bx2 (amount) `7[Auto X2 Drop]|
add_smalltext|`3/bx3 (amount) `7[Auto X3 Drop]|
add_smalltext|`3/ball `7[Drop All Lock]|
add_textbox|`0------------------------------------------------------|
add_button|nextcommand|Next|
end_dialog|ndkskek|Close||
]]
cm = {}
cm.v0 = "OnDialogRequest"
cm.v1 = command 
SendVariant(cm)
return true
end
-- Dialog Command 2
if str:find("buttonClicked|nextcommand") then
    command2 = [[
add_label_with_icon|big|`7List Command|left|32|
add_spacer|small||
add_textbox|`0------------------------------------------------------|
add_label_with_icon|small|`7Set Position Command|left|12854|
add_spacer|small|
add_smalltext|`b/setpos1 `7[Set Position 1]|
add_smalltext|`b/setpos2 `7[Set Position 2]|
add_smalltext|`b/setpos3 `7[Set Position 3]|
add_smalltext|`b/setpos4 `7[Set Position 4]|
add_textbox|`0------------------------------------------------------|
add_label_with_icon|small|`7Telephone Command|left|3898|
add_spacer|small|
add_smalltext|`6/c `7[Change Blue Gem Lock]|
add_smalltext|`6/buydl `7[Buy Diamond Lock]|
add_smalltext|`6/buymega `7[Buy Megaphone]|
add_textbox|`0------------------------------------------------------|
add_label_with_icon|small|`7Casino Command|left|758|
add_spacer|small||
add_smalltext|`4/hoster `7[Helper Hoster]|
add_smalltext|`4/stax (amount) `7[Set Tax For Many Feature]|
add_smalltext|`4/tax (bet) `7[For See Tax Bet (Set Tax First)]|
add_textbox|`0------------------------------------------------------|
add_label_with_icon|small|`7Gems Command|left|9436|
add_spacer|small||
add_smalltext|`5/gems `7[Check Amount Gems Dropped]|
add_smalltext|`5/addgems (amount) `7[Gems Visual]|
add_smalltext|`5/sg `7[Show Gems Collected To Player]|
add_textbox|`0------------------------------------------------------|
add_label_with_icon|small|`7More Command|left|32|
add_spacer|small|
add_smalltext|`8/take `7[Take DL From Display]|
add_smalltext|`8/id `7[Find ItemID]|
add_smalltext|`8/check (itemID) `7[Find Dropped Item In World]|
add_smalltext|`8/howme `7[Game]|
add_smalltext|`8/acc `7[Fast Acc BGL/DL/WL]|
add_smalltext|`8/depo (amount) `7[Deposit Bgls To BGL Bank]|
add_smalltext|`8/wd (amount) `7[Withdraw Bgls In Bgl Bank]|
add_smalltext|`8/fakesb (text) `7[Fake SB]|
add_textbox|`0------------------------------------------------------|
add_button|backcommad|`9Back|
end_dialog|ndksks|Close||
]]
com = {}
com.v0 = "OnDialogRequest"
com.v1 = command2
SendVariant(com)
return true
end 
if str:find("buttonClicked|backcommad") then
cm = {}
cm.v0 = "OnDialogRequest"
cm.v1 = command 
SendVariant(cm)
    SendVariant(cm)
    return true
end
-- List Menu Dialog
if str:find("buttonClicked|modmenu") then
    menu = [[
add_label_with_icon|big|`7Mod Menu|left|9472|
add_spacer|small|
text_scaling_string|jakhelperbdjsjn|
add_button_with_icon|wrenchmenu|`7Wrench Mode|staticYellowFrame|32||
add_button_with_icon|blocksdb|`7Anti Sdb Mode|staticYellowFrame|2480||
add_button_with_icon|pocketmode|`7Anti Pocket|staticYellowFrame|3062|
add_button_with_icon|vendh|`wVend Helper|staticYellowFrame|9268||
add_button_with_icon||END_LIST|noflags|0||
add_button|nextfitur|`7NEXT|
add_smalltext|`7Join our community `3/discord|
end_dialog|wrnech|Close||
]]
mn = {}
mn.v0 = "OnDialogRequest"
mn.v1 = menu 
SendVariant(mn)
return true
end
if str:find("/discord") then
dsc = [[ 
add_label_with_icon|big|`wThe Creative Discord server````|left|300|
add_spacer|small||
add_textbox|Thanks for taking interest in Creative! We welcome you to join official Discord server, click the button below:|left|
add_url_button|comment|CreativePS Discord|noflags|http://creativeps.eu|would you like to join CreativePS Discord?|0|0|
add_textbox|`w----------------------------------------------------------------------------------------------------|
add_label_with_icon|big|`0TeKen `7Community````|left|6292|
add_spacer|small||
add_textbox|Thanks for buying our script! We welcome you to join official SxRxPT Discord server, click the button below:|left|
add_url_button|teken|`wTeKen Community `eDiscord|noflags|https://dsc.gg/tekencps|would you like to join TeKen Community?|0|0|
add_url_button|teken|`wTeKen Community `3Telegram|noflags|https://dsc.gg/tekencps|would you like to join TeKen Telegram?|0|0|
add_spacer|small||
end_dialog|popup|Thanks for the info!||
]]
sxrp = {}
sxrp.v0 = "OnDialogRequest"
sxrp.v1 = dsc
SendVariant(sxrp)
return true
end
-- Vend Helper Dialog
if str:find("buttonClicked|vendh") then
vendd = [[
add_label_with_icon|big|`7Vend Shortcut|left|9268|
add_spacer|small|
add_label_with_icon|small|`7Buy fast set to `6[`7]]..amountbuy..[[`6]|left|1430|
add_spacer|small||
add_button|setupvend|]]..enablevend..[[|
add_smalltext|`7Using `3/vset (amount) For set Fast Shortcut Vend|
end_dialog|hsd|Close||
]]
u = {}
u.v0 = "OnDialogRequest"
u.v1 = vendd
SendVariant(u)
return true
end
-- Tax Checker 
    if str:find("/tax (%d+)") then
        taxout = str:match("/tax (%d+)")
        hasil = math.percent(taxset,taxout)
        hasilbulat = math.floor(hasil)
        count = hasilbulat
        bgl,dl,wl = 0,0,0
        bgl = count // 10000
        dl = count % 10000 // 100
        wl = ((count% 10000) % 100)
taxdialog = [[
add_label_with_icon|big|`7Tax Found!|left|4430|
add_spacer|small|
add_smalltext|]]..taxset..[[% Tax of ]]..taxout..[[ : |
add_label_with_icon|small|]]..bgl..[[|left|7188|
add_label_with_icon|small|]]..dl..[[|left|1796|
add_label_with_icon|small|]]..wl..[[|left|242|
end_dialog|taxdualog|Close||
]]
ti = {}
ti.v0 = "OnDialogRequest"
ti.v1 = taxdialog
SendVariant(ti)
return true
end
-- Wrench Menu Dialog
if str:find("buttonClicked|wrenchmenu") then
    wrench = [[
add_label_with_icon|big|`7Wrench Menu!|left|32|
add_spacer|small||
add_smalltext|`7Only Work For 1 Menu!|
text_scaling_string|jakhelperbdjsjn|
add_button_with_icon|pullmode|`7Pull Mode|staticYellowFrame|274|
add_button_with_icon|kickmode|`7Kick Mode|staticYellowFrame|276||
add_button_with_icon|banmode|`7Ban Mode|staticYellowFrame|278||
add_button_with_icon||END_LIST|noflags|0||
add_button|wrenchback|`9Back|
end_dialog|rmeke|Close||
]]
wm = {}
wm.v0 = "OnDialogRequest"
wm.v1 = wrench
SendVariant(wm)
return true
end
if str:find("buttonClicked|wrenchback") then
    SendVariant(mn)
    return true
end

-- Setup Vend Mode
    if str:find("buttonClicked|setupvend") then
        if buyvend == false then
enablevend = "`4Disable"
vendd = [[
add_label_with_icon|big|`7Vend Shortcut|left|9268|
add_spacer|small|
add_label_with_icon|small|`7Buy fast set to `6[`7]]..amountbuy..[[`6]|left|1430|
add_spacer|small||
add_button|setupvend|]]..enablevend..[[|
add_smalltext|`7Using `3/vset (amount) For set Fast Shortcut Vend|
end_dialog|hsd|Close||
]]
h = {}
h.v0 = "OnDialogRequest"
h.v1 = vendd
SendVariant(h)
            buyvend = true
            else
enablevend = "`2Enable"
vendd = [[
add_label_with_icon|big|`7Vend Shortcut|left|9268|
add_spacer|small|
add_label_with_icon|small|`7Buy fast set to `6[`7]]..amountbuy..[[`6]|left|1430|
add_spacer|small||
add_button|setupvend|]]..enablevend..[[|
add_smalltext|`7Using `3/vset (amount) For set Fast Shortcut Vend|
end_dialog|hsd|Close||
]]
h = {}
h.v0 = "OnDialogRequest"
h.v1 = vendd
SendVariant(h)
                buyvend = false
                return true
        end
    end
    if str:find("/vset (%d+)") then
        if buyvend == true then
        setbuy = str:match("/vset (%d+)")
        amountbuy = setbuy
        log("Auto buy "..amountbuy.." On Vending!")
        ontext("Auto buy "..amountbuy.." On Vending!")
        return true
        else
vendd = [[
add_label_with_icon|big|`7Vend Shortcut|left|9268|
add_spacer|small|
add_label_with_icon|small|`7Buy fast set to `6[`7]]..amountbuy..[[`6]|left|1430|
add_spacer|small||
add_button|setupvend|]]..enablevend..[[|
add_smalltext|`7Using `3/vset (amount) For set Fast Shortcut Vend|
end_dialog|hsd|Close||
]]
h = {}
h.v0 = "OnDialogRequest"
h.v1 = vendd
SendVariant(h)
            log("Enable Fast Vend First")
ontext("Enable Buy Vend First")
        return true
        end
    end
-- Menu 2
    if str:find("buttonClicked|nextfitur") then
        menu2 = [[
add_label_with_icon|big|`7Mod Menu|left|9472|
add_spacer|small|
text_scaling_string|jakhelperbdjsjn|
add_button_with_icon|gasmode|`7Auto Pull Gas|staticYellowFrame|9474||
add_button_with_icon|autoconsum|`7Auto Consum|staticYellowFrame|4604||
add_button_with_icon|cbglmode|`7Change BGL|staticYellowFrame|3898|
add_button_with_icon|buydlmode|`wBuy Dls Mode|staticYellowFrame|1796||
add_button_with_icon||END_LIST|noflags|0||
add_button|backfitur|`9Back|
add_smalltext|`7Join our community `3/discord|
end_dialog|wrnech|Close||
]]
mn2 = {}
mn2.v0 = "OnDialogRequest"
mn2.v1 = menu2 
SendVariant(mn2)
return true
end
-- Setup Auto consum
    if str:find("buttonClicked|autoconsum") then
consumable = [[
add_label_with_icon|big|`7Auto Consumable Menu|left|4604|
add_smalltext|`7This menu will auto if the effect gone|
text_scaling_string|jakhelperbdjcsn|
add_button_with_icon|arrozmode|`7Arroz Mode|staticGreyFrame|4604||
add_button_with_icon|clovermode|`7Clover Mode|staticGreyFrame|528||
add_button_with_icon|eggmode|`7Egg Benedict Mode|staticGreyFrame|1474|
add_button_with_icon||END_LIST|noflags|0||
add_button|consumback|`9Back|
]]
cons = {}
cons.v0 = "OnDialogRequest"
cons.v1 = consumable
SendVariant(cons)
return true
end
    if str:find("buttonClicked|consumback") then
        SendVariant(mn2)
        return true
    end
    
-- Find Item ID
    if str:find("/id") then
idchecker = [[
add_label_with_icon|big|`7ID Checker|left|6016|
add_spacer|small||
add_item_picker|selectid|`7Find Item!|`7Pick Item For Check The ID|

]]
ic = {}
ic.v0 = "OnDialogRequest"
ic.v1 = idchecker
SendVariant(ic)
return true
end
if str:find("/take") then
take()
return true
end
    if str:find("/check (%d+)") then
        resultcheck = str:match("/check (%d+)")
        oa = tonumber(resultcheck)
        for __, obj in pairs(GetObjectList()) do
            if obj.itemid == oa then
                xobj = obj.posX//32
                yobj = obj.posY//32
resultdialog = [[
add_label_with_icon|big|`7Item Found!!|left|6016|
add_spacer|small|
add_label_with_icon|small| `7Amount Item : `3]]..obj.amount..[[|left|]]..oa..[[|
add_spacer|small|
add_label_with_icon|small| `7Position : X : `9]]..xobj..[[ , `7Y : `8]]..yobj..[[|left|12854|
add_label_with_icon|small|`7Check ur console for more info|left|]]..oa..[[|
add_spacer|small|
add_smalltext|`7Make sure u are using /ghost first|
add_button|teleobj|`7Go To Item?|
add_button|sooa|`7Close|
]]
i = {}
i.v0 = "OnDialogRequest"
i.v1 = resultdialog
SendVariant(i)
check(oa)
                 return true
            end
        end
    end
    if str:find("buttonClicked|teleobj") then
        FindPath((xobj-1),yobj)
        ontext("Teleport To Item..")
          ontext("Item On Right Position")
        return true
    end
    if str:find("selectid|(%d+)") then
        idlog = str:match("selectid|(%d+)")
idfast = [[
add_label_with_icon|big|`7ID Found!|left|6016|
add_spacer|small||
add_smalltext|`7Result : |
add_label_with_icon|small|`7ItemID : ]]..idlog..[[|left|]]..idlog..[[|
add_spacer|small||
add_item_picker|selectid|`7Find Again?|`7Pick Item For Check The ID|
end_dialog|jfkdk|Close||
]]
ic = {}
ic.v0 = "OnDialogRequest"
ic.v1 = idfast
SendVariant(ic)
return true
end
-- Setup Tax For Many function
    if str:find("/stax (%d+)") then
        taxset = str:match("/stax (%d+)")
        ontext("Tax Set To : `3"..taxset)
        return true
    end
    
-- Setup Auto Consumable
    if str:find("buttonClicked|arrozmode") then
        if arroz == false then
            arroz = true
            clover = false
            eggbene = false
            consum(4604)
            SendVariant(cons)
            ontext("Auto Arroz `2Enable")
            else
                arroz = false
                clover = false
                eggbene = false
                SendVariant(cons)
                ontext("Auto Arroz `4Disable")
                return true
        end
    end
    if str:find("buttonClicked|clovermode") then
        if clover == false then
            clover = true
            arroz = false
            eggbene = false
            consum(528)
            SendVariant(cons)
            ontext("Auto Clover `2Enable")
            else
                clover = false
                arroz = false
                eggbene = false
                SendVariant(cons)
                ontext("Auto Clover `4Disable")
                return true
        end
    end
if str:find("/fakesb (.+)") then
a = str:match("/fakesb (.+)")
LogToConsole("CP:0_PL:4_OID:_CT:[SB]_  `7[`#GTPSHELPER`7] `5(```7"..GetLocal().name.."`5) `5in [`$"..GetWorldName().."`5] ** : ```$`^`0"..a.."``")
ontext("`3Sending `4Fake Sb")
return true
end
    if str:find("buttonClicked|eggmode") then
        if eggbene == false then
            clover = false
            arroz = false
            eggbene = true
            consum(1474)
            SendVariant(cons)
            ontext("Auto Egg Bene `2Enable")
            else
                clover = false
                arroz = false
                eggbene = false
                SendVariant(cons)
                ontext("Auto Egg Bene `4Disable")
                return true
        end
    end
-- Setup Back first menu
if str:find("buttonClicked|backfitur") then
SendVariant(mn)
return true
end
-- Setup Change BGL Mode
    if str:find("buttonClicked|cbglmode") then
        if tele == false then
            tele = true
            teledl = false
            SendVariant(mn2)
            ontext("Change BGL `2Enable")
            else
                tele = false
                teledl = false
                SendVariant(mn2)
                ontext("Change BGL `4Disable")
                return true
        end
    end
-- Setup Buy DLs
    if str:find("buttonClicked|buydlmode") then
        if teledl == false then
            teledl = true
            tele = false
            SendVariant(mn2)
            ontext("Buy Dls Mode `2Enable")
            else
                teledl = false
                tele = false
                SendVariant(mn2)
                ontext("Buy Dls Mode `4Disable")
                return true
        end
    end
-- Setup Logs Log Spin Log 
    if str:find("/hoster") then
lastspin = [[
add_label_with_icon|big|Hoster Mode|left|758|
add_spacer|small|
add_smalltext|`7Your Logs Spin : |
add_label_with_icon|small|]]..logspin..[[|left|9222|
add_spacer|small||
add_textbox|`4Player Log Spin 1|
add_label_with_icon|small|]]..playerlogspin..[[|left|9474|
add_smalltext|`7Player Spin Lock To : ]]..spinname..[[|
add_smalltext|`4/resetp1 `7[For Reset]|
add_player_picker|targetlogspin|`wPick `4Player 1|
add_spacer|small|
add_textbox|`4Player Log Spin 2|
add_label_with_icon|small|]]..playerlogspin2..[[|left|9474|
add_smalltext|`7Player Spin Lock To : ]]..spinname2..[[|
add_smalltext|`4/resetp1 `7[For Reset]|
add_player_picker|targetlogspin2|`wPick `4Player 2|
end_dialog|lastspin|Close||
]]
z = {}
z.v0 = "OnDialogRequest"
z.v1 = lastspin
SendVariant(z)
    return true
    end
    if str:find("/resetp1") then
        playerlogspin = "`7Pick Player 1 First for lock spin logs"
        spinname = ""
        loguid = 0
        ontext("Reset Player 1 Pick again if u need use")
        return true
    end
    if str:find("/resetp2") then
        playerlogspin2 = "`7Pick Player 1 First for lock spin logs"
        spinname2 = ""
        loguid = 0
        ontext("Reset Player 2 Pick again if u need use")
        return true
    end
    if str:find("/check (.+)") then
yu = str:match("/check (.+)")
check(tonumber(yu))
return true
end
    if str:find("targetlogspin|(%d+)") then
        od = str:match("targetlogspin|(%d+)")
        netidlog = tonumber(od)
        for __, log in pairs(GetPlayerList()) do
        if log.netID == netidlog then
        ontext("Lock Spin to : "..log.name)
        loguid = log.userID
        spinname = log.name
        return true
    end
    end
end
if str:find("targetlogspin2|(%d+)") then
        od = str:match("targetlogspin2|(%d+)")
        netidlog = tonumber(od)
        for __, log in pairs(GetPlayerList()) do
        if log.netID == netidlog then
        ontext("Lock Spin to : "..log.name)
        loguid2 = log.userID
        spinname2 = log.name
        return true
    end
    end
end
    if str:find("/addgems (%d+)") then
        amount = str:match("/addgems (%d+)")
        s = {}
        s.v0 = "OnSetBux"
        s.v1 = tonumber(amount)
        SendVariant(s)
        ont("Added `3"..amount.." (gems)")
        return true
    end
    
-- Setup Gas Mode
    if str:find("buttonClicked|gasmode") then
        if gas == false then
            gas = true
            SendVariant(mn2)
            log("Auto Pull if player say gas or g")
            ontext("Gas Mode `2Enable")
            else
                gas = false
                SendVariant(mn2)
                ontext("Gas Mode `4Disable")
                return true
        end
    end
    
-- Setup Wrench Mode!
    if str:find("buttonClicked|pullmode") then
        if pull == false then
            pull = true
            kick = false
            ban = false
            SendVariant(wm)
            ontext("Pull Mode Enable")
            else
                pull = false
                kick = false
                ban = false
                SendVariant(wm)
                ontext("Pull Mode Disable")
                return true
        end
    end
    if str:find("buttonClicked|banmode") then
        if ban == false then
            ban = true
            pull = false
            kick = false
            SendVariant(wm)
            ontext("Ban Mode Enable")
            else
                ban = false
                pull = false
                kick = false
                SendVariant(wm)
                ontext("Ban Mode Disable")
                return true
        end
    end
    if str:find("buttonClicked|kickmode") then
        if kick == false then
            kick = true
            ban = false
            pull = false
            SendVariant(wm)
            ontext("Kick Mode Enable")
            else
                kick = false
                ban = false
                pull = false
                SendVariant(wm)
                ontext("Kick Mode Disable")
                return true
        end
    end
if str:find("/sg") then
SendPacket(2,"action|input\n|text|`7Collected : `#"..cg.." (gems)")
cg = 0
return true
end
-- Execute Wrench Mode
    if str:find("action|wrench\n|netid|(%d+)") then 
        id = str:match("action|wrench\n|netid|(%d+)")
        if pull == true then
            SendPacket(2,"action|dialog_return\ndialog_name|popup\nnetID|"..id.."|\nbuttonClicked|pull")
for _, player in pairs(GetPlayerList()) do
if player.netID == tonumber(id) then
ontext("`#Pulling `7"..player.name.."..")
end
end
            return true
        end
    end
    if str:find("action|wrench\n|netid|(%d+)") then 
        id = str:match("action|wrench\n|netid|(%d+)")
        if kick == true then
            SendPacket(2,"action|dialog_return\ndialog_name|popup\nnetID|"..id.."|\nbuttonClicked|kick")
for _, player in pairs(GetPlayerList()) do
if player.netID == tonumber(id) then
ontext("Kick "..player.name.."..")
end
end
            return true
        end
    end
    if str:find("action|wrench\n|netid|(%d+)") then 
        id = str:match("action|wrench\n|netid|(%d+)")
        if ban == true then
            SendPacket(2,"action|dialog_return\ndialog_name|popup\nnetID|"..id.."|\nbuttonClicked|world_ban")
for _, player in pairs(GetPlayerList()) do
if player.netID == tonumber(id) then
ontext("Banned "..player.name.."..")
end
end
            return true
        end
    end
-- Setup Block SDB
    if str:find("buttonClicked|blocksdb") then
        if sdb == false then
            sdb = true
            SendVariant(mn)
            ontext("SDBlock `2Enable")
            else
                sdb = false
                SendVariant(mn)
                ontext("SDBlock `4Disable")
                return true
        end
    end
-- Setup Pocket Mode
    if str:find("buttonClicked|pocketmode") then
        if pocket == false then
            pocket = true
            SendVariant(mn)
            ontext("Anti Pocket `2Enable")
            else
                pocket = false
                SendVariant(mn)
                ontext("Anti Pocket `4Disable")
                return true
        end
    end
    
-- DROP COMMAND
    if str:find("/w (%d+)") then
        amount = str:match("/w (%d+)")
        a = tonumber (amount)
        clock(242,1796,a)
        drops(242,amount)
        log("Dropped `#"..amount.." `9World Lock")
        return true
    end
    if str:find("/d (%d+)") then
        amount = str:match("/d (%d+)")
        a = tonumber(amount)
        clock(1796,242,a)
        clock(1796,7188,a)
        drops(1796,amount)
        log("Dropped `#"..amount.." `3Diamond Lock")
        return true
    end
    if str:find("/b (%d+)") then
        amount = str:match("/b (%d+)")
        drops(7188,amount)
        log("Dropped `#"..amount.." `3Blue Gem Lock")
        return true
    end
-- Set Pos COMMAND
    if str:find("/setpos1") then
        x1 = GetLocal().posX//32
        y1 = GetLocal().posY//32
        log("Position 1 Saved to X : "..x1..". Y : "..y1)
        return true
    end
    if str:find("/setpos2") then
        x2 = GetLocal().posX//32
        y2 = GetLocal().posY//32
        log("Position 2 Saved to X : "..x2.." Y : "..y2)
        return true
    end
    if str:find("/setpos3") then
        x3 = GetLocal().posX//32
        y3 = GetLocal().posY//32
        log("Position 3 Saved to X : "..x3.." Y : "..y3)
        return true
    end
    if str:find("/setpos4") then
        x4 = GetLocal().posX//32 
        y4 = GetLocal().posY//32 
        log("Position 4 Saved to X : "..x.." Y : "..y4)
        return true
    end
-- Drop To Position 1 COMMAND
    if str:find("/w1 (%d+)") then
        amount = str:match("/w1 (%d+)")
        a = tonumber(amount)
        clock(242,1796,a)
        Drop(x1,y1,242,amount)
        ontext("Drop `9World Lock `7To Position 1")
        return true
    end
    if str:find("/d1 (%d+)") then
        amount = str:match("/d1 (%d+)")
        a = tonumber(amount)
        clock(1796,242,a)
        clock(1796,7188,a)
        Drop(x1,y1,1796,amount)
        ontext("Drop `3Diamond Lock `7To Position 1")
        return true
    end
    if str:find("/b1 (%d+)") then
        amount = str:match("/b1 (%d+)")
        Drop(x1,y1,7188,amount)
        ontext("Drop `3Blue Gem Lock `7To Position 1")
        return true
    end
-- Drop To Position 2 COMMAND
    if str:find("/w2 (%d+)") then
        amount = str:match("/w2 (%d+)")
        a = tonumber(amount)
        clock(242,1796,a)
        Drop(x2,y2,242,amount)
        ontext("Drop `9World Lock `7To Position 2")
        return true
    end
    if str:find("/d2 (%d+)") then
        amount = str:match("/d2 (%d+)")
        a = tonumber(amount)
        clock(1796,242,a)
        clock(1796,7188,a)
        Drop(x2,y2,1796,amount)
        ontext("Drop `3Diamond Lock `7To Position 2")
        return true
    end
    if str:find("/b2 (%d+)") then
        amount = str:match("/b2 (%d+)")
        Drop(x2,y2,7188,amount)
        ontext("Drop `3Blue Gem Lock `7To Position 2")
        return true
    end
-- Drop To Position 3 COMMAND
    if str:find("/w3 (%d+)") then
        amount = str:match("/w3 (%d+)")
        a = tonumber(amount)
        clock(242,1796,a)
        Drop(x3,y3,242,amount)
        ontext("Drop `9World Lock `7To Position 3")
        return true
    end
    if str:find("/d3 (%d+)") then
        amount = str:match("/d3 (%d+)")
        a = tonumber(amount)
        clock(1796,242,a)
        clock(1796,7188,a)
        Drop(x3,y3,1796,amount)
        ontext("Drop `3Diamond Lock `7To Position 3")
        return true
    end
    if str:find("/b3 (%d+)") then
        amount = str:match("/b3 (%d+)")
        Drop(x3,y3,7188,amount)
        ontext("Drop `3Blue Gem Lock `7To Position 3")
        return true
    end
-- Drop To Position 4 COMMAND
    if str:find("/w4 (%d+)") then
        amount = str:match("/w4 (%d+)")
        a = tonumber(amount)
        clock(242,1796,a)
        Drop(x4,y4,242,amount)
        ontext("Drop `9World Lock `7To Position 4")
        return true
    end
    if str:find("/d4 (%d+)") then
        amount = str:match("/d4 (%d+)")
        a = tonumber(amount)
        clock(1796,242,a)
        clock(1796,7188,a)
        Drop(x4,y4,1796,amount)
        ontext("Drop `3Diamond Lock `7To Position 4")
        return true
    end
    if str:find("/b4 (%d+)") then
        amount = str:match("/b4 (%d+)")
        Drop(x4,y4,7188,amount)
        ontext("Drop `3Blue Gem Lock `7To Position 4")
        return true
    end
-- Drop X2 For Lock
    if str:find("/wx2 (%d+)") then
        amount = str:match("/wx2 (%d+)")
        count = amount*2
        a = tonumber(count)
        clock(242,1796,a)
        drops(242,count)
        log("Dropped "..count.." `9World Lock")
        return true
    end
    if str:find("/dx2 (%d+)") then
        amount = str:match("/dx2 (%d+)")
        count = amount*2
        a = tonumber(count)
        clock(1796,242,a)
        clock(1796,7188,a)
        drops(1796,count)
        log("Dropped "..count.." `3Diamond Lock")
        return true
    end
    if str:find("/bx2 (%d+)") then
        amount = str:match("/bx2 (%d+)")
        count = amount*2
        drops(7188,count)
        log("Dropped "..count.." `3Blue Gem Lock")
        return true
    end
-- Drop X3 For Lock
    if str:find("/wx3 (%d+)") then
        amount = str:match("/wx3 (%d+)")
        count = amount*3
        a = tonumber(count)
        clock(243,1796,a)
        drops(242,count)
        log("Dropped "..count.." `9World Lock")
        return true
    end
    if str:find("/dx3 (%d+)") then
        amount = str:match("/dx3 (%d+)")
        count = amount*3
        a = tonumber(count)
        clock(1796,242,a)
        clock(1796,7188,a)
        drops(1796,count)
        log("Dropped "..count.." `3Diamond Lock")
        return true
    end
    if str:find("/bx3 (%d+)") then
        amount = str:match("/bx3 (%d+)")
        count = amount*3
        drops(7188,count)
        log("Dropped "..count.." `3Blue Gem Lock")
        return true
    end
-- Drop All Lock
    if str:find("/wall") then
        for _, inv in pairs(GetInventory()) do
            if inv.id == 242 then
                drops(242,inv.amount)
                ontext("Dropped All `9World Lock")
                return true
            end
        end
    end
    if str:find("/dall") then
        for _, inv in pairs(GetInventory()) do
            if inv.id == 1796 then
                drops(1796,inv.amount)
                ontext("Dropped All `3Diamond Lock")
                return true
            end
        end
    end
    if str:find("/ball") then
        for _, inv in pairs(GetInventory()) do
            if inv.id == 7188 then
                drops(7188,inv.amount)
                ontext("Dropped All `3Blue Gem Lock")
                return true
            end
        end
    end
-- Setup Check Gems!
    if str:find("/gems") then
        if collectgems == false then
            collectgems = true
            log("Dont Punch Block if u collect ")
            ontext("Gems Mode `2Enable")
return true
            else
                collectgems = false
                ontext("Gems Mode `4Disable")
                return true
        end
    end
-- Deposit BGls
    if str:find("/depo (%d+)") then
        amount = str:match("/depo (%d+)")
        SendPacket(2,"action|dialog_return\ndialog_name|bank_deposit\nbgl_count|"..amount)
        ontext("Deposit `3"..amount.." Bgls")
        return true
    end
    if str:find("/wd (%d+)") then
        amount = str:match("/wd (%d+)")
        SendPacket(2,"action|dialog_return\ndialog_name|bank_withdraw\nbgl_count|"..amount)
        ontext("Withdraw "..amount.." Bgls")
        return true
    end
-- Setup Black  Gems Mode
    if str:find("buttonClicked|blackgems") then
        if bgems == false then
            bgems = true
            ontext("Auto Eat Black Gems if u collect black gems")
            else
                ontext("Black Gems Mode `4Disable")
                return true
        end
    end
    if str:find("/wban") then
        SendPacket(2,"action|dialog_return\ndialog_name|popup\nnetID|"..fakenetid.."|\nbuttonClicked|world_ban")
        ontext("Banning Player using fake spin")
        return true
    end
    
-- Telephone Command
    if str:find("/c") then
        for _, tile in pairs(GetTiles()) do
            if tile.fg == 3898 then
                SendPacket(2,"action|dialog_return\ndialog_name|telephone\nnum|53785|\nx|"..tile.x.."|\ny|"..tile.y.."|\nbuttonClicked|bglconvert")
                return true
            end
        end
    end
    if str:find("/buydl") then
        for _, tile in pairs(GetTiles()) do
            if tile.fg == 3898 then
                SendPacket(2,"action|dialog_return\ndialog_name|telephone\nnum|53785|\nx|"..tile.x.."|\ny|"..tile.y.."|\nbuttonClicked|dlconvert")
                return true
            end
        end
    end
-- ACC Mode
    if str:find("/acc") then
accfast = [[
add_label_with_icon|big|`wAcc Mode|left|242|
add_spacer|small|
add_player_picker|targetACC|`wPick `4PLAYER|
add_spacer|small|
end_dialog|accfast|Thanks!||
]]
acc = {}
acc.v0 = "OnDialogRequest"
acc.v1 = accfast
SendVariant(acc)
return true
end
    if str:find("targetACC|(%d+)") then
netID = str:match("targetACC|(%d+)")
for _, tile in pairs(GetTiles ()) do
if tile.fg==242 or tile.fg==7188 or tile.fg==1796 then
SendPacket(2,"action|dialog_return\ndialog_name|lock_edit\nx|"..tile.x.."|\ny|"..tile.y.."|\ntargetNetID|"..netID)
end
end
end
    if str:find("/buymega") then
        for _, tile in pairs(GetTiles()) do
            if tile.fg == 3898 then
                SendPacket(2,"action|dialog_return\ndialog_name|telephone\nnum|53785|\nx|"..tile.x.."|\ny|"..tile.y.."|\nbuttonClicked|megaconvert")
                return true
            end
        end
    end
    if str:find("/howme") then
        game()
        return true
    end
    
    
    return false
end -- End Of Hook Send Packet
function var(var)

-- Execute SDB
    if var.v1 == "OnSDBroadcast" then
        if sdb == true then
            log("Succes Blocked SDB | `3[Disable Anti SDB for see more sdb]")
            return true
        end
    end

-- Auto Change BGL if Collect 100Dls
   if var.v1 == "OnConsoleMessage" and var.v2:find("(%d+) Diamond Lock") then
jumlah = var.v2:match("(%d+) Diamond Lock")
s = tonumber(jumlah)
         for _, tile in pairs(GetTiles()) do
             if tile.fg == 3898 then
                     for _, inv in pairs(GetInventory()) do
                           if inv.id == 1796 then
                                 if inv.amount >= 150 or s >= 99 then
                               SendPacket(2,"action|dialog_return\ndialog_name|telephone\nnum|53785|\nx|"..tile.x.."|\ny|"..tile.y.."|\nbuttonClicked|bglconvert")
end
                               end
                               end
                           end
                       end
        end   
-- Execute Auto Consumable menu
    if var.v1 == "OnConsoleMessage" and var.v2:find("Your stomach's rumbling.") then
        if arroz == true then
            consum(4604)
            log("Arroz Effect Gone!.|Auto Eat again cause u enable auto menu.")
            return true
        end
    end
    if var.v1 == "OnConsoleMessage" and var.v2:find("Your luck has worn off.") then
        if clover == true then
            consum(528)
            log("Clover Effect Gone!.|Auto Eat again cause u enable auto menu.")
            return true
        end
    end
    if var.v1:find("OnConsoleMessage") and var.v2:find("(%d+) Black Gems") then
    if bgems == true then
jumlah = var.v2:match("(%d+) Black Gems")
SendPacket(2,"action|dialog_return\ndialog_name|givexgems\nitem_id|-484|\nitem_count|"..jumlah)
return true
end
end
    if var.v1 == "OnConsoleMessage" and var.v2:find("Your stomach is rumbling.") then
        if eggbene == true then
            consum(1474)
            log("Egg Benedict Effect Gone!.|Auto Eat again cause u enable auto menu.")
            return true
        end
    end
    if var.v1 == "OnConsoleMessage" and var.v2:find("(%d+) World Lock") then
        logcol = var.v2:match("(%d+) World Lock")
        jumlah = tonumber(logcol)
        jumlah2 = jumlah*2
        logtax = math.percent(taxset,jumlah2)
        count = math.floor(logtax)
        log("If have 2 Player total bet : `9"..jumlah2.." `9World Lock `7and if tax are `3["..taxset.."] `7total tax is : ")
log(count.." `9World Lock")
    end
    if var.v1 == "OnConsoleMessage" and var.v2:find("(%d+) Diamond Lock") then
        logcol = var.v2:match("(%d+) Diamond Lock")
        jumlah = tonumber(logcol)
        jumlah2 = jumlah*2
        dl = jumlah2*100
        logtax = math.percent(taxset,dl)
        rapih = math.floor(logtax)
        count = rapih
        bgl,dl,wl = 0,0,0
        bgl = count // 10000
        dl = count % 10000 // 100
        wl = ((count% 10000) % 100)
        ontext("If have 2 Player total bet : `9"..jumlah2.." `1Diamond Lock `7and if tax are `3["..taxset.."] `7total tax is : "..count.."Wls")
log(" Tax : "..wl.." `9World Lock`7 "..dl.." `3Diamond Lock "..bgl.." `1Blue Gem Lock")
    end

    if var.v1 == "OnConsoleMessage" then
if var.v2:find("CT:") then
if var.v2:find("(.+) spun the wheel (.+)") and var.v2:find("<") and var.v2:find(">") then
ka = var.v2:match("<(.+)>")
p = var.v2:match(">(.+)")
num = var.v2:match("and got (.+)``!")
log(var.v2.."`7[`4FAKE`7]")
log(p.."`7[`4FAKE`7]")
s = {}
s.v0 = "OnTextOverlay"
s.v1 = ka.." `7Using `7[`4FAKE`7] Wheel"
SendVariant(s)
for _, player in pairs(GetPlayerList()) do
if player.name == ka then
fakenetid = player.netID
return true
end
end
end
end
end

if var.v1 == "OnConsoleMessage" and var.v2:find("spun the wheel") then
log(var.v2.."`7[`2REAL`7]")
return true
end
if var.v1 == "OnConsoleMessage" then
if var.v2:find("CT:") then
if var.v2:find("from") then
sj = var.v2:match("from(.+)")
LogToConsole("CP:0_PL:4_OID:_CT:[SB]_ `7[`#GTPSHELPER`7]"..sj)
return true
end
end
end

    if var.v1 == "OnConsoleMessage" and var.v2:find("(%d+) Blue Gem Lock") then
        logcol = var.v2:match("(%d+) Blue Gem Lock")
        jumlah = tonumber(logcol)
        jumlah2 = jumlah*2
        dl = jumlah2*10000
        logtax = math.percent(taxset,dl)
        rapih = math.floor(logtax)
        count = rapih
        bgl,dl,wl = 0,0,0
        bgl = count // 10000
        dl = count % 10000 // 100
        wl = ((count% 10000) % 100)
        ontext("If have 2 Player total bet : `9"..jumlah2.." `1Blue Gem Lock `7and if tax are `3["..taxset.."] `7total tax is : "..count.." Wls")
log("Tax: "..wl.." `9World Lock`7 "..dl.." `3Diamond Lock "..bgl.." `1Blue Gem Lock")
    end
-- Change Powerkuy LOGS
if var.v1 == "OnConsoleMessage" then
log(var.v2)
return true
end
-- Block Var Succes
    if var.v1 == "OnDialogRequest" then
          if var.v2:find("Wow, that's fast delivery.") then
             ontext("Succes Change BGls")
             return true
          end
        end
-- Execute Change BGL
   if var.v1 == "OnDialogRequest" then
    if tele == true then
        if var.v2:find("`wTelephone") then
      x = var.v2:match("embed_data|x|(%d+)")
      y = var.v2:match("embed_data|y|(%d+)")      
SendPacket(2,"action|dialog_return\ndialog_name|telephone\nnum|53785|\nx|"..x.."|\ny|"..y.."|\nbuttonClicked|bglconvert")
ontext(GetLocal().name.."Succes Change BGL!")
return true
end
            end
end
-- Ececute Tele DLs
    if var.v1 == "OnDialogRequest" then
    if teledl == true then
        if var.v2:find("Telephone") then
      x = var.v2:match("|x|(%d+)")
      y = var.v2:match("|y|(%d+)")      
SendPacket(2,"action|dialog_return\ndialog_name|telephone\nnum|53785|\nx|"..x.."|\ny|"..y.."|\nbuttonClicked|dlconvert")
return true
end
end
end
-- Execute Pocket Mode
    if var.v1 ==  "OnTalkBubble" and var.v3:find("`4MWAHAHAHA!! FIRE FIRE FIRE") then
        idbakar = var.v2
        if pocket == true then
            SendPacket(2,"action|dialog_return\ndialog_name|popup\nnetID|"..var.v2.."|\nbuttonClicked|world_ban")
            log("Succes Banned Someone Burn Your World!")
        end
    end
-- Execute Vend Helper
    if var.v1 == "OnDialogRequest" then
    if buyvend == true then
        if var.v2:find("DigiVend Machine") or var.v2:find("Vending Machine") then
            xstock = var.v2:match("|x|(%d+)")
            ystock = var.v2:match("|y|(%d+)")
            amount = amountbuy
            harga = var.v2:match("total of (%d+) (.+)|")
name = var.v2:match("total of "..harga.." `2(.+)``")
            SendPacket(2,"action|dialog_return\ndialog_name|vend_buy\nx|"..xstock.."|\ny|"..ystock.."|\nbuyamount|"..amount.."\n")
            return true
        end
    end
    end
    if var.v1 == "OnDialogRequest" then
      if buyvend == true then
          if var.v2:find("Purchase Confirmation") then
             SendPacket(2,"action|dialog_return\ndialog_name|vend_buyconfirm\nx|"..xstock.."|\ny|"..ystock.."|\nbuyamount|"..amountbuy.."|\n")
             log("You at `3Vending Shortcut Mode `0Disabled `4Fast Buy Mode `0if u need use Vending normally")
             return true
          end
      end
end
-- Execute Gas Mode
    if var.v1 == "OnTalkBubble" and var.v3:find("gas") or var.v3:find("Gas") then
        if gas == true then
            SendPacket(2,"action|dialog_return\ndialog_name|popup\nnetID|"..var.v2.."|\nbuttonClicked|pull")
            return true
        end
    end
-- Execute Logs Spin
    if var.v1 == "OnTalkBubble" and var.v2 == GetLocal().netID then
        if var.v3:find("spun the wheel") then
            logspin = var.v3
        end
    end
for _, enter in pairs(GetPlayerList()) do
        if enter.userID == loguid then
            if var.v1 == "OnTalkBubble" and var.v2 == tonumber(enter.netID) then
                if var.v3:find(enter.name.."(.+)entered") then
                    SendPacket(2,"action|dialog_return\ndialog_name|popup\nnetID|"..var.v2.."|\nbuttonClicked|pull")
                    ontext("Pulling Player 1 : "..enter.name)
                end
            end
        end
end
    for _, enter in pairs(GetPlayerList()) do
        if enter.userID == loguid2 then
            if var.v1 == "OnTalkBubble" and var.v2 == tonumber(enter.netID) then
                if var.v3:find(enter.name.."(.+)entered") then
                    SendPacket(2,"action|dialog_return\ndialog_name|popup\nnetID|"..var.v2.."|\nbuttonClicked|pull")
                    ontext("Pulling Player 2 : "..enter.name)
                end
            end
        end
end
    for _, spin in pairs(GetPlayerList()) do
        if spin.userID == loguid then
    if var.v1 == "OnTalkBubble" and var.v2 == spin.netID then
        if var.v3:find("spun the wheel") then
            playerlogspin = var.v3
SendVariant({v0 = var.v1, v1 = var.v2, v2 = "`7[`4P1`7]"..var.v3.."(cool)", v3 = var.v4})
return true
        end
    end
        end
end
    for _, spin in pairs(GetPlayerList()) do
        if spin.userID == loguid2 then
    if var.v1 == "OnTalkBubble" and var.v2 == spin.netID then
        if var.v3:find("spun the wheel") then
            playerlogspin2 = var.v3
SendVariant({v0 = var.v1, v1 = var.v2, v2 = "`7[`4P2`7]"..var.v3.."(cool)", v3 = var.v4})
return true
        end
    end
        end
end
-- Fast Wheel
if var.v1 == "OnTalkBubble" then
            if var.v3:find("spun the wheel") and var.v3:find("<") and var.v3:find(">") then
SendVariant({v0 = var.v1, v1 = var.v2, v2 = "`7[`4FAKE`7]"..var.v3.."(cool)", v3 = var.v4})
return true
end
end
if var.v1 == "OnTalkBubble" then
            if var.v3:find("spun the wheel") then
SendVariant({v0 = var.v1, v1 = var.v2, v2 = "(yes)"..var.v3.."(cool)", v3 = var.v4})
                return true
            end
end
    return false
end -- End Of Hook Variant
function pkt(str)
if collectgems == true then
if str.type == 11 then
for _, obj in pairs(GetObjectList()) do
if obj.id == str.value then
if obj.itemid == 112 then
cg = cg + obj.amount
ontext("`3Collected `5"..cg.." `#Gems")
end
end
end
end
end
if str.type == 3 then
cg = 0
end
return false
end
AddHook(pkt,"OnSendPacketRaw")
AddHook(hook,"OnSendPacket")
AddHook(var,"OnVariant")
