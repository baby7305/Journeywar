function walkAnimation1(personNr)


    Turn(abTusM5, z_axis, math.rad(5), 3)
    Turn(abTusM5, x_axis, math.rad(-3), 3)

    Turn(abTLarR5, x_axis, math.rad(11), 6)
    Turn(abTLarR5, y_axis, math.rad(-21), 5)
    Turn(abTLarR5, z_axis, math.rad(-26), 6)

    Turn(abTUarR5, x_axis, math.rad(-67), 4)
    Turn(abTUarR5, y_axis, math.rad(0), 5)
    Turn(abTUarR5, z_axis, math.rad(-86), 6)


    Turn(abTusHead5, x_axis, math.rad(5), 4)
    Turn(abTusHead5, y_axis, math.rad(3), 5)
    Turn(abTusHead5, z_axis, math.rad(-5), 5)

    Turn(abTULegR5, x_axis, math.rad(-26), 4)
    Turn(abTULegR5, y_axis, math.rad(0), 5)
    Turn(abTULegR5, z_axis, math.rad(2), 5)

    Turn(abTLLegR5, x_axis, math.rad(44), 6)
    Turn(abTLLegR5, y_axis, math.rad(0), 5)
    Turn(abTLLegR5, z_axis, math.rad(0), 5)

    Turn(abTULegL5, x_axis, math.rad(20), 4)
    Turn(abTULegL5, y_axis, math.rad(0), 5)
    Turn(abTULegL5, z_axis, math.rad(-7), 5)

    Turn(abTLLegL5, x_axis, math.rad(26), 4)
    Turn(abTLLegL5, y_axis, math.rad(0), 5)
    Turn(abTLLegL5, z_axis, math.rad(0), 5)

    Turn(abTUarL5, x_axis, math.rad(5), 4)
    Turn(abTUarL5, y_axis, math.rad(0), 5)
    Turn(abTUarL5, z_axis, math.rad(68), 5)

    Turn(abTUarL5, x_axis, math.rad(0), 4)
    Turn(abTUarL5, y_axis, math.rad(0), 5)
    Turn(abTUarL5, z_axis, math.rad(25), 5)

    Sleep(450)
    Turn(abTusM5, z_axis, math.rad(-5), 3)
    Turn(abTusM5, x_axis, math.rad(3), 3)
    Turn(abTusHead5, x_axis, math.rad(-3), 4)
    Turn(abTusHead5, y_axis, math.rad(-2), 5)
    Turn(abTusHead5, z_axis, math.rad(3), 5)

    Turn(abTULegL5, x_axis, math.rad(-26), 4)
    Turn(abTULegL5, y_axis, math.rad(0), 5)
    Turn(abTULegL5, z_axis, math.rad(-2), 5)

    Turn(abTLLegL5, x_axis, math.rad(44), 5)
    Turn(abTLLegL5, y_axis, math.rad(0), 5)
    Turn(abTLLegL5, z_axis, math.rad(0), 5)

    Turn(abTULegR5, x_axis, math.rad(20), 4)
    Turn(abTULegR5, y_axis, math.rad(0), 5)
    Turn(abTULegR5, z_axis, math.rad(7), 5)

    Turn(abTLLegR5, x_axis, math.rad(26), 4)
    Turn(abTLLegR5, y_axis, math.rad(0), 5)
    Turn(abTLLegR5, z_axis, math.rad(0), 5)

    Turn(abTLarR5, x_axis, math.rad(-46), 4)
    Turn(abTLarR5, y_axis, math.rad(-95), 5)
    Turn(abTLarR5, z_axis, math.rad(-4), 5) -- -24


    Turn(abTUarR5, x_axis, math.rad(16), 4)
    Turn(abTUarR5, y_axis, math.rad(0), 14)
    Turn(abTUarR5, z_axis, math.rad(-32), 5)

    Turn(abTUarL5, x_axis, math.rad(-25), 4)
    Turn(abTUarL5, y_axis, math.rad(0), 5)
    Turn(abTUarL5, z_axis, math.rad(70), 8)

    Turn(abTLarL5, x_axis, math.rad(0), 4)
    Turn(abTLarL5, y_axis, math.rad(0), 5)
    Turn(abTLarL5, z_axis, math.rad(10), 5)

    Sleep(450)
end

function idleAnimation1(personNr)
    idle = math.random(0, 2)
    randSleep = math.random(1000, 4000)
    if idle == 0 then

        Turn(abTusM5, z_axis, math.rad(0), 3)
        Turn(abTusM5, x_axis, math.rad(0), 3)
        Turn(abTusHead5, x_axis, math.rad(0), 4)
        Turn(abTusHead5, y_axis, math.rad(0), 5)
        Turn(abTusHead5, z_axis, math.rad(0), 5)

        Turn(abTULegL5, x_axis, math.rad(0), 4)
        Turn(abTULegL5, y_axis, math.rad(0), 5)
        Turn(abTULegL5, z_axis, math.rad(0), 5)

        Turn(abTLLegL5, x_axis, math.rad(0), 5)
        Turn(abTLLegL5, y_axis, math.rad(0), 5)
        Turn(abTLLegL5, z_axis, math.rad(0), 5)

        Turn(abTULegR5, x_axis, math.rad(0), 4)
        Turn(abTULegR5, y_axis, math.rad(0), 5)
        Turn(abTULegR5, z_axis, math.rad(0), 5)

        Turn(abTLLegR5, x_axis, math.rad(26), 4)
        Turn(abTLLegR5, y_axis, math.rad(0), 5)
        Turn(abTLLegR5, z_axis, math.rad(0), 5)

        Turn(abTLarR5, x_axis, math.rad(-1), 4)
        Turn(abTLarR5, y_axis, math.rad(-17), 5)
        Turn(abTLarR5, z_axis, math.rad(-92), 5) -- -24


        Turn(abTUarR5, x_axis, math.rad(-60), 4)
        Turn(abTUarR5, y_axis, math.rad(0), 14)
        Turn(abTUarR5, z_axis, math.rad(-71), 5)

        Turn(abTUarL5, x_axis, math.rad(-66), 4)
        Turn(abTUarL5, y_axis, math.rad(0), 5)
        Turn(abTUarL5, z_axis, math.rad(64), 8)

        Turn(abTLarL5, x_axis, math.rad(0), 4)
        Turn(abTLarL5, y_axis, math.rad(131), 5)
        Turn(abTLarL5, z_axis, math.rad(66), 5)


        Sleep(randSleep)
    elseif idle == 1 then

        Turn(abTusM5, z_axis, math.rad(0), 3)
        Turn(abTusM5, x_axis, math.rad(0), 3)
        Turn(abTusHead5, x_axis, math.rad(0), 4)
        Turn(abTusHead5, y_axis, math.rad(0), 5)
        Turn(abTusHead5, z_axis, math.rad(0), 5)

        Turn(abTULegL5, x_axis, math.rad(0), 4)
        Turn(abTULegL5, y_axis, math.rad(0), 5)
        Turn(abTULegL5, z_axis, math.rad(0), 5)

        Turn(abTLLegL5, x_axis, math.rad(0), 5)
        Turn(abTLLegL5, y_axis, math.rad(0), 5)
        Turn(abTLLegL5, z_axis, math.rad(0), 5)

        Turn(abTULegR5, x_axis, math.rad(0), 4)
        Turn(abTULegR5, y_axis, math.rad(0), 5)
        Turn(abTULegR5, z_axis, math.rad(0), 5)

        Turn(abTLLegR5, x_axis, math.rad(26), 4)
        Turn(abTLLegR5, y_axis, math.rad(0), 5)
        Turn(abTLLegR5, z_axis, math.rad(0), 5)

        Turn(abTLarR5, x_axis, math.rad(-1), 4)
        Turn(abTLarR5, y_axis, math.rad(-17), 5)
        Turn(abTLarR5, z_axis, math.rad(-92), 5) -- -24


        Turn(abTUarR5, x_axis, math.rad(-60), 4)
        Turn(abTUarR5, y_axis, math.rad(0), 14)
        Turn(abTUarR5, z_axis, math.rad(-71), 5)

        Turn(abTUarL5, x_axis, math.rad(-66), 4)
        Turn(abTUarL5, y_axis, math.rad(0), 5)
        Turn(abTUarL5, z_axis, math.rad(64), 8)

        Turn(abTLarL5, x_axis, math.rad(0), 4)
        Turn(abTLarL5, y_axis, math.rad(131), 5)
        Turn(abTLarL5, z_axis, math.rad(66), 5)

        Talk = math.random(1, 6)
        for tlk = 1, Talk, 1 do
            shake = math.random(0, 5)
            headBang = math.random(-9, 18)
            if shake ~= 3 then
                Turn(abTusHead5, x_axis, math.rad(headBang), 4)
                Turn(abTusHead5, y_axis, math.rad(0), 5)
                Turn(abTusHead5, z_axis, math.rad(0), 5)
            else
                Turn(abTusHead5, x_axis, math.rad(0), 4)
                Turn(abTusHead5, y_axis, math.rad(headBang), 5)
                Turn(abTusHead5, z_axis, math.rad(0), 5)
                Sleep(450)
                Turn(abTusHead5, x_axis, math.rad(0), 4)
                Turn(abTusHead5, y_axis, math.rad(-1 * headBang), 5)
                Turn(abTusHead5, z_axis, math.rad(0), 5)
                Sleep(450)
                Turn(abTusHead5, x_axis, math.rad(0), 4)
                Turn(abTusHead5, y_axis, math.rad(headBang), 5)
                Turn(abTusHead5, z_axis, math.rad(0), 5)
            end
            Sleep(450 + (headBang * 2))
        end

        Sleep(randSleep)
    else

        Turn(abTusM5, z_axis, math.rad(0), 3)
        Turn(abTusM5, x_axis, math.rad(0), 3)
        Turn(abTusHead5, x_axis, math.rad(0), 4)
        Turn(abTusHead5, y_axis, math.rad(0), 5)
        Turn(abTusHead5, z_axis, math.rad(0), 5)

        Turn(abTULegL5, x_axis, math.rad(0), 4)
        Turn(abTULegL5, y_axis, math.rad(0), 5)
        Turn(abTULegL5, z_axis, math.rad(0), 5)

        Turn(abTLLegL5, x_axis, math.rad(0), 5)
        Turn(abTLLegL5, y_axis, math.rad(0), 5)
        Turn(abTLLegL5, z_axis, math.rad(0), 5)

        Turn(abTULegR5, x_axis, math.rad(0), 4)
        Turn(abTULegR5, y_axis, math.rad(0), 5)
        Turn(abTULegR5, z_axis, math.rad(0), 5)

        Turn(abTLLegR5, x_axis, math.rad(26), 4)
        Turn(abTLLegR5, y_axis, math.rad(0), 5)
        Turn(abTLLegR5, z_axis, math.rad(0), 5)

        Turn(abTLarR5, x_axis, math.rad(-1), 4)
        Turn(abTLarR5, y_axis, math.rad(-17), 5)
        Turn(abTLarR5, z_axis, math.rad(-12), 5) -- -24


        Turn(abTUarR5, x_axis, math.rad(-60), 4)
        Turn(abTUarR5, y_axis, math.rad(0), 14)
        Turn(abTUarR5, z_axis, math.rad(-71), 5)

        Turn(abTUarL5, x_axis, math.rad(-66), 4)
        Turn(abTUarL5, y_axis, math.rad(0), 5)
        Turn(abTUarL5, z_axis, math.rad(46), 8)

        Turn(abTLarL5, x_axis, math.rad(113), 4)
        Turn(abTLarL5, y_axis, math.rad(131), 5)
        Turn(abTLarL5, z_axis, math.rad(119), 5)





        Sleep(randSleep)
    end
end


function walkAnimation2(personNr)
    toDrunk2Walk = math.random(0, 4)
    if toDrunk2Walk ~= 3 then
        Turn(abTusM7, z_axis, math.rad(0), 3)
        Turn(abTUarR7, x_axis, math.rad(-81), 7)
        Turn(abTUarR7, y_axis, math.rad(9), 1)
        Turn(abTUarR7, z_axis, math.rad(37), 3)

        Turn(abTLarR7, z_axis, math.rad(79), 8)

        Turn(abTusM7, x_axis, math.rad(-1), 8)
        Turn(abTusM7, z_axis, math.rad(-2), 0.5)
        Turn(abTHead7, x_axis, math.rad(7), 3)
        Turn(abTHead7, z_axis, math.rad(10), 3)
        Turn(abTHead7, y_axis, math.rad(0), 3)
        Move(abTusM7, y_axis, 0, 9)
        xor = math.random(2, 3)
        if xor == 1 then
            Turn(abTUarL7, x_axis, math.rad(7), 2)
            Turn(abTUarL7, z_axis, math.rad(-44), 5)
            Turn(abTLarL7, z_axis, math.rad(-66), 7)
            Sleep(176)
        elseif xor == 2 then
            Turn(abTUarL7, x_axis, math.rad(-192), 12)
            Turn(abTUarL7, y_axis, math.rad(35), 5)
            Turn(abTUarL7, z_axis, math.rad(43), 5)
            Turn(abTLarL7, z_axis, math.rad(-124), 12)
            Sleep(500)
        elseif xor == 3 then
            Turn(abTUarL7, x_axis, math.rad(-48), 12)
            Turn(abTUarL7, y_axis, math.rad(79), 5)
            Turn(abTUarL7, z_axis, math.rad(-130), 15)
            Turn(abTLarL7, z_axis, math.rad(-151), 12)
            Turn(abTLarL7, x_axis, math.rad(-14), 3)
            Sleep(700)
        elseif xor == 4 then
            Turn(abTUarL7, x_axis, math.rad(-37), 12)
            Turn(abTUarL7, y_axis, math.rad(-58), 5)
            Turn(abTUarL7, z_axis, math.rad(74), 15)
            Turn(abTLarL7, z_axis, math.rad(-14), 2)
            Turn(abTLarL7, x_axis, math.rad(-12), 3)
            Sleep(200)
            winkeWinke = math.random(0, 5)
            for l = 1, winkeWinke, 1 do
                Turn(abTLarL7, z_axis, math.rad(-46), 5)
                Sleep(400)
                Turn(abTLarL7, z_axis, math.rad(-19), 4)
                Sleep(400)
            end
        else
            --Reset the Arm
            Turn(abTUarL7, x_axis, math.rad(0), 12)
            Turn(abTUarL7, y_axis, math.rad(0), 5)
            Turn(abTUarL7, z_axis, math.rad(-40), 15)
            Turn(abTLarL7, z_axis, math.rad(-19), 2)
            Turn(abTLarL7, y_axis, math.rad(0), 2)
            Turn(abTLarL7, x_axis, math.rad(0), 3)
            Sleep(400)
        end

        WaitForTurn(abTusM7, x_axis)
        WaitForTurn(abTusM7, x_axis)
        Turn(abTUarR7, x_axis, math.rad(-92), 7)

        Turn(abTUarR7, y_axis, math.rad(9), 1)
        Turn(abTUarR7, z_axis, math.rad(61), 3)
        Turn(abTLarR7, y_axis, math.rad(22), 8)
        Turn(abTLarR7, z_axis, math.rad(81), 8)


        Turn(abTusM7, x_axis, math.rad(2), 0.5)
        Turn(abTusM7, z_axis, math.rad(2), 0.5)
        Turn(abTHead7, x_axis, math.rad(19), 3)
        Turn(abTHead7, z_axis, math.rad(31), 3)
        Turn(abTHead7, y_axis, math.rad(16), 3)
        WaitForTurn(abTUarR7, y_axis)
        WaitForTurn(abTusM7, x_axis)
        WaitForTurn(abTusM7, x_axis)
    else
        Explode(glasprop7, SFX.FALL + SFX.NO_CEG_TRAIL + SFX.NO_HEATCLOUD)
        Hide(glasprop7)
        Turn(abTusM7, x_axis, math.rad(63), 12)
        Move(abTusM7, y_axis, -0.15, 1)
        crawl = math.random(3, 9)
        Turn(abTUarL7, x_axis, math.rad(0), 12)
        Turn(abTUarL7, y_axis, math.rad(0), 5)
        Turn(abTUarL7, z_axis, math.rad(0), 15)
        Turn(abTLarL7, z_axis, math.rad(0), 2)
        Turn(abTLarL7, y_axis, math.rad(0), 2)
        Turn(abTLarL7, x_axis, math.rad(0), 3)
        Turn(abTUarR7, x_axis, math.rad(0), 1)
        Turn(abTUarR7, y_axis, math.rad(0), 8)
        Turn(abTUarR7, z_axis, math.rad(0), 4)
        Turn(abTLarR7, y_axis, math.rad(0), 8)
        Turn(abTLarR7, z_axis, math.rad(0), 8)
        Turn(abTLarR7, x_axis, math.rad(0), 8)
        Sleep(350)

        for y = 1, crawl, 1 do
            Turn(abTUarL7, x_axis, math.rad(2), 12)
            Turn(abTUarL7, y_axis, math.rad(-74), 5) --
            Turn(abTUarL7, z_axis, math.rad(-11), 15)
            Turn(abTLarL7, x_axis, math.rad(-36), 2)
            Turn(abTLarL7, y_axis, math.rad(0), 2)
            Turn(abTLarL7, z_axis, math.rad(51), 3)


            Turn(abTUarR7, x_axis, math.rad(0), 1)
            Turn(abTUarR7, y_axis, math.rad(69), 8) --
            Turn(abTUarR7, z_axis, math.rad(30), 4)
            Turn(abTLarR7, y_axis, math.rad(22), 8)
            Turn(abTLarR7, z_axis, math.rad(-29), 8)
            Turn(abTLarR7, x_axis, math.rad(7), 8)

            Turn(abTHead7, x_axis, math.rad(-30), 3)
            Turn(abTHead7, z_axis, math.rad(20), 3)
            Turn(abTHead7, y_axis, math.rad(-16), 3)

            Sleep(360)

            Turn(abTusM7, z_axis, math.rad(-9), 3)

            Turn(abTUarL7, x_axis, math.rad(0), 1)
            Turn(abTUarL7, y_axis, math.rad(-69), 8) --
            Turn(abTUarL7, z_axis, math.rad(-30), 4)
            Turn(abTLarL7, y_axis, math.rad(-22), 8)
            Turn(abTLarL7, z_axis, math.rad(29), 8)
            Turn(abTLarL7, x_axis, math.rad(7), 8)



            Turn(abTUarR7, x_axis, math.rad(-26), 1) --
            Turn(abTUarR7, y_axis, math.rad(41), 8)
            Turn(abTUarR7, z_axis, math.rad(80), 4)
            Turn(abTLarR7, x_axis, math.rad(7), 8)
            Turn(abTLarR7, y_axis, math.rad(22), 8)
            Turn(abTLarR7, z_axis, math.rad(39), 8)

            Turn(abTHead7, x_axis, math.rad(-32), 3)
            Turn(abTHead7, z_axis, math.rad(-12), 3)
            Turn(abTHead7, y_axis, math.rad(13), 3)

            Sleep(450)
            Turn(abTusM7, z_axis, math.rad(9), 3)

            Turn(abTUarL7, x_axis, math.rad(-26), 1) --
            Turn(abTUarL7, y_axis, math.rad(-41), 8)
            Turn(abTUarL7, z_axis, math.rad(-80), 4)
            Turn(abTLarL7, x_axis, math.rad(7), 8)
            Turn(abTLarL7, y_axis, math.rad(-22), 8)
            Turn(abTLarL7, z_axis, math.rad(-39), 8)



            Turn(abTUarR7, x_axis, math.rad(2), 12)
            Turn(abTUarR7, y_axis, math.rad(74), 5) --
            Turn(abTUarR7, z_axis, math.rad(11), 15)
            Turn(abTLarR7, x_axis, math.rad(-36), 2)
            Turn(abTLarR7, y_axis, math.rad(0), 2)
            Turn(abTLarR7, z_axis, math.rad(-51), 3)




            Turn(abTHead7, x_axis, math.rad(24), 3)
            Turn(abTHead7, z_axis, math.rad(-9), 3)
            Turn(abTHead7, y_axis, math.rad(-18), 3)
            Sleep(640)
        end
    end
end

function idleAnimation2(personNr)
    xenio = math.random(0, 1)
    if xenio == 1 then
        Turn(abTusM7, x_axis, math.rad(-90), 22)

        Move(abTusM7, y_axis, -0.3, 1)
    else
        Turn(abTusM7, z_axis, math.rad(0), 3)

        Turn(abTusM7, y_axis, math.rad(0), 3)
    end
    Move(abTusM7, y_axis, 0, 9)

    Show(glasprop7)
    Sleep(250)
    Turn(abTHead7, x_axis, math.rad(0), 3)
    Turn(abTHead7, z_axis, math.rad(0), 3)
    Turn(abTHead7, y_axis, math.rad(0), 3)
    Sleep(250)
    Turn(abTUarR7, x_axis, math.rad(-122), 12)
    Turn(abTUarR7, y_axis, math.rad(-55), 6)
    Turn(abTUarR7, z_axis, math.rad(57), 6)
    Turn(abTLarR7, x_axis, math.rad(4), 8)
    Turn(abTLarR7, y_axis, math.rad(49), 6)
    Turn(abTLarR7, z_axis, math.rad(96), 12)
    Turn(glasprop7, x_axis, math.rad(9), 8)
    Turn(glasprop7, y_axis, math.rad(24), 6)
    Turn(glasprop7, z_axis, math.rad(281), 28)
    Sleep(2200)
    Turn(abTUarR7, x_axis, math.rad(-14), 12)
    Turn(abTUarR7, y_axis, math.rad(-100), 6)
    Turn(abTUarR7, z_axis, math.rad(57), 6)
    Turn(abTLarR7, x_axis, math.rad(4), 8)
    Turn(abTLarR7, y_axis, math.rad(49), 6)
    Turn(abTLarR7, z_axis, math.rad(96), 12)
    Turn(glasprop7, x_axis, math.rad(0), 8)
    Turn(glasprop7, y_axis, math.rad(0), 6)
    Turn(glasprop7, z_axis, math.rad(0), 28)
    Sleep(900)
    schluckAuf = math.random(0, 2)
    if schluckAuf == 1 then
        Turn(abTUarL7, x_axis, math.rad(4), 12)
        Turn(abTUarL7, y_axis, math.rad(-74), 5)
        Turn(abTUarL7, z_axis, math.rad(-31), 15)
        Turn(abTLarL7, z_axis, math.rad(36), 2)
        Turn(abTLarL7, y_axis, math.rad(0), 2)
        Turn(abTLarL7, x_axis, math.rad(0), 3)

    else
        Turn(abTUarL7, x_axis, math.rad(108), 12) --
        Turn(abTUarL7, y_axis, math.rad(0), 5)
        Turn(abTUarL7, z_axis, math.rad(-54), 15)
        Turn(abTLarL7, z_axis, math.rad(-18), 2)
        Turn(abTLarL7, y_axis, math.rad(0), 2)
        Turn(abTLarL7, x_axis, math.rad(-137), 3)
        Sleep(450)
    end
end

--[[
	1	abTUarR3= piece "abTUarR3"

	2	abTLarR3= piece "abTLarR3"

	3	abTUarL3= piece "abTUarL3"

	4	abTLarL3= piece "abTLarL3"

	5	glasprop3= piece "glasprop3"

	6	abTULegL3= piece "abTULegL3"

	7	abTLLegL3= piece "abTLLegL3"

	8	abTLLegR3= piece "abTLLegR3"

	9	abTHead3= piece "abTHead3"


]]
function walkAnimation3(personNr)
    multiPlaya = 1
    if dramatisPersona[personNr][12] == 1 then
        multiPlaya = -1
    end
    Hide(dramatisPersona[personNr][3][5])

    Turn(dramatisPersona[personNr][2], x_axis, math.rad(2), 0.5)
    --Turn(dramatisPersona[personNr][2],y_axis,math.rad((dramatisPersona[personNr][4])+4),0.9)
    Turn(dramatisPersona[personNr][2], z_axis, math.rad(-2), 0.9)
    --leg
    Turn(dramatisPersona[personNr][3][6], x_axis, math.rad(-25), 1)
    Turn(dramatisPersona[personNr][3][6], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][6], z_axis, math.rad(-4), 1)
    --lowerleg
    Turn(dramatisPersona[personNr][3][7], x_axis, math.rad(26), 1)
    Turn(dramatisPersona[personNr][3][7], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][7], z_axis, math.rad(9), 1)

    Turn(dramatisPersona[personNr][3][8], x_axis, math.rad(19), 1)
    Turn(dramatisPersona[personNr][3][8], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][8], z_axis, math.rad(0), 1)
    --head
    Turn(dramatisPersona[personNr][3][9], x_axis, math.rad(9), 1)
    Turn(dramatisPersona[personNr][3][9], y_axis, math.rad(1), 0.2)
    Turn(dramatisPersona[personNr][3][9], z_axis, math.rad(-5), 0.5)

    --arms
    Turn(dramatisPersona[personNr][3][1], x_axis, math.rad(-18), 1)
    Turn(dramatisPersona[personNr][3][1], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][1], z_axis, math.rad(-81 * multiPlaya), 1)

    Turn(dramatisPersona[personNr][3][2], x_axis, math.rad(3), 1)
    Turn(dramatisPersona[personNr][3][2], y_axis, math.rad(-35 * multiPlaya), 1)
    Turn(dramatisPersona[personNr][3][2], z_axis, math.rad(-6 * multiPlaya), 3)

    --left
    Turn(dramatisPersona[personNr][3][3], x_axis, math.rad(28), 1)
    Turn(dramatisPersona[personNr][3][3], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][3], z_axis, math.rad(84 * multiPlaya), 4)

    Turn(dramatisPersona[personNr][3][4], x_axis, math.rad(-27), 3)
    Turn(dramatisPersona[personNr][3][4], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][4], z_axis, math.rad(-1 * multiPlaya), 1)



    Sleep(250)

    --armright
    Turn(dramatisPersona[personNr][3][1], x_axis, math.rad(-8), 1)
    Turn(dramatisPersona[personNr][3][1], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][1], z_axis, math.rad(-65 * multiPlaya), 1)

    Turn(dramatisPersona[personNr][3][2], x_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][2], y_axis, math.rad(25 * multiPlaya), 1)
    Turn(dramatisPersona[personNr][3][2], z_axis, math.rad(-20 * multiPlaya), 1)

    --left
    Turn(dramatisPersona[personNr][3][3], x_axis, math.rad(10), 1)
    Turn(dramatisPersona[personNr][3][3], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][3], z_axis, math.rad(82 * multiPlaya), 1)

    Turn(dramatisPersona[personNr][3][4], x_axis, math.rad(-9), 1)
    Turn(dramatisPersona[personNr][3][4], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][4], z_axis, math.rad(3 * multiPlaya), 1)

    Sleep(200)
    Turn(dramatisPersona[personNr][2], x_axis, math.rad(-1), 0.5)
    --Turn(dramatisPersona[personNr][2],y_axis,math.rad((dramatisPersona[personNr][4])+4),0.9)
    Turn(dramatisPersona[personNr][2], z_axis, math.rad(2), 0.9)

    --armright

    Turn(dramatisPersona[personNr][3][1], x_axis, math.rad(16), 1)
    Turn(dramatisPersona[personNr][3][1], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][1], z_axis, math.rad(-70 * multiPlaya), 1)

    Turn(dramatisPersona[personNr][3][2], x_axis, math.rad(-26), 1)
    Turn(dramatisPersona[personNr][3][2], y_axis, math.rad(25 * multiPlaya), 1)
    Turn(dramatisPersona[personNr][3][2], z_axis, math.rad(-20 * multiPlaya), 1)

    --left
    Turn(dramatisPersona[personNr][3][3], x_axis, math.rad(-11), 1)
    Turn(dramatisPersona[personNr][3][3], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][3], z_axis, math.rad(82 * multiPlaya), 1)

    Turn(dramatisPersona[personNr][3][4], x_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][4], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][4], z_axis, math.rad(15 * multiPlaya), 1)

    -----------------------------------------------------------
    -- leg
    Turn(dramatisPersona[personNr][3][6], x_axis, math.rad(14), 1)
    Turn(dramatisPersona[personNr][3][6], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][6], z_axis, math.rad(-4), 1)
    --lowerleg
    Turn(dramatisPersona[personNr][3][7], x_axis, math.rad(2), 1)
    Turn(dramatisPersona[personNr][3][7], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][7], z_axis, math.rad(4), 1)

    Turn(dramatisPersona[personNr][3][8], x_axis, math.rad(-11), 1)
    Turn(dramatisPersona[personNr][3][8], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][8], z_axis, math.rad(0), 1)
    --head
    Turn(dramatisPersona[personNr][3][9], x_axis, math.rad(10), 1)
    Turn(dramatisPersona[personNr][3][9], y_axis, math.rad(9), 0.2)
    Turn(dramatisPersona[personNr][3][9], z_axis, math.rad(8), 0.5)




    Sleep(440)
end

function idleAnimation3(personNr)


    Show(dramatisPersona[personNr][3][5])
    --Turn(dramatisPersona[personNr][2],y_axis,math.rad(( faceValue2Degree(personNr))),0.9)
    Turn(dramatisPersona[personNr][3][6], x_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][6], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][6], z_axis, math.rad(0), 1)
    --lowerleg
    Turn(dramatisPersona[personNr][3][7], x_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][7], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][7], z_axis, math.rad(4), 1)

    Turn(dramatisPersona[personNr][3][8], x_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][8], y_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][8], z_axis, math.rad(0), 1)
    --head
    Turn(dramatisPersona[personNr][3][9], x_axis, math.rad(0), 1)
    Turn(dramatisPersona[personNr][3][9], y_axis, math.rad(0), 0.2)
    Turn(dramatisPersona[personNr][3][9], z_axis, math.rad(0), 0.5)


    Sleep(500)
end

function walkAnimation4(personNr)

    --- -Spring.Echo(personNr)
    Turn(dramatisPersona[personNr][2], x_axis, math.rad(1), 0.1)
    Turn(dramatisPersona[personNr][3][1], x_axis, math.rad(35), 2)
    Turn(dramatisPersona[personNr][3][1], y_axis, math.rad(-33), 3)
    Turn(dramatisPersona[personNr][3][2], y_axis, math.rad(-56), 4)
    WaitForTurn(dramatisPersona[personNr][2], x_axis)
    Turn(dramatisPersona[personNr][2], x_axis, math.rad(0), 0.1)
    Turn(dramatisPersona[personNr][3][2], x_axis, math.rad(35), 2)
    Turn(dramatisPersona[personNr][3][2], y_axis, math.rad(-33), 3)
    Turn(dramatisPersona[personNr][3][1], y_axis, math.rad(-56), 4)
    WaitForTurn(dramatisPersona[personNr][2], x_axis)
    Sleep(50)
end

function idleAnimation4(personNr) --done
    drehdurch = math.random(0, 1)
    if drehdurch == 1 then
        Turn(dramatisPersona[personNr][3][2], x_axis, math.rad(0), 2)
        Turn(dramatisPersona[personNr][3][2], y_axis, math.rad(0), 2)
        Turn(dramatisPersona[personNr][3][2], z_axis, math.rad(75), 2)

        Turn(dramatisPersona[personNr][3][1], x_axis, math.rad(0), 2)
        Turn(dramatisPersona[personNr][3][1], y_axis, math.rad(0), 2)
        Turn(dramatisPersona[personNr][3][1], z_axis, math.rad(-76), 2)
        Spin(dramatisPersona[personNr][2], x_axis, 2, 0.62)
        Sleep(6000)
        StopSpin(dramatisPersona[personNr][2], x_axis)
    else
        Move(dramatisPersona[personNr][2], y_axis, 4, 4)
        WaitForMove(dramatisPersona[personNr][2], y_axis)

        Turn(dramatisPersona[personNr][3][2], x_axis, math.rad(-5.9), 2)
        Turn(dramatisPersona[personNr][3][2], y_axis, math.rad(-36), 2)
        xorbic = math.random(0, 1)
        if xorbic == 1 then
            Turn(dramatisPersona[personNr][3][1], x_axis, math.rad(-5.9), 2)
            Turn(dramatisPersona[personNr][3][1], z_axis, math.rad(259), 14)
            Turn(dramatisPersona[personNr][3][2], z_axis, math.rad(-259), 14)
        else
            Turn(dramatisPersona[personNr][3][2], x_axis, math.rad(5), 2)
            Turn(dramatisPersona[personNr][3][2], z_axis, math.rad(-5), 14)
        end

        Spin(dramatisPersona[personNr][2], y_axis, 2, 0.042)
        Spin(dramatisPersona[personNr][2], z_axis, 0.2, 0.042)
        upAndDown = math.random(-20, 18)
        if upAndDown < 0 then
            Move(dramatisPersona[personNr][2], z_axis, 25, 7)
            WaitForMove(dramatisPersona[personNr][2], z_axis)
        end
        Move(dramatisPersona[personNr][2], y_axis, upAndDown, 1)
        sleepy = math.random(2000, 32000)
        Sleep(sleepy)



        Move(dramatisPersona[personNr][2], y_axis, 0, 4)
        WaitForMove(dramatisPersona[personNr][2], y_axis)
        Move(dramatisPersona[personNr][2], z_axis, dramatisPersona[personNr][5], 7)
        WaitForMove(dramatisPersona[personNr][2], z_axis)

        Sleep(50)
        Turn(dramatisPersona[personNr][3][2], x_axis, math.rad(0), 2)
        Turn(dramatisPersona[personNr][3][2], y_axis, math.rad(0), 2)
        Turn(dramatisPersona[personNr][3][2], z_axis, math.rad(0), 14)
        Turn(dramatisPersona[personNr][3][1], x_axis, math.rad(0), 2)
        Turn(dramatisPersona[personNr][3][1], y_axis, math.rad(0), 2)
        Turn(dramatisPersona[personNr][3][1], z_axis, math.rad(0), 14)
        StopSpin(dramatisPersona[personNr][2], y_axis)
        StopSpin(dramatisPersona[personNr][2], z_axis)
        Turn(dramatisPersona[personNr][2], z_axis, math.rad(0), 12)
        --Turn(dramatisPersona[personNr][2],y_axis,math.rad(( faceValue2Degree(personNr))),12)
        Sleep(500)
    end
end

function walkAnimation5(personNr)
    Turn(abTMarmL, x_axis, math.rad(-32), 8)
    Turn(abTMhandL, y_axis, math.rad(-93), 12)
    Turn(abTMhandL, z_axis, math.rad(60), 12)

    Turn(abTMuplR, x_axis, math.rad(100), 16)
    Turn(abTMlowR, x_axis, math.rad(-82), 16)
    Turn(abTMFeedR, x_axis, math.rad(-20), 4)
    Turn(abTMarmR, x_axis, math.rad(33), 6)

    Turn(abTMuplL, x_axis, math.rad(-16), 5)
    Turn(abTMlowL, x_axis, math.rad(-70), 16)
    Turn(abTMFeedL, x_axis, math.rad(88), 16)
    Turn(abTMarmR, x_axis, math.rad(33), 6)

    WaitForTurn(abTMarmR, x_axis)
    WaitForTurn(abTMFeedL, x_axis)
    WaitForTurn(abTMlowL, x_axis)
    WaitForTurn(abTMuplL, x_axis)
    WaitForTurn(abTMarmR, x_axis)
    WaitForTurn(abTMFeedR, x_axis)
    WaitForTurn(abTMlowR, x_axis)
    WaitForTurn(abTMuplR, x_axis)
    Sleep(10)
    --Waits till step is done

    Turn(abTMuplL, x_axis, math.rad(100), 16)
    Turn(abTMlowL, x_axis, math.rad(-82), 16)
    Turn(abTMFeedL, x_axis, math.rad(-20), 4)
    Turn(abTMarmR, x_axis, math.rad(33), 6)

    Turn(abTMuplR, x_axis, math.rad(-16), 5)
    Turn(abTMlowR, x_axis, math.rad(-70), 16)
    Turn(abTMFeedR, x_axis, math.rad(88), 16)

    Turn(abTMarmL, x_axis, math.rad(32), 6)
    Turn(abTMhandL, y_axis, math.rad(-93), 12)
    Turn(abTMhandL, z_axis, math.rad(121), 12)

    WaitForTurn(abTMarmR, x_axis)
    WaitForTurn(abTMFeedL, x_axis)
    WaitForTurn(abTMlowL, x_axis)
    WaitForTurn(abTMuplL, x_axis)
    WaitForTurn(abTMarmR, x_axis)
    WaitForTurn(abTMFeedR, x_axis)
    WaitForTurn(abTMlowR, x_axis)
    WaitForTurn(abTMuplR, x_axis)
    Sleep(10)
end

function idleAnimation5(personNr)


    Turn(abTMuplL, x_axis, math.rad(0), 16)
    Turn(abTMlowL, x_axis, math.rad(0), 16)
    Turn(abTMFeedL, x_axis, math.rad(0), 4)
    Turn(abTMarmR, x_axis, math.rad(0), 6)

    Turn(abTMuplR, x_axis, math.rad(0), 5)
    Turn(abTMlowR, x_axis, math.rad(0), 16)
    Turn(abTMFeedR, x_axis, math.rad(0), 16)
    Turn(abTMarmL, x_axis, math.rad(0), 6)
    Turn(abTMhandL, z_axis, math.rad(90), 12)
    WaitForTurn(abTMarmR, x_axis)
    WaitForTurn(abTMFeedL, x_axis)
    WaitForTurn(abTMlowL, x_axis)
    WaitForTurn(abTMuplL, x_axis)
    WaitForTurn(abTMarmR, x_axis)
    WaitForTurn(abTMFeedR, x_axis)
    WaitForTurn(abTMlowR, x_axis)
    WaitForTurn(abTMuplR, x_axis)
    Sleep(100)
    Turn(abTMarmL, x_axis, math.rad(-34), 6)
    Turn(abTMhandL, z_axis, math.rad(53), 12)
    Turn(abTMhandL, y_axis, math.rad(-50), 12)
    Turn(abTMhandL, x_axis, math.rad(32), 12)
    Sleep(4000)
    Turn(abTMarmL, x_axis, math.rad(0), 6)
    Turn(abTMhandL, z_axis, math.rad(90), 12)
    Turn(abTMhandL, y_axis, math.rad(-90), 12)
    Turn(abTMhandL, x_axis, math.rad(0), 12)
    Sleep(1000)
end

--JUMPONIT

--[[		--traditional pieces hiearchy, swingCenter beeing the Center
		local swingCenter10 = piece "swingCenter10"
		table.insert(person,1,swingCenter10) --swingCenter always atfirstPlace 1

		local abBuMain10 = piece "abBuMain10" -- the persons centerpiece 2
		table.insert(person,2,abBuMain10)

		piecetable={}  --contains the remaining pieces 3

		abBuArmR 10= piece "abBuArmR10"	1
		abBuLegR 10= piece "abBuLegR10"	2
		abBuLegL 10= piece "abBuLegL10"	3
		abBuArmL 10= piece "abBuArmL10"	4
		glasprop 10= piece "glasprop10"	5
		table.insert(piecetable,abBuArmR10)
		table.insert(piecetable,abBuLegR10)
		table.insert(piecetable,abBuLegL10)
		table.insert(piecetable,abBuArmL10)
		table.insert(piecetable,glasprop10)

		table.insert(person,3,piecetable)
		dramatisPersona[personNr][3][5]
		]]

function walkAnimation6(personNr)
    Turn(dramatisPersona[personNr][3][4], x_axis, math.rad(35), 3)
    Turn(dramatisPersona[personNr][3][2], x_axis, math.rad(-22), 2)
    Turn(dramatisPersona[personNr][3][1], y_axis, math.rad(-90), 7)
    zo = math.random(-85, -70)
    Turn(dramatisPersona[personNr][3][1], z_axis, math.rad(zo), 2)

    Turn(dramatisPersona[personNr][3][4], x_axis, math.rad(-26), 3)
    Turn(dramatisPersona[personNr][3][4], y_axis, math.rad(96), 7)
    Turn(dramatisPersona[personNr][3][4], z_axis, math.rad(30), 3)

    Turn(dramatisPersona[personNr][3][5], x_axis, math.rad(32), 3)
    Turn(dramatisPersona[personNr][3][5], y_axis, math.rad(63), 7)
    Turn(dramatisPersona[personNr][3][5], z_axis, math.rad(8), 3)

    WaitForTurn(dramatisPersona[personNr][3][4], x_axis)
    WaitForTurn(dramatisPersona[personNr][3][2], x_axis)
    WaitForTurn(dramatisPersona[personNr][3][1], y_axis)


    Turn(dramatisPersona[personNr][3][4], x_axis, math.rad(-14), 3)
    xy = math.random(110, 130)
    --Turn(dramatisPersona[personNr][3][4],y_axis,math.rad(xy),2)
    --Turn(dramatisPersona[personNr][3][4],z_axis,math.rad(40),4)

    Turn(dramatisPersona[personNr][3][2], x_axis, math.rad(35), 4)
    Turn(dramatisPersona[personNr][3][4], x_axis, math.rad(-22), 3)
    Turn(dramatisPersona[personNr][3][1], y_axis, math.rad(-90), 2)
    za = math.random(-110, -100)
    Turn(dramatisPersona[personNr][3][1], z_axis, math.rad(za), 6)
    WaitForTurn(dramatisPersona[personNr][3][4], x_axis)
    WaitForTurn(dramatisPersona[personNr][3][2], x_axis)
    WaitForTurn(dramatisPersona[personNr][3][1], y_axis)
    Sleep(20)
end

function idleAnimation6(personNr)
    Turn(dramatisPersona[personNr][3][2], x_axis, math.rad(0), 4)
    Turn(dramatisPersona[personNr][3][4], x_axis, math.rad(0), 3)
    lulz = math.random(0, 2)
    if lulz == 1 then
        handClap = math.random(3, 16)
        for i = 1, handClap, 1 do
            Turn(dramatisPersona[personNr][3][1], x_axis, math.rad(129), 7)
            Turn(dramatisPersona[personNr][3][1], y_axis, math.rad(-58), 7)
            Turn(dramatisPersona[personNr][3][1], z_axis, math.rad(46), 7)
            Turn(dramatisPersona[personNr][3][4], x_axis, math.rad(-52), 7)
            Turn(dramatisPersona[personNr][3][4], y_axis, math.rad(96), 7)
            Turn(dramatisPersona[personNr][3][4], z_axis, math.rad(40), 7)
            WaitForTurn(dramatisPersona[personNr][3][4], y_axis)
            WaitForTurn(dramatisPersona[personNr][3][1], x_axis)
            Sleep(98)
            Turn(dramatisPersona[personNr][3][1], x_axis, math.rad(129), 7)
            Turn(dramatisPersona[personNr][3][1], y_axis, math.rad(-32), 7)
            Turn(dramatisPersona[personNr][3][1], z_axis, math.rad(46), 7)
            Turn(dramatisPersona[personNr][3][4], x_axis, math.rad(-52), 7)
            Turn(dramatisPersona[personNr][3][4], y_axis, math.rad(69), 7)
            Turn(dramatisPersona[personNr][3][4], z_axis, math.rad(40), 7)
            WaitForTurn(dramatisPersona[personNr][3][4], y_axis)
            WaitForTurn(dramatisPersona[personNr][3][1], y_axis)
            Sleep(200)
        end
        WaitForTurn(dramatisPersona[personNr][3][4], y_axis)
        WaitForTurn(dramatisPersona[personNr][3][1], y_axis)
        WaitForTurn(dramatisPersona[personNr][3][4], y_axis)
        WaitForTurn(dramatisPersona[personNr][3][1], x_axis)
    elseif lulz == 0 then
        Turn(dramatisPersona[personNr][3][1], x_axis, math.rad(86), 7)
        Turn(dramatisPersona[personNr][3][1], y_axis, math.rad(-32), 7)
        Turn(dramatisPersona[personNr][3][1], z_axis, math.rad(46), 7)
        Turn(dramatisPersona[personNr][3][4], x_axis, math.rad(-25), 7)
        Turn(dramatisPersona[personNr][3][4], y_axis, math.rad(69), 7)
        Turn(dramatisPersona[personNr][3][4], z_axis, math.rad(85), 7)
        Turn(dramatisPersona[personNr][3][5], x_axis, math.rad(77), 7)
        Turn(dramatisPersona[personNr][3][5], y_axis, math.rad(96), 7)
        Turn(dramatisPersona[personNr][3][5], z_axis, math.rad(21), 7)
        Sleep(2400)
    else
        --just standing there... enjoying the evening
        Turn(dramatisPersona[personNr][3][1], x_axis, math.rad(0), 7)
        Turn(dramatisPersona[personNr][3][1], y_axis, math.rad(-90), 7)
        zo = math.random(-85, -70)
        Turn(dramatisPersona[personNr][3][1], z_axis, math.rad(zo), 2)

        Turn(dramatisPersona[personNr][3][4], x_axis, math.rad(-26), 3)
        Turn(dramatisPersona[personNr][3][4], y_axis, math.rad(96), 7)
        Turn(dramatisPersona[personNr][3][4], z_axis, math.rad(30), 3)

        randSleep = math.random(5000, 80000)
        Sleep(randSleep)
    end
    Turn(dramatisPersona[personNr][3][1], x_axis, math.rad(0), 7)
    Turn(dramatisPersona[personNr][3][1], y_axis, math.rad(-90), 7)
    zo = math.random(-85, -70)
    Turn(dramatisPersona[personNr][3][1], z_axis, math.rad(zo), 2)

    Turn(dramatisPersona[personNr][3][4], x_axis, math.rad(-26), 3)
    Turn(dramatisPersona[personNr][3][4], y_axis, math.rad(96), 7)
    Turn(dramatisPersona[personNr][3][4], z_axis, math.rad(30), 3)
end

function walkAnimation7(personNr)
    moveIt = math.random(0, 1)
    moreRandom = math.random(7, 12)
    if moveIt == 1 then
        --aufgesessen
        Turn(fucAbuTop, x_axis, math.rad(92), 10)

        Turn(fucAbuTop, z_axis, math.rad(0), 10)
        Turn(fucAbuAL, x_axis, math.rad(-90), 10)
        Turn(fucAbuAL, y_axis, math.rad(0), 10)
        Turn(fucAbuAL, z_axis, math.rad(0), 10)
        Turn(fucAbuR, x_axis, math.rad(-90), 10)
        Turn(fucAbuR, y_axis, math.rad(0), 10)
        Turn(fucAbuR, z_axis, math.rad(0), 10)
        Turn(fucAbuM, x_axis, math.rad(-90), 10)
        Turn(fucAbuM, y_axis, math.rad(0), 10)
        Turn(fucAbuM, z_axis, math.rad(0), 10)

        Turn(fucAbuLR, x_axis, math.rad(0), 10)
        Turn(fucAbuLR, y_axis, math.rad(0), 10)
        Turn(fucAbuLR, z_axis, math.rad(0), 10)
        Turn(fucAbuLL, x_axis, math.rad(0), 10)
        Turn(fucAbuLL, y_axis, math.rad(0), 10)
        Turn(fucAbuLL, z_axis, math.rad(0), 10)

        Turn(abTusM9, x_axis, math.rad(104), 10)
        Turn(abTusM9, y_axis, math.rad(-171), 10)
        Turn(abTusM9, z_axis, math.rad(12), 10)

        Move(abTusM9, x_axis, 0, 10) --0.1
        Move(abTusM9, y_axis, -0.086, 10) --1.4
        Move(abTusM9, z_axis, -0.124, 10) -- -0.4

        Turn(abTHead9, x_axis, math.rad(0), 10)
        Turn(abTHead9, y_axis, math.rad(0), 10)
        Turn(abTHead9, z_axis, math.rad(0), 10)
        --armright
        Turn(abTUarR9, x_axis, math.rad(-38), 10)
        Turn(abTUarR9, y_axis, math.rad(2), 10)
        Turn(abTUarR9, z_axis, math.rad(69), 10)

        Turn(abTLarR9, x_axis, math.rad(0), 10)
        Turn(abTLarR9, y_axis, math.rad(0), 10)
        Turn(abTLarR9, z_axis, math.rad(0), 10)
        --arm left
        Turn(abTUarL9, x_axis, math.rad(106), 20)
        Turn(abTUarL9, y_axis, math.rad(0), 10)
        Turn(abTUarL9, z_axis, math.rad(-67), 10)


        Turn(abTLarL9, x_axis, math.rad(-9), 20)
        Turn(abTLarL9, y_axis, math.rad(-19), 10)
        Turn(abTLarL9, z_axis, math.rad(-42), 10)


        Turn(abTULegR9, x_axis, math.rad(67), 10)
        Turn(abTULegR9, y_axis, math.rad(0), 10)
        Turn(abTULegR9, z_axis, math.rad(0), 10)

        Turn(abTLLegR9, x_axis, math.rad(-142), 20)
        Turn(abTLLegR9, y_axis, math.rad(0), 10)
        Turn(abTLLegR9, z_axis, math.rad(0), 10)

        Turn(abTULegL9, x_axis, math.rad(70), 10)
        Turn(abTULegL9, y_axis, math.rad(0), 10)
        Turn(abTULegL9, z_axis, math.rad(0), 10)

        Turn(abTLLegL9, x_axis, math.rad(-145), 20)
        Turn(abTLLegL9, y_axis, math.rad(0), 10)
        Turn(abTLLegL9, z_axis, math.rad(0), 10)



        --hoppe, hoppe Reiter, wenn sie f�llt, dann schreit er
        for tx = 0, moreRandom, 1 do
            Turn(fucAbuTop, x_axis, math.rad(86), 10)
            Turn(fucAbuAL, x_axis, math.rad(-143), 10)
            Turn(fucAbuR, x_axis, math.rad(-142), 10)
            Turn(fucAbuM, x_axis, math.rad(-142), 10)
            Turn(fucAbuLR, x_axis, math.rad(55), 10)
            Turn(fucAbuLL, x_axis, math.rad(42), 10)
            Turn(abTusM9, x_axis, math.rad(97), 10)
            Turn(abTusM9, y_axis, math.rad(-171), 10)
            Turn(abTusM9, z_axis, math.rad(12), 10)
            Turn(abTHead9, x_axis, math.rad(-33), 10)
            Turn(abTHead9, z_axis, math.rad(5), 10)

            Turn(abTUarR9, x_axis, math.rad(-38), 10)
            Turn(abTUarR9, y_axis, math.rad(2), 10)
            Turn(abTUarR9, z_axis, math.rad(36), 10)
            Turn(abTLarR9, x_axis, math.rad(0), 10)
            Turn(abTLarR9, y_axis, math.rad(0), 10)
            Turn(abTLarR9, z_axis, math.rad(-20), 10)
            --arm left
            Turn(abTUarL9, x_axis, math.rad(82), 20)
            Turn(abTUarL9, y_axis, math.rad(0), 10)
            Turn(abTUarL9, z_axis, math.rad(-49), 10)

            Turn(abTLarL9, x_axis, math.rad(22), 20)
            Turn(abTLarL9, y_axis, math.rad(-19), 10)
            Turn(abTLarL9, z_axis, math.rad(-42), 10)




            Turn(abTULegR9, x_axis, math.rad(67), 10)
            Turn(abTULegR9, y_axis, math.rad(0), 10)
            Turn(abTULegR9, z_axis, math.rad(0), 10)

            Turn(abTLLegR9, x_axis, math.rad(-154), 20)
            Turn(abTLLegR9, y_axis, math.rad(0), 10)
            Turn(abTLLegR9, z_axis, math.rad(0), 10)

            Turn(abTULegL9, x_axis, math.rad(70), 10)
            Turn(abTULegL9, y_axis, math.rad(0), 10)
            Turn(abTULegL9, z_axis, math.rad(0), 10)

            Turn(abTLLegL9, x_axis, math.rad(-153), 20)
            Turn(abTLLegL9, y_axis, math.rad(0), 10)
            Turn(abTLLegL9, z_axis, math.rad(0), 10)


            Sleep(666)
            --------------------------------------------------
            Turn(fucAbuTop, x_axis, math.rad(101), 10)
            Turn(fucAbuAL, x_axis, math.rad(-57), 10)
            Turn(fucAbuR, x_axis, math.rad(-56), 10)
            Turn(fucAbuM, x_axis, math.rad(-57), 10)
            Turn(fucAbuLR, x_axis, math.rad(-48), 10)
            Turn(fucAbuLL, x_axis, math.rad(-55), 10)
            Turn(abTusM9, x_axis, math.rad(87), 10)
            Turn(abTusM9, y_axis, math.rad(-171), 10)
            Turn(abTusM9, z_axis, math.rad(12), 10)
            Turn(abTHead9, x_axis, math.rad(9), 10)
            Turn(abTHead9, z_axis, math.rad(-5), 10)

            Turn(abTUarR9, x_axis, math.rad(-38), 10)
            Turn(abTUarR9, y_axis, math.rad(2), 10)
            Turn(abTUarR9, z_axis, math.rad(86), 10)
            Turn(abTLarR9, x_axis, math.rad(0), 10)
            Turn(abTLarR9, y_axis, math.rad(0), 10)
            Turn(abTLarR9, z_axis, math.rad(0), 10)
            --arm left
            Turn(abTUarL9, x_axis, math.rad(123), 20)
            Turn(abTUarL9, y_axis, math.rad(-138), 10)
            Turn(abTUarL9, z_axis, math.rad(-153), 10)

            Turn(abTLarL9, x_axis, math.rad(37), 20)
            Turn(abTLarL9, y_axis, math.rad(-19), 10)
            Turn(abTLarL9, z_axis, math.rad(-117), 15)




            Turn(abTULegR9, x_axis, math.rad(85), 10)
            Turn(abTULegR9, y_axis, math.rad(0), 10)
            Turn(abTULegR9, z_axis, math.rad(0), 10)

            Turn(abTLLegR9, x_axis, math.rad(-144), 20)
            Turn(abTLLegR9, y_axis, math.rad(0), 10)
            Turn(abTLLegR9, z_axis, math.rad(0), 10)

            Turn(abTULegL9, x_axis, math.rad(82), 10)
            Turn(abTULegL9, y_axis, math.rad(0), 10)
            Turn(abTULegL9, z_axis, math.rad(0), 10)

            Turn(abTLLegL9, x_axis, math.rad(-148), 20)
            Turn(abTLLegL9, y_axis, math.rad(0), 10)
            Turn(abTLLegL9, z_axis, math.rad(0), 10)



            --------------------------------------------------
            Sleep(666)
        end
        Turn(fucAbuTop, x_axis, math.rad(0), 10)

        Turn(fucAbuTop, z_axis, math.rad(0), 10)
        Turn(fucAbuAL, x_axis, math.rad(0), 10)
        Turn(fucAbuAL, y_axis, math.rad(0), 10)
        Turn(fucAbuAL, z_axis, math.rad(0), 10)
        Turn(fucAbuR, x_axis, math.rad(0), 10)
        Turn(fucAbuR, y_axis, math.rad(0), 10)
        Turn(fucAbuR, z_axis, math.rad(0), 10)
        Turn(fucAbuM, x_axis, math.rad(0), 10)
        Turn(fucAbuM, y_axis, math.rad(0), 10)
        Turn(fucAbuM, z_axis, math.rad(0), 10)

        Turn(fucAbuLR, x_axis, math.rad(0), 10)
        Turn(fucAbuLR, y_axis, math.rad(0), 10)
        Turn(fucAbuLR, z_axis, math.rad(0), 10)
        Turn(fucAbuLL, x_axis, math.rad(0), 10)
        Turn(fucAbuLL, y_axis, math.rad(0), 10)
        Turn(fucAbuLL, z_axis, math.rad(0), 10)

        Turn(abTusM9, x_axis, math.rad(0), 10)
        Turn(abTusM9, y_axis, math.rad(-171), 10)
        Turn(abTusM9, z_axis, math.rad(-12), 10)

        Move(abTusM9, x_axis, 0, 10) --0.1
        Move(abTusM9, y_axis, 0, 10) --1.4
        Move(abTusM9, z_axis, 0, 10) -- -0.4

        Turn(abTHead9, x_axis, math.rad(0), 10)
        Turn(abTHead9, y_axis, math.rad(0), 10)
        Turn(abTHead9, z_axis, math.rad(0), 10)
        --armright
        Turn(abTUarR9, x_axis, math.rad(-38), 10)
        Turn(abTUarR9, y_axis, math.rad(2), 10)
        Turn(abTUarR9, z_axis, math.rad(69), 10)

        Turn(abTLarR9, x_axis, math.rad(0), 10)
        Turn(abTLarR9, y_axis, math.rad(0), 10)
        Turn(abTLarR9, z_axis, math.rad(0), 10)
        --arm left
        Turn(abTUarL9, x_axis, math.rad(106), 20)
        Turn(abTUarL9, y_axis, math.rad(0), 10)
        Turn(abTUarL9, z_axis, math.rad(0), 10)


        Turn(abTLarL9, x_axis, math.rad(0), 20)
        Turn(abTLarL9, y_axis, math.rad(0), 10)
        Turn(abTLarL9, z_axis, math.rad(0), 10)


        Turn(abTULegR9, x_axis, math.rad(67), 10)
        Turn(abTULegR9, y_axis, math.rad(0), 10)
        Turn(abTULegR9, z_axis, math.rad(0), 10)

        Turn(abTLLegR9, x_axis, math.rad(0), 20)
        Turn(abTLLegR9, y_axis, math.rad(0), 10)
        Turn(abTLLegR9, z_axis, math.rad(0), 10)

        Turn(abTULegL9, x_axis, math.rad(0), 10)
        Turn(abTULegL9, y_axis, math.rad(0), 10)
        Turn(abTULegL9, z_axis, math.rad(0), 10)

        Turn(abTLLegL9, x_axis, math.rad(0), 20)
        Turn(abTLLegL9, y_axis, math.rad(0), 10)
        Turn(abTLLegL9, z_axis, math.rad(0), 10)




    else

        Move(abTusM9, x_axis, 0, 10) --0.1
        Move(abTusM9, y_axis, 0.091, 10) --1.4
        Move(abTusM9, z_axis, 0, 10) -- -0.4

        Turn(fucAbuTop, x_axis, math.rad(0), 10)

        Turn(fucAbuTop, z_axis, math.rad(0), 10)
        Turn(fucAbuAL, x_axis, math.rad(-152), 10)
        Turn(fucAbuAL, y_axis, math.rad(306), 10)
        Turn(fucAbuAL, z_axis, math.rad(0), 10)
        Turn(fucAbuR, x_axis, math.rad(-170), 17)
        Turn(fucAbuR, y_axis, math.rad(0), 10)
        Turn(fucAbuR, z_axis, math.rad(20), 10)
        Turn(fucAbuM, x_axis, math.rad(0), 10)
        Turn(fucAbuM, y_axis, math.rad(0), 10)
        Turn(fucAbuM, z_axis, math.rad(0), 10)

        Turn(fucAbuLR, x_axis, math.rad(0), 10)
        Turn(fucAbuLR, y_axis, math.rad(0), 10)
        Turn(fucAbuLR, z_axis, math.rad(0), 10)
        Turn(fucAbuLL, x_axis, math.rad(0), 10)
        Turn(fucAbuLL, y_axis, math.rad(0), 10)
        Turn(fucAbuLL, z_axis, math.rad(0), 10)

        Turn(abTusM9, x_axis, math.rad(0), 10)
        Turn(abTusM9, y_axis, math.rad(0), 10)
        Turn(abTusM9, z_axis, math.rad(0), 10)

        Turn(abTHead9, x_axis, math.rad(0), 10)
        Turn(abTHead9, y_axis, math.rad(0), 10)
        Turn(abTHead9, z_axis, math.rad(0), 10)
        --armright
        Turn(abTUarR9, x_axis, math.rad(20), 10)
        Turn(abTUarR9, y_axis, math.rad(-89), 10)
        Turn(abTUarR9, z_axis, math.rad(35), 10)

        Turn(abTLarR9, x_axis, math.rad(0), 10)
        Turn(abTLarR9, y_axis, math.rad(0), 10)
        Turn(abTLarR9, z_axis, math.rad(0), 10)
        --arm left
        Turn(abTUarL9, x_axis, math.rad(67), 20)
        Turn(abTUarL9, y_axis, math.rad(0), 10)
        Turn(abTUarL9, z_axis, math.rad(-46), 10)


        Turn(abTLarL9, x_axis, math.rad(0), 20)
        Turn(abTLarL9, y_axis, math.rad(0), 10)
        Turn(abTLarL9, z_axis, math.rad(-63), 10)


        Turn(abTULegR9, x_axis, math.rad(73), 10)
        Turn(abTULegR9, y_axis, math.rad(0), 10)
        Turn(abTULegR9, z_axis, math.rad(-2), 10)

        Turn(abTLLegR9, x_axis, math.rad(-114), 20)
        Turn(abTLLegR9, y_axis, math.rad(7), 10)
        Turn(abTLLegR9, z_axis, math.rad(-7), 10)

        Turn(abTULegL9, x_axis, math.rad(69), 10)
        Turn(abTULegL9, y_axis, math.rad(34), 10)
        Turn(abTULegL9, z_axis, math.rad(43), 10)

        Turn(abTLLegL9, x_axis, math.rad(-117), 20)
        Turn(abTLLegL9, y_axis, math.rad(0), 10)
        Turn(abTLLegL9, z_axis, math.rad(0), 10)
        Sleep(800)
        ridingHigh = math.random(6, 9)
        for ix = 1, ridingHigh, 1 do
            Turn(abTHead9, x_axis, math.rad(-49), 7)
            Turn(abTusM9, x_axis, math.rad(-8), 3)
            Turn(abTUarL9, x_axis, math.rad(40), 20)
            Turn(abTUarL9, y_axis, math.rad(0), 10)
            Turn(abTUarL9, z_axis, math.rad(46), 10)
            Turn(fucAbuM, x_axis, math.rad(-35), 6)
            Turn(fucAbuLR, x_axis, math.rad(28), 10)
            Turn(fucAbuLR, y_axis, math.rad(28), 10)
            Turn(fucAbuLR, z_axis, math.rad(0), 10)
            Turn(fucAbuLL, x_axis, math.rad(31), 10)
            Turn(fucAbuLL, y_axis, math.rad(-29), 10)
            Turn(fucAbuLL, z_axis, math.rad(0), 10)



            Sleep(300)
            Turn(abTHead9, x_axis, math.rad(23), 10)
            Turn(abTUarL9, x_axis, math.rad(67), 20)
            Turn(abTUarL9, y_axis, math.rad(0), 10)
            Turn(abTUarL9, z_axis, math.rad(46), 10)

            Turn(fucAbuM, x_axis, math.rad(0), 6)
            Turn(fucAbuLR, x_axis, math.rad(0), 10)
            Turn(fucAbuLR, y_axis, math.rad(0), 10)
            Turn(fucAbuLR, z_axis, math.rad(0), 10)
            Turn(fucAbuLL, x_axis, math.rad(0), 10)
            Turn(fucAbuLL, y_axis, math.rad(0), 10)
            Turn(fucAbuLL, z_axis, math.rad(0), 10)

            Sleep(200)
        end


        Move(abTusM9, x_axis, 0, 10) --0.1
        Move(abTusM9, y_axis, 0, 10) --1.4
        Move(abTusM9, z_axis, 0, 10) -- -0.4
        Turn(fucAbuTop, x_axis, math.rad(0), 10)

        Turn(fucAbuTop, z_axis, math.rad(0), 10)
        Turn(fucAbuAL, x_axis, math.rad(0), 10)
        Turn(fucAbuAL, y_axis, math.rad(0), 10)
        Turn(fucAbuAL, z_axis, math.rad(0), 10)
        Turn(fucAbuR, x_axis, math.rad(0), 10)
        Turn(fucAbuR, y_axis, math.rad(0), 10)
        Turn(fucAbuR, z_axis, math.rad(0), 10)
        Turn(fucAbuM, x_axis, math.rad(0), 10)
        Turn(fucAbuM, y_axis, math.rad(0), 10)
        Turn(fucAbuM, z_axis, math.rad(0), 10)

        Turn(fucAbuLR, x_axis, math.rad(0), 10)
        Turn(fucAbuLR, y_axis, math.rad(0), 10)
        Turn(fucAbuLR, z_axis, math.rad(0), 10)
        Turn(fucAbuLL, x_axis, math.rad(0), 10)
        Turn(fucAbuLL, y_axis, math.rad(0), 10)
        Turn(fucAbuLL, z_axis, math.rad(0), 10)

        Turn(abTusM9, x_axis, math.rad(0), 10)
        Turn(abTusM9, y_axis, math.rad(0), 10)
        Turn(abTusM9, z_axis, math.rad(0), 10)
    end
end

function idleAnimation7(personNr)
    inStellungBring = math.random(0, 3)
    if inStellungBring == 0 then
        Move(abTusM9, y_axis, 0.0, 1)
        Move(abTusM9, z_axis, -0.03, 1)
        wieDieKarnickel = math.random(6, 14)
        dice = math.random(0, 1)
        sleeper = 666
        for da = 1, wieDieKarnickel, 1 do
            Turn(fucAbuAL, x_axis, math.rad(30), 6)
            Turn(fucAbuAL, y_axis, math.rad(-21), 5)
            Turn(fucAbuAL, z_axis, math.rad(3), 5)
            Turn(fucAbuR, x_axis, math.rad(-14), 5)
            Turn(fucAbuR, y_axis, math.rad(40), 5)
            Turn(fucAbuR, z_axis, math.rad(-22), 5)
            Turn(abTusM9, x_axis, math.rad(255), 25)
            Turn(abTusM9, y_axis, math.rad(-9), 5)
            Turn(abTusM9, z_axis, math.rad(189), 15)
            Turn(abTHead9, x_axis, math.rad(45), 5)
            Turn(abTUarR9, x_axis, math.rad(92), 5)
            Turn(abTUarR9, y_axis, math.rad(0), 5)
            Turn(abTUarR9, z_axis, math.rad(75), 5)
            Turn(abTUarL9, x_axis, math.rad(88), 10)
            Turn(abTUarL9, y_axis, math.rad(0), 5)
            Turn(abTUarL9, z_axis, math.rad(-74), 5)
            Turn(fucAbuM, x_axis, math.rad(25), 4)
            Turn(fucAbuLR, x_axis, math.rad(-47), 4)
            Turn(fucAbuLL, x_axis, math.rad(-42), 4)

            Turn(abTULegR9, x_axis, math.rad(104), 10)
            Turn(abTULegR9, y_axis, math.rad(-25), 5)
            Turn(abTULegR9, z_axis, math.rad(-10), 2)
            if dice == 1 then
                Turn(abTULegR9, z_axis, math.rad(71), 7)
            end
            Turn(abTLLegR9, x_axis, math.rad(-123), 20)
            Turn(abTLLegR9, y_axis, math.rad(0), 10)
            Turn(abTLLegR9, z_axis, math.rad(0), 10)

            Turn(abTULegL9, x_axis, math.rad(118), 10)
            Turn(abTULegL9, y_axis, math.rad(0), 10)
            Turn(abTULegL9, z_axis, math.rad(-22), 10)

            Turn(abTLLegL9, x_axis, math.rad(-127), 20)
            Turn(abTLLegL9, y_axis, math.rad(0), 10)
            Turn(abTLLegL9, z_axis, math.rad(0), 10)



            Sleep(sleeper)
            sleeper = sleeper - wieDieKarnickel

            Move(abTusM9, y_axis, -0.2, 1)
            Turn(fucAbuM, x_axis, math.rad(-25), 4)
            Turn(fucAbuLR, x_axis, math.rad(25), 4)
            Turn(fucAbuLL, x_axis, math.rad(18), 4)

            Turn(fucAbuAL, x_axis, math.rad(-42), 6)
            Turn(fucAbuAL, y_axis, math.rad(-5), 5)
            Turn(fucAbuAL, z_axis, math.rad(-11), 5)
            Turn(fucAbuR, x_axis, math.rad(-14), 5)
            Turn(fucAbuR, y_axis, math.rad(93), 5)
            Turn(fucAbuR, z_axis, math.rad(-22), 5)

            ------------------------------------------
            Turn(abTusM9, x_axis, math.rad(255), 25)
            Turn(abTusM9, y_axis, math.rad(-9), 5)
            Turn(abTusM9, z_axis, math.rad(189), 15)
            Turn(abTHead9, x_axis, math.rad(-36), 5)
            Turn(abTUarR9, x_axis, math.rad(127), 7)
            Turn(abTUarR9, y_axis, math.rad(8), 5)
            Turn(abTUarR9, z_axis, math.rad(75), 5)
            Turn(abTUarL9, x_axis, math.rad(117), 5)
            Turn(abTUarL9, y_axis, math.rad(-2), 5)
            Turn(abTUarL9, z_axis, math.rad(-70), 5)

            Turn(abTULegR9, x_axis, math.rad(58), 5)
            Turn(abTULegR9, y_axis, math.rad(-25), 5)
            Turn(abTULegR9, z_axis, math.rad(-10), 2)
            if dice == 1 then
                Turn(abTULegR9, z_axis, math.rad(71), 7)
            end

            Turn(abTLLegR9, x_axis, math.rad(-92), 10)
            Turn(abTLLegR9, y_axis, math.rad(0), 5)
            Turn(abTLLegR9, z_axis, math.rad(0), 5)

            Turn(abTULegL9, x_axis, math.rad(60), 5)
            Turn(abTULegL9, y_axis, math.rad(0), 5)
            Turn(abTULegL9, z_axis, math.rad(-22), 5)

            Turn(abTLLegL9, x_axis, math.rad(-84), 5)
            Turn(abTLLegL9, y_axis, math.rad(0), 5)
            Turn(abTLLegL9, z_axis, math.rad(0), 5)

            Sleep(sleeper)
        end

        Move(abTusM9, y_axis, 0.0, 1)
        Move(abTusM9, z_axis, 0.0, 1)
    elseif inStellungBring == 1 then
        Move(abTusM9, y_axis, 0.0, 1)
        Move(abTusM9, z_axis, -0.03, 1)
        wieDieKarnickel = math.random(6, 14)
        sleeper = 666
        for da = 1, wieDieKarnickel, 1 do
            Turn(fucAbuAL, x_axis, math.rad(30), 6)
            Turn(fucAbuAL, y_axis, math.rad(-21), 5)
            Turn(fucAbuAL, z_axis, math.rad(3), 5)
            Turn(fucAbuR, x_axis, math.rad(-14), 5)
            Turn(fucAbuR, y_axis, math.rad(40), 5)
            Turn(fucAbuR, z_axis, math.rad(-22), 5)
            Turn(abTusM9, x_axis, math.rad(145), 25)
            Turn(abTusM9, y_axis, math.rad(-3), 5)
            Turn(abTusM9, z_axis, math.rad(5), 15)
            Turn(abTHead9, x_axis, math.rad(-54), 5)
            Turn(abTUarR9, x_axis, math.rad(92), 5)
            Turn(abTUarR9, y_axis, math.rad(0), 5)
            Turn(abTUarR9, z_axis, math.rad(75), 5)
            Turn(abTUarL9, x_axis, math.rad(88), 10)
            Turn(abTUarL9, y_axis, math.rad(0), 5)
            Turn(abTUarL9, z_axis, math.rad(-74), 5)
            Turn(fucAbuM, x_axis, math.rad(25), 4)
            Turn(fucAbuLR, x_axis, math.rad(-47), 4)
            Turn(fucAbuLL, x_axis, math.rad(-42), 4)

            Turn(abTULegR9, x_axis, math.rad(104), 10)
            Turn(abTULegR9, y_axis, math.rad(-25), 5)
            Turn(abTULegR9, z_axis, math.rad(-10), 2)

            Turn(abTLLegR9, x_axis, math.rad(-123), 20)
            Turn(abTLLegR9, y_axis, math.rad(0), 10)
            Turn(abTLLegR9, z_axis, math.rad(0), 10)

            Turn(abTULegL9, x_axis, math.rad(118), 10)
            Turn(abTULegL9, y_axis, math.rad(0), 10)
            Turn(abTULegL9, z_axis, math.rad(-22), 10)

            Turn(abTLLegL9, x_axis, math.rad(-127), 20)
            Turn(abTLLegL9, y_axis, math.rad(0), 10)
            Turn(abTLLegL9, z_axis, math.rad(0), 10)

            Sleep(sleeper)
            sleeper = sleeper - wieDieKarnickel

            Move(abTusM9, y_axis, -0.2, 1)
            Turn(fucAbuM, x_axis, math.rad(-25), 4)
            Turn(fucAbuLR, x_axis, math.rad(25), 4)
            Turn(fucAbuLL, x_axis, math.rad(18), 4)

            Turn(fucAbuAL, x_axis, math.rad(-42), 6)
            Turn(fucAbuAL, y_axis, math.rad(-5), 5)
            Turn(fucAbuAL, z_axis, math.rad(-11), 5)
            Turn(fucAbuR, x_axis, math.rad(-14), 5)
            Turn(fucAbuR, y_axis, math.rad(93), 5)
            Turn(fucAbuR, z_axis, math.rad(-22), 5)

            ------------------------------------------
            Turn(abTusM9, x_axis, math.rad(145), 25)
            Turn(abTusM9, y_axis, math.rad(-3), 5)
            Turn(abTusM9, z_axis, math.rad(-4), 15)
            Turn(abTHead9, x_axis, math.rad(-100), 5)
            Turn(abTUarR9, x_axis, math.rad(127), 7)
            Turn(abTUarR9, y_axis, math.rad(8), 5)
            Turn(abTUarR9, z_axis, math.rad(75), 5)
            Turn(abTUarL9, x_axis, math.rad(117), 5)
            Turn(abTUarL9, y_axis, math.rad(-2), 5)
            Turn(abTUarL9, z_axis, math.rad(-70), 5)

            Turn(abTULegR9, x_axis, math.rad(58), 5)
            Turn(abTULegR9, y_axis, math.rad(-25), 5)
            Turn(abTULegR9, z_axis, math.rad(-10), 2)

            Turn(abTLLegR9, x_axis, math.rad(-92), 10)
            Turn(abTLLegR9, y_axis, math.rad(0), 5)
            Turn(abTLLegR9, z_axis, math.rad(0), 5)

            Turn(abTULegL9, x_axis, math.rad(60), 5)
            Turn(abTULegL9, y_axis, math.rad(0), 5)
            Turn(abTULegL9, z_axis, math.rad(-22), 5)

            Turn(abTLLegL9, x_axis, math.rad(-84), 5)
            Turn(abTLLegL9, y_axis, math.rad(0), 5)
            Turn(abTLLegL9, z_axis, math.rad(0), 5)

            Sleep(sleeper)
        end
        Move(abTusM9, y_axis, 0, 1)
        Move(abTusM9, z_axis, 0, 1)

    elseif inStellungBring == 2 then
        --upright

        Move(abTusM9, y_axis, -0.238, 1)
        Move(fucAbuTop, y_axis, 0.238, 1)

        keineErschoepfung = math.random(8, 14)
        Sleepest = 900
        for it = 1, keineErschoepfung, 1 do
            Turn(fucAbuAL, x_axis, math.rad(-34), 6)
            Turn(fucAbuAL, y_axis, math.rad(0), 5)
            Turn(fucAbuAL, z_axis, math.rad(0), 5)
            Turn(fucAbuR, x_axis, math.rad(-35), 5)
            Turn(fucAbuR, y_axis, math.rad(0), 5)
            Turn(fucAbuR, z_axis, math.rad(0), 5)
            Turn(fucAbuM, x_axis, math.rad(22), 5)
            Turn(abTusM9, x_axis, math.rad(-6), 25)
            Turn(abTusM9, y_axis, math.rad(180), 5)
            Turn(abTusM9, z_axis, math.rad(0), 15)

            Turn(abTHead9, x_axis, math.rad(26), 5)

            Turn(abTUarR9, x_axis, math.rad(135), 5)
            Turn(abTUarR9, y_axis, math.rad(-67), 5)
            Turn(abTUarR9, z_axis, math.rad(-24), 5)

            Turn(abTUarL9, x_axis, math.rad(59), 10)
            Turn(abTUarL9, y_axis, math.rad(-48), 5)
            Turn(abTUarL9, z_axis, math.rad(-90), 5)

            Turn(fucAbuLR, x_axis, math.rad(-106), 4)
            Turn(fucAbuLL, x_axis, math.rad(-104), 4)

            Turn(abTULegR9, x_axis, math.rad(12), 10)
            Turn(abTULegR9, y_axis, math.rad(0), 5)
            Turn(abTULegR9, z_axis, math.rad(12), 2)

            Turn(abTLLegR9, x_axis, math.rad(0), 20)
            Turn(abTLLegR9, y_axis, math.rad(0), 10)
            Turn(abTLLegR9, z_axis, math.rad(0), 10)

            Turn(abTULegL9, x_axis, math.rad(12), 10)
            Turn(abTULegL9, y_axis, math.rad(0), 10)
            Turn(abTULegL9, z_axis, math.rad(-14), 10)

            Turn(abTLLegL9, x_axis, math.rad(0), 20)
            Turn(abTLLegL9, y_axis, math.rad(0), 10)
            Turn(abTLLegL9, z_axis, math.rad(0), 10)

            Turn(abTLarL9, x_axis, math.rad(0), 10)
            Turn(abTLarL9, y_axis, math.rad(0), 5)
            Turn(abTLarL9, z_axis, math.rad(0), 5)




            Sleep(Sleepest)
            Sleepest = Sleepest - 4 * keineErschoepfung
            Move(abTusM9, z_axis, -0.0328, 1)

            Turn(fucAbuAL, x_axis, math.rad(-58), 6)
            Turn(fucAbuAL, y_axis, math.rad(-21), 5)
            Turn(fucAbuAL, z_axis, math.rad(0), 5)

            Turn(fucAbuR, x_axis, math.rad(-57), 5)
            Turn(fucAbuR, y_axis, math.rad(16), 5)
            Turn(fucAbuR, z_axis, math.rad(0), 5)

            Turn(fucAbuM, x_axis, math.rad(-2), 10)
            Turn(abTusM9, x_axis, math.rad(-24), 12)
            Turn(abTusM9, y_axis, math.rad(180), 5)
            Turn(abTusM9, z_axis, math.rad(0), 15)

            Turn(abTHead9, x_axis, math.rad(-33), 6)

            Turn(abTUarR9, x_axis, math.rad(146), 5)
            Turn(abTUarR9, y_axis, math.rad(-30), 5)
            Turn(abTUarR9, z_axis, math.rad(45), 5)

            Turn(abTUarL9, x_axis, math.rad(153), 10)
            Turn(abTUarL9, y_axis, math.rad(30), 5)
            Turn(abTUarL9, z_axis, math.rad(-54), 10)

            Turn(fucAbuLR, x_axis, math.rad(-75), 4)
            Turn(fucAbuLL, x_axis, math.rad(-84), 4)

            Turn(abTULegR9, x_axis, math.rad(32), 10)
            Turn(abTULegR9, y_axis, math.rad(0), 5)
            Turn(abTULegR9, z_axis, math.rad(12), 2)

            Turn(abTLLegR9, x_axis, math.rad(-45), 20)
            Turn(abTLLegR9, y_axis, math.rad(0), 10)
            Turn(abTLLegR9, z_axis, math.rad(0), 10)

            Turn(abTULegL9, x_axis, math.rad(25), 10)
            Turn(abTULegL9, y_axis, math.rad(0), 10)
            Turn(abTULegL9, z_axis, math.rad(-14), 10)

            Turn(abTLLegL9, x_axis, math.rad(-24), 20)
            Turn(abTLLegL9, y_axis, math.rad(0), 10)
            Turn(abTLLegL9, z_axis, math.rad(0), 10)

            Turn(abTLarL9, x_axis, math.rad(5), 10)
            Turn(abTLarL9, y_axis, math.rad(18), 5)
            Turn(abTLarL9, z_axis, math.rad(18), 10)


            Sleep(Sleepest)
            Move(abTusM9, z_axis, 0, 1)
        end

    elseif inStellungBring == 3 then
        --
        Move(abTusM9, y_axis, -0.238, 1)
        Move(fucAbuTop, y_axis, 0.238, 1)
        ridersInTheSky = math.random(4, 14)
        Deep = 800

        for o = 1, ridersInTheSky, 1 do
            Move(abTusM9, z_axis, 0.04, 1)
            Move(abTusM9, y_axis, -0.2, 1)

            Turn(fucAbuAL, x_axis, math.rad(-58), 6)
            Turn(fucAbuAL, y_axis, math.rad(-21), 5)
            Turn(fucAbuAL, z_axis, math.rad(0), 5)

            Turn(fucAbuR, x_axis, math.rad(-57), 5)
            Turn(fucAbuR, y_axis, math.rad(16), 5)
            Turn(fucAbuR, z_axis, math.rad(0), 5)

            Turn(fucAbuM, x_axis, math.rad(-17), 10)

            Turn(abTusM9, x_axis, math.rad(8), 12)
            Turn(abTusM9, y_axis, math.rad(-18), 5)
            Turn(abTusM9, z_axis, math.rad(0), 15)

            Turn(abTHead9, x_axis, math.rad(-59), 6)
            Turn(abTHead9, y_axis, math.rad(-6), 6)
            Turn(abTHead9, z_axis, math.rad(-16), 6)

            Turn(abTUarR9, x_axis, math.rad(80), 5)
            Turn(abTUarR9, y_axis, math.rad(-30), 5)
            Turn(abTUarR9, z_axis, math.rad(45), 5)

            Turn(abTUarL9, x_axis, math.rad(84), 10)
            Turn(abTUarL9, y_axis, math.rad(-182), 5)
            Turn(abTUarL9, z_axis, math.rad(-214), 14)

            Turn(fucAbuLR, x_axis, math.rad(-75), 4)
            Turn(fucAbuLL, x_axis, math.rad(-84), 4)
            --------------------------------------------------

            --Turn(abTULegL9,y_axis,math.rad(107),10)
            --Turn(abTULegL9,z_axis,math.rad(-125),10)

            -------------------------------------------------
            Turn(abTULegR9, x_axis, math.rad(-230), 10)
            Turn(abTULegR9, y_axis, math.rad(110), 5)
            Turn(abTULegR9, z_axis, math.rad(124), 12)

            Turn(abTLLegR9, x_axis, math.rad(-129), 20)
            Turn(abTLLegR9, y_axis, math.rad(0), 10)
            Turn(abTLLegR9, z_axis, math.rad(0), 10)

            Turn(abTULegL9, x_axis, math.rad(109), 10)
            Turn(abTULegL9, y_axis, math.rad(-19), 10)
            Turn(abTULegL9, z_axis, math.rad(-34), 10)

            Turn(abTLLegL9, x_axis, math.rad(-135), 20)
            Turn(abTLLegL9, y_axis, math.rad(0), 10)
            Turn(abTLLegL9, z_axis, math.rad(0), 10)
            ---------------------------------------
            Turn(abTLarL9, x_axis, math.rad(-25), 10)
            Turn(abTLarL9, y_axis, math.rad(0), 5)
            Turn(abTLarL9, z_axis, math.rad(-128), 10)

            Turn(abTLarR9, x_axis, math.rad(161), 10)
            Turn(abTLarR9, y_axis, math.rad(-18), 5)
            Turn(abTLarR9, z_axis, math.rad(-114), 10)


            Sleep(Deep)
            Deep = Deep - ridersInTheSky * 3
            Move(abTusM9, y_axis, -0.24, 1)


            Turn(fucAbuAL, x_axis, math.rad(-58), 6)
            Turn(fucAbuAL, y_axis, math.rad(-21), 5)
            Turn(fucAbuAL, z_axis, math.rad(0), 5)

            Turn(fucAbuR, x_axis, math.rad(-57), 5)
            Turn(fucAbuR, y_axis, math.rad(16), 5)
            Turn(fucAbuR, z_axis, math.rad(0), 5)

            Turn(fucAbuM, x_axis, math.rad(-17), 10)

            Turn(abTusM9, x_axis, math.rad(31), 12)
            Turn(abTusM9, y_axis, math.rad(-18), 5)
            Turn(abTusM9, z_axis, math.rad(0), 15)

            Turn(abTHead9, x_axis, math.rad(35), 6)
            Turn(abTHead9, y_axis, math.rad(0), 6)
            Turn(abTHead9, z_axis, math.rad(0), 6)

            Turn(abTUarR9, x_axis, math.rad(103), 5)
            Turn(abTUarR9, y_axis, math.rad(-30), 5)
            Turn(abTUarR9, z_axis, math.rad(45), 5)

            Turn(abTUarL9, x_axis, math.rad(84), 10)
            Turn(abTUarL9, y_axis, math.rad(-167), 5)
            Turn(abTUarL9, z_axis, math.rad(-215), 14)

            Turn(fucAbuLR, x_axis, math.rad(-75), 4)
            Turn(fucAbuLL, x_axis, math.rad(-84), 4)

            Turn(abTULegR9, x_axis, math.rad(-205), 10)
            Turn(abTULegR9, y_axis, math.rad(81), 5)
            Turn(abTULegR9, z_axis, math.rad(76), 12)

            Turn(abTLLegR9, x_axis, math.rad(-129), 20)
            Turn(abTLLegR9, y_axis, math.rad(0), 10)
            Turn(abTLLegR9, z_axis, math.rad(0), 10)

            Turn(abTULegL9, x_axis, math.rad(110), 10)
            Turn(abTULegL9, y_axis, math.rad(-19), 10)
            Turn(abTULegL9, z_axis, math.rad(-34), 10)

            Turn(abTLLegL9, x_axis, math.rad(-135), 20)
            Turn(abTLLegL9, y_axis, math.rad(0), 10)
            Turn(abTLLegL9, z_axis, math.rad(0), 10)

            Turn(abTLarL9, x_axis, math.rad(84), 10)
            Turn(abTLarL9, y_axis, math.rad(68), 5)
            Turn(abTLarL9, z_axis, math.rad(35), 10)

            Turn(abTLarR9, x_axis, math.rad(161), 10)
            Turn(abTLarR9, y_axis, math.rad(-18), 5)
            Turn(abTLarR9, z_axis, math.rad(-45), 10)
            Sleep(Deep)
        end
    end
    Move(abTusM9, x_axis, 0, 1)
    Move(abTusM9, y_axis, 0, 1)
    Move(abTusM9, z_axis, 0, 1)
    Move(fucAbuTop, x_axis, 0, 1)
    Move(fucAbuTop, y_axis, 0, 1)
    Move(fucAbuTop, z_axis, 0, 1)
end



