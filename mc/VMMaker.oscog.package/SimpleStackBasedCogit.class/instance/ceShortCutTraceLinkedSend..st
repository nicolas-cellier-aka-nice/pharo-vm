simulation only
ceShortCutTraceLinkedSend: aProcessorSimulationTrap
	self shortcutTrampoline: aProcessorSimulationTrap
		to: [coInterpreter ceTraceLinkedSend: (processor registerAt: (backEnd concreteRegister: ReceiverResultReg))]