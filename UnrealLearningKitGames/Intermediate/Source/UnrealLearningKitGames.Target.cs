using UnrealBuildTool;

public class UnrealLearningKitGamesTarget : TargetRules
{
	public UnrealLearningKitGamesTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Game;
		ExtraModuleNames.Add("UnrealLearningKitGames");
	}
}
