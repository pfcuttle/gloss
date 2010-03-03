
module Graphics.Gloss.Interface.Simulate.State
	( State (..)
	, stateInit )
where

-- | Simulation state
data State	
 = 	State
	-- | The iteration number we're up to.
 	{ stateIteration	:: Integer

	-- | Whether the animation is free-running (or single step)
	, stateRun		:: Bool

	-- | Signals to callbackIdle to take a single step of the automation.
	, stateStep		:: Bool

	-- | Signals to callbackIdle to roll-back to the initial world.
	, stateReset		:: Bool
		
	-- | How many simulation setps to take for each second of real time
	, stateResolution	:: Int 
	
	-- | How many seconds worth of simulation we've done so far
	, stateSimTime		:: Float
	
	-- | Record how many steps we've been taking per frame
	, stateStepsPerFrame 	:: Int  }
	

-- | Initial control state
stateInit resolution
 	= State
 	{ stateIteration		= 0
	, stateRun			= True
	, stateStep			= False
	, stateReset			= False
	, stateResolution		= resolution 
	, stateSimTime			= 0 
	, stateStepsPerFrame		= 0 }
	
	