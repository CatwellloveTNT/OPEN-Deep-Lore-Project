--------------------------------------------------------------------------------------------------------------

-- !!!!!!!!!!!!!!!!! I (THE OPERATION ENLIGHTENMENT DEV) DID NOT MAKE THIS FILE, ALL CREDITS GO TO THE FIRE RISES DEV TEAM AND AMINE ALKALINE, ALL I DID WAS ADJUSTED AND REMOVED SOME VALUES. !!!!!!!!!!!!!!!!!!!!!!!!!

--------------------------------------------------------------------------------------------------------------

-- Optimization & Multiplayer Stability Defines
-- What this does
-- This primarily raises checks and calculation times for various navy and AI defines to prevent daily, weekly, and monthly lag accumulation
-- 
--------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------
-- CORE GAME / MULTIPLAYER SYNC
--------------------------------------------------------------------------------------------------------------
Nlua = {
	NTopbar = {
		GAME_SPEED_LIMIT = 0,	-- Unlocks Speed to match as much as the proccessor can handle (this line helps)
		GAME_SPEED_STEPS = 5,	-- DONT CHANGE -- Deals with graphics and speed settings
		GAME_SPEED_ONE = 1,	-- DONT CHANGE --
		GAME_SPEED_TWO = 2,	-- DONT CHANGE --
		GAME_SPEED_THREE = 3,	-- DONT CHANGE --
		GAME_SPEED_FOUR = 4,	-- DONT CHANGE --
		GAME_SPEED_FIVE = 5,	-- DONT CHANGE --
	}
}
local NDefines = NDefines


NDefines.NGame.MAX_DAYS_BEHIND = 3 -- desync for clients behind host/server time
NDefines.NGame.MESSAGE_TIMEOUT_DAYS = 6

--------------------------------------------------------------------------------------------------------------
-- MILITARY / COMBAT
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.MAX_TEMPLATE_POOL_FOR_COUNTRY = 14    -- Limit AI template variety


--------------------------------------------------------------------------------------------------------------
-- AI PROCESSING
--------------------------------------------------------------------------------------------------------------
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_DOCTRINE = 30
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_TEMPLATE = 30
NDefines.NAI.DAYS_BETWEEN_CHECK_BEST_EQUIPMENT = 30
NDefines.NAI.AI_UPDATE_ROLES_FREQUENCY_HOURS = 112
NDefines.NAI.UPDATE_SUPPLY_BOTTLENECKS_FREQUENCY_HOURS = 504
NDefines.NAI.UPDATE_SUPPLY_MOTORIZATION_FREQUENCY_HOURS = 168
NDefines.NAI.HOURS_BETWEEN_ENCIRCLEMENT_DISCOVERY = 168
NDefines.NAI.MAX_EXTRA_WARGOAL_GENERATION = 1
NDefines.NAI.AIFC_UPDATE_FREQUENCY_DAYS = 15
NDefines.NAI.AIFC_UNIT_NUDGE_FREQUENCY_DAYS = 30
NDefines.NAI.PRODUCTION_EQUIPMENT_SURPLUS_FACTOR = 0.12
NDefines.NAI.MAX_UNITS_FACTOR_AREA_ORDER = 0.4
NDefines.NAI.DESIRED_UNITS_FACTOR_AREA_ORDER = 0.5
NDefines.NAI.FRONT_UNITS_CAP_FACTOR = 12.0
NDefines.NAI.DIVISION_DESIGN_MAX_FAILED_DAYS = 120
NDefines.NAI.EQUIPMENT_DESIGN_MAX_FAILED_DAYS = 120
NDefines.NAI.UPGRADE_PERCENTAGE_OF_FORCES = 0.02
NDefines.NAI.REFIT_SHIP_RELUCTANCE = 60
NDefines.NAI.REFIT_SHIP_PERCENTAGE_OF_FORCES = 0.08
NDefines.NAI.INVASION_COASTAL_PROVS_PER_ORDER = 20
NDefines.NAI.REGION_THREAT_PER_SUNK_CONVOY = 20
NDefines.NAI.REGION_THREAT_LEVEL_TO_AVOID_REGION = 400
NDefines.NAI.REGION_THREAT_LEVEL_TO_BLOCK_REGION = 4000
NDefines.NAI.REGION_CONVOY_DANGER_DAILY_DECAY = 2
NDefines.NAI.PRODUCTION_LINE_SWITCH_SURPLUS_NEEDED_MODIFIER = 0.35
NDefines.NAI.MAX_MICRO_ATTACKS_PER_ORDER = 2
NDefines.NAI.DAYS_BETWEEN_AIR_PRIORITIES_UPDATE = 6
NDefines.NAI.AI_PREFERRED_TACTIC_WEEKLY_CHANGE_CHANCE = 0.03
NDefines.NAI.COMMAND_POWER_BEFORE_SPEND_ON_TRAITS = 40.0
NDefines.NCountry.INTERPOLATED_FRONT_STEPS_SHORT = 1	-- added from better optimization mod by amine alkaline
NDefines.NCountry.EVENT_PROCESS_OFFSET = 30 -- added from better optimization mod by amine alkaline

-------------------------------------------------------------
-- VISUAL DISPLAY
-------------------------------------------------------------
NDefines.NGame.MESSAGE_TIMEOUT_DAYS = 30 -- added from better optimization mod by amine alkaline


-- Graphics, GPU
NDefines_Graphics.NGraphics.RENDER_PASS_COUNT = 1
NDefines_Graphics.NGraphics.DEFERRED_RENDERING_ENABLED = 0
NDefines_Graphics.NGraphics.FORWARD_RENDERING_ENABLED = 1
NDefines_Graphics.NGraphics.GEOMETRY_INSTANCING_ENABLED = 1
NDefines_Graphics.NGraphics.GEOMETRY_BATCHING_ENABLED = 1
NDefines_Graphics.NGraphics.GEOMETRY_LOD_BIAS = 2.0
NDefines_Graphics.NGraphics.FRAMEBUFFER_RESOLUTION_SCALE = 1.0
NDefines_Graphics.NGraphics.GPU_SKINNING_ENABLED = 1
NDefines_Graphics.NGraphics.GPU_TESELLATION_ENABLED = 1
NDefines_Graphics.NGraphics.VRAM_BUDGET_MB = 1024 -- hopefully this doesn't cause crashes on very low end hardware
NDefines_Graphics.NGraphics.VRAM_TEXTURE_BUDGET_MB = 512
NDefines_Graphics.NGraphics.VRAM_MODEL_BUDGET_MB = 256
NDefines_Graphics.NGraphics.MODEL_STREAMING_ENABLED = 1
NDefines_Graphics.NGraphics.MODEL_STREAMING_BUDGET_MB = 256
NDefines_Graphics.NGraphics.AMBIENT_OCCLUSION_QUALITY = 3
NDefines_Graphics.NGraphics.GLOBAL_ILLUMINATION_ENABLED = 1

-- More intervals, delays
NDefines.NCountry.CONSTRUCTION_QUEUE_CALC_INTERVAL = 24
NDefines.NCountry.FUEL_PRODUCTION_CALC_INTERVAL = 24
NDefines.NCountry.FUEL_CONSUMPTION_CALC_INTERVAL = 12
NDefines.NCountry.FUEL_STOCKPILE_CALC_INTERVAL = 24
NDefines.NCountry.FUEL_IMPORT_CALC_INTERVAL = 72
NDefines.NAI.MANPOWER_ALLOCATION_EVAL_INTERVAL = 72
NDefines.NAI.MANPOWER_PRIORITY_EVAL_INTERVAL = 72
NDefines.NAI.CONSCRIPTION_LAW_EVAL_INTERVAL = 336
NDefines.NTrade.CONVOY_ASSIGNMENT_CALC_INTERVAL = 48
NDefines.NAI.STOCKPILE_PRIORITY_EVAL_INTERVAL = 72
NDefines.NAI.STOCKPILE_DISTRIBUTION_EVAL_INTERVAL = 72
NDefines.NAI.STOCKPILE_THRESHOLD_EVAL_INTERVAL = 168
NDefines.NTrade.MONTHLY_TRADE_CONVOY_CHECK_TICK_DELAY = 10
NDefines.NTrade.BASE_TRADE_FACTOR = 50
NDefines.NTrade.TRADE_ROUTE_CALC_INTERVAL = 48
NDefines.NTrade.TRADE_OFFER_CALC_INTERVAL = 72
NDefines.NTrade.TRADE_CONVOY_CALC_INTERVAL = 24
NDefines.NTrade.TRADE_RESOURCE_CALC_INTERVAL = 24
NDefines.NTrade.TRADE_PARTNER_CALC_INTERVAL = 72
NDefines.NTrade.TRADE_LOG_MAX_ENTRIES = 20
NDefines.NTrade.CONVOY_LOG_MAX_ENTRIES = 20
NDefines.NAI.SHIP_DESIGN_EVALUATE_DAYS = 30
NDefines.NAI.SHIP_DESIGN_MAX_FAILED_DAYS = 60
NDefines.NAI.NAVAL_SHIP_MIN_FLEET_SIZE = 4
NDefines.NNavy.NAVAL_MINES_SWEEPING_SPEED_MULT = 2.0
NDefines.NNavy.NAVAL_MINES_PLANTING_SPEED_MULT = 0.5
NDefines.NNavy.NAVAL_MINES_IN_REGION_MAX = 200
NDefines.NNavy.MINES_SWEEPING_DAILY_CHANCE = 0.1
NDefines.NNavy.MINES_PLANTING_DAILY_CHANCE = 0.1
NDefines.NAI.SUPPRESSION_DIVISION_EVAL_INTERVAL = 168
NDefines.NAI.SUPPRESSION_DEPLOYMENT_EVAL_INTERVAL = 72
NDefines.NAI.OCCUPATION_STRATEGY_EVAL_INTERVAL = 128
NDefines.NAI.OCCUPATION_PRIORITY_EVAL_INTERVAL = 64
NDefines.NAI.PARTISAN_THREAT_EVAL_INTERVAL = 72
NDefines.NAI.PARTISAN_RESPONSE_EVAL_INTERVAL = 72
NDefines.NAI.ANTI_PARTISAN_PRIORITY_EVAL_INTERVAL = 72
NDefines.NResistance.RESISTANCE_TARGET_SELECTION_INTERVAL = 168
NDefines.NResistance.SABOTAGE_TARGET_SELECTION_INTERVAL = 168 -- CHANGE THIS IF NEEDED
NDefines.NDiplomacy.BASE_PEACE_CONFERENCE_CALC_INTERVAL = 24 -- large peace transfer
NDefines.NAI.PEACE_CONFERENCE_EVAL_INTERVAL = 24
NDefines.NAI.PEACE_DEMAND_EVAL_INTERVAL = 24
NDefines.NAI.ANNEX_EVAL_INTERVAL = 72
NDefines.NAI.RELEASE_NATION_EVAL_INTERVAL = 168
NDefines.NAI.CAPITULATION_EVAL_INTERVAL = 24
NDefines.NAI.OCCUPATION_MANAGEMENT_EVAL_INTERVAL = 168
NDefines.NAI.OCCUPATION_RESOURCE_EVAL_INTERVAL = 168
NDefines.NAI.OCCUPATION_FACTORY_EVAL_INTERVAL = 168
NDefines.NAI.OCCUPATION_MANPOWER_EVAL_INTERVAL = 168
NDefines.NCountry.RESOURCE_CALC_INTERVAL = 36
NDefines.NCountry.FACTORY_CALC_INTERVAL = 36
NDefines.NCountry.MANPOWER_CALC_INTERVAL = 48
NDefines.NCountry.CONSTRUCTION_CALC_INTERVAL = 36
NDefines.NAI.COUNTRY_STRENGTH_EVAL_INTERVAL = 36
NDefines.NAI.COUNTRY_RESOURCE_EVAL_INTERVAL = 36
NDefines.NAI.COUNTRY_FACTORY_EVAL_INTERVAL = 36
NDefines.NAI.PEACE_SCORE_EVAL_INTERVAL = 12 -- large state transfer, etc, peace.1

