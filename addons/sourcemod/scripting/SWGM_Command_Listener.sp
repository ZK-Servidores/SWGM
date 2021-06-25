#include <swgm>
#include <multicolors>

#pragma semicolon 1
#pragma newdecls required

public Plugin myinfo =
{
	name = "[SWGM] Command Listener",
	author = "Someone, crashzk",
	description = "",
	version = "1.2fix",
	url = "https://github.com/ZK-Servidores/Plugins-SourceMod"
};

public void OnAllPluginsLoaded()
{
	LoadTranslations("swgm_cl.phrases");
	
	LoadConfig();
	
	RegAdminCmd("sm_swgm_cl_reload", CMD_RELOAD, ADMFLAG_BAN);
}

public Action CMD_RELOAD(int Client, int iArgs)
{
	LoadConfig();
}

public Action Check(int Client, const char[] sCommand, int iArgc)
{
	if(Client != 0 && SWGM_IsPlayerValidated(Client) && !SWGM_InGroup(Client))
	{
		CPrintToChat(Client, "%t", "JoinSteam");
		return Plugin_Stop;
	}
	return Plugin_Continue;
}

void LoadConfig()
{
	KeyValues Kv = new KeyValues("Command_Listener");
	
	char sBuffer[256];
	BuildPath(Path_SM, sBuffer, sizeof(sBuffer), "configs/swgm/command_listener.ini");
	if (!FileToKeyValues(Kv, sBuffer)) SetFailState("Configuration file not found %s", sBuffer);
	
	if (Kv.GotoFirstSubKey())
	{
		do
		{
			if (Kv.GetSectionName(sBuffer, sizeof(sBuffer)))
			{
				AddCommandListener(Check, sBuffer); 
			}
		} 
		while (Kv.GotoNextKey());
	}
	delete Kv;
}
