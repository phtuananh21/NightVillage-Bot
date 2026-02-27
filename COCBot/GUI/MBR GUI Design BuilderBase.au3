; #FUNCTION# ====================================================================================================================
; Name ..........: MBR GUI Design - Builder Base
; Description ...: This file creates the "Builder Settings" tab for Builder Base Only mode
; ===============================================================================================================================
#include-once

Global $g_hGUI_BUILDERBASE = 0

Func CreateBuilderBaseTab()
	; Create child window the same way as Log and Bot tabs - bound to $g_hFrmBotEx
	$g_hGUI_BUILDERBASE = _GUICreate("", $g_iSizeWGrpTab1, $g_iSizeHGrpTab1, $_GUI_CHILD_LEFT, $_GUI_CHILD_TOP, BitOR($WS_CHILD, $WS_TABSTOP), -1, $g_hFrmBotEx)

	GUISwitch($g_hGUI_BUILDERBASE)

	Local $x = 15, $y = 20

	; =====================================================
	; GROUP 1: Builder Base Attacking
	; =====================================================
	GUICtrlCreateGroup("Builder Base Attacking", $x - 10, $y - 5, 440, 165)

	; [ROW 1] Enable Attack + Attack Count
	$g_hChkEnableBBAttack = GUICtrlCreateCheckbox("Enable Attacking", $x, $y + 16, 110, 20)
	_GUICtrlSetTip(-1, "Enable the bot to attack in Builder Base.")
	GUICtrlSetOnEvent(-1, "chkEnableBBAttack")

	GUICtrlCreateLabel("Number of Attacks:", $x + 130, $y + 18, 105, 17)
	$g_hCmbBBAttackCount = GUICtrlCreateCombo("", $x + 240, $y + 14, 80, 21, BitOR($CBS_DROPDOWNLIST, $CBS_AUTOHSCROLL))
	_GUICtrlSetTip(-1, "How many times the bot will attack Builder Base." & @CRLF & "'Stars' attacks until all stars are collected. '100' = runs indefinitely.")
	GUICtrlSetOnEvent(-1, "cmbBBAttackCount")
	GUICtrlSetData(-1, "Stars|Random|1|2|3|4|5|6|7|8|9|10|100", "Random")
	GUICtrlSetState(-1, $GUI_DISABLE)

	; [ROW 2] Wait for Machine + Trophy Range
	$g_hChkBBWaitForMachine = GUICtrlCreateCheckbox("Wait for Battle Machine to heal", $x, $y + 48, 200, 20)
	_GUICtrlSetTip(-1, "If checked, bot will not attack while the Battle Machine is recovering.")
	GUICtrlSetState(-1, $GUI_DISABLE)

	$g_hChkBBAttIfLootAvail = GUICtrlCreateCheckbox("Attack only if rewards available", $x + 230, $y + 48, 195, 20)
	_GUICtrlSetTip(-1, "If checked, only attacks when star rewards are ready to collect.")
	GUICtrlSetState(-1, $GUI_DISABLE)

	; [ROW 3] Halt on Full resources
	$g_hChkBBHaltOnGoldFull = GUICtrlCreateCheckbox("Halt if Gold Storage Full", $x, $y + 80, 170, 20)
	_GUICtrlSetTip(-1, "The bot will pause if Gold storage is full.")
	GUICtrlSetState(-1, $GUI_DISABLE)

	$g_hChkBBHaltOnElixirFull = GUICtrlCreateCheckbox("Halt if Elixir Storage Full", $x + 230, $y + 80, 175, 20)
	_GUICtrlSetTip(-1, "The bot will pause if Elixir storage is full.")
	GUICtrlSetState(-1, $GUI_DISABLE)

	; [ROW 4] Trophy Range settings
	$g_hChkBBTrophyRange = GUICtrlCreateCheckbox("Trophy Range:", $x, $y + 112, 90, 20)
	_GUICtrlSetTip(-1, "Enable trophy range so bot only attacks within a specific range.")
	GUICtrlSetOnEvent(-1, "chkBBTrophyRange")
	GUICtrlSetState(-1, $GUI_DISABLE)

	GUICtrlCreateLabel("Min:", $x + 100, $y + 114, 25, 17)
	$g_hTxtBBTrophyLowerLimit = GUICtrlCreateInput($g_iTxtBBTrophyLowerLimit, $x + 126, $y + 110, 48, 20, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	_GUICtrlSetTip(-1, "Stop attacking if trophies go below this value.")
	GUICtrlSetState(-1, $GUI_DISABLE)

	GUICtrlCreateLabel("Max:", $x + 185, $y + 114, 28, 17)
	$g_hTxtBBTrophyUpperLimit = GUICtrlCreateInput($g_iTxtBBTrophyUpperLimit, $x + 213, $y + 110, 48, 20, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
	_GUICtrlSetTip(-1, "Drop trophies / pause if trophies exceed this value.")
	GUICtrlSetState(-1, $GUI_DISABLE)

	GUICtrlCreateGroup("", -99, -99, 1, 1)

	; =====================================================
	; GROUP 2: Collect & Activate
	; =====================================================
	$y += 180
	GUICtrlCreateGroup("Collect && Activate", $x - 10, $y - 5, 440, 105)

	; [ROW 1] Collect Resources + Remove Obstacles
	$g_hChkCollectBuilderBase = GUICtrlCreateCheckbox("Collect Resources (Mines && Collectors)", $x, $y + 14, 220, 20)
	_GUICtrlSetTip(-1, "Automatically collects Builder Base Gold Mines and Elixir Collectors.")

	$g_hChkCleanBBYard = GUICtrlCreateCheckbox("Remove Obstacles (Trees, Stones...)", $x + 220, $y + 14, 205, 20)
	_GUICtrlSetTip(-1, "Automatically removes trees, trunks, and stones in Builder Base yard.")
	GUICtrlSetState(-1, $GUI_ENABLE)

	; [ROW 2] Clock Tower + only when builder busy
	$g_hChkStartClockTowerBoost = GUICtrlCreateCheckbox("Activate Clock Tower Boost (free)", $x, $y + 46, 195, 20)
	_GUICtrlSetTip(-1, "Activates the Clock Tower free boost when available. No gems required.")
	GUICtrlSetOnEvent(-1, "chkStartClockTowerBoost")

	$g_hChkCTBoostBlderBz = GUICtrlCreateCheckbox("Only when a builder is busy", $x + 210, $y + 46, 185, 20)
	_GUICtrlSetTip(-1, "Only boost the Clock Tower if at least one builder is currently upgrading a building.")
	GUICtrlSetState(-1, $GUI_DISABLE)
	GUICtrlCreateGroup("", -99, -99, 1, 1)

EndFunc   ;==>CreateBuilderBaseTab
